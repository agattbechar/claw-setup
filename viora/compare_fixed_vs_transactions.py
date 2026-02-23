#!/usr/bin/env python3
"""
Compare fixed ccQteStock (ref_produit) vs transaction-based st_stock
Find discrepancies between manual count and system transactions
"""

import re
import csv
from pathlib import Path

def parse_sql_insert(filepath, tablename):
    """Extract INSERT statements from SQL dump file"""
    data = []
    
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    pattern = rf"INSERT INTO `{tablename}` VALUES (.+?);"
    matches = re.findall(pattern, content, re.DOTALL)
    
    for match in matches:
        rows_str = match.strip()
        rows = re.findall(r'\(([^)]+)\)', rows_str)
        
        for row in rows:
            values = []
            for val in row.split(','):
                val = val.strip()
                if val == 'NULL':
                    values.append(None)
                elif val.startswith("'") and val.endswith("'"):
                    values.append(val[1:-1])
                else:
                    try:
                        values.append(int(val))
                    except ValueError:
                        try:
                            values.append(float(val))
                        except ValueError:
                            values.append(val)
            data.append(values)
    
    return data

def reconcile_ccQteStock_vs_st_stock():
    base_path = Path("/home/bechar/.openclaw/workspace/viora/viora/viora1602")
    
    # Parse ref_produit table
    print("Loading ref_produit (ccQteStock - your fixed values)...")
    produit_data = parse_sql_insert(base_path / "gti_po_db_ref_produit.sql", "ref_produit")
    
    # Parse st_stock table
    print("Loading st_stock (qtePrd - transaction based)...")
    stock_data = parse_sql_insert(base_path / "gti_po_db_st_stock.sql", "st_stock")
    
    # Create stock lookup by product ID
    # st_stock: idStockDepot, fkIdDepot, fkIdPrd, qtePrd, qteDetails, stckPartiel
    stock_by_product = {}
    for row in stock_data:
        if len(row) > 3:
            fk_id_prd = row[2]
            qte_val = row[3]
            try:
                qte = int(float(qte_val)) if qte_val is not None else 0
            except (ValueError, TypeError):
                qte = 0
            stock_by_product[fk_id_prd] = qte
    
    # Compare ccQteStock vs st_stock for each product
    # ref_produit: idPrd, codePrd, libPrd, ..., ccQteStock (index 6), ...
    discrepancies = []
    total = 0
    match_count = 0
    mismatch_count = 0
    
    for row in produit_data:
        if len(row) > 6:
            total += 1
            id_prd = row[0]
            code = row[1] if len(row) > 1 else ''
            name = row[2] if len(row) > 2 else ''
            
            # ccQteStock (your manually fixed value)
            cc_val = row[6]
            try:
                cc_stock = int(float(cc_val)) if cc_val is not None else 0
            except (ValueError, TypeError):
                cc_stock = 0
            
            # st_stock (transaction-based)
            st_stock = stock_by_product.get(id_prd, 0)
            
            diff = cc_stock - st_stock
            
            status = 'MATCH' if diff == 0 else 'MISMATCH'
            
            if status == 'MISMATCH':
                mismatch_count += 1
                discrepancies.append({
                    'id': id_prd,
                    'code': code,
                    'name': name[:50],
                    'ccQteStock_fixed': cc_stock,
                    'st_stock_actual': st_stock,
                    'difference': diff,
                    'issue': 'TRANSACTION_MISMATCH'
                })
            else:
                match_count += 1
    
    # Write report
    report_path = base_path / "stock_discrepancy_report.csv"
    
    with open(report_path, 'w', newline='', encoding='utf-8') as f:
        fieldnames = ['id', 'code', 'name', 'ccQteStock_fixed', 'st_stock_actual', 'difference', 'issue']
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(discrepancies)
    
    # Print summary
    print(f"\n{'='*70}")
    print("STOCK RECONCILIATION: ccQteStock (fixed) vs st_stock (transactions)")
    print(f"{'='*70}")
    print(f"Total products: {total}")
    print(f"MATCH (fixed = transactions): {match_count}")
    print(f"MISMATCH (fixed ≠ transactions): {mismatch_count}")
    
    if mismatch_count > 0:
        print(f"\nDiscrepancy rate: {mismatch_count/total*100:.1f}%")
        print(f"\nReport saved: {report_path}")
        
        print(f"\n{'='*70}")
        print("TOP 10 DISCREPANCIES:")
        print(f"{'='*70}")
        top_disc = sorted(discrepancies, key=lambda x: abs(x['difference']), reverse=True)[:10]
        for d in top_disc:
            print(f"ID {d['id']}: {d['name'][:40]}")
            print(f"  Your fixed count: {d['ccQteStock_fixed']}")
            print(f"  Transaction stock: {d['st_stock_actual']}")
            print(f"  Difference: {d['difference']:+d}")
            if d['st_stock_actual'] < 0:
                print(f"  ⚠️  NEGATIVE STOCK - CRITICAL")
            print()
        
        print(f"\nInterpretation:")
        print(f"  - If 'Your fixed count' > 'Transaction stock': You have more than system shows")
        print(f"    (Possible: sales not recorded, returns not processed)")
        print(f"  - If 'Your fixed count' < 'Transaction stock': System shows more than you have")
        print(f"    (Possible: theft, damage, manual corrections not in system)")
    else:
        print("\n✓ PERFECT MATCH! Your fixed stock matches transaction records.")
    
    return report_path

if __name__ == "__main__":
    reconcile_ccQteStock_vs_st_stock()
