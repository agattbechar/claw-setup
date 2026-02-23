#!/usr/bin/env python3
"""
Viora Stock Reconciliation Script
Joins ref_produit (product info) with st_stock (actual stock)
Outputs CSV showing discrepancies between cached and actual stock
"""

import re
import csv
import sys
from pathlib import Path

def parse_sql_insert(filepath, tablename):
    """Extract INSERT statements from SQL dump file"""
    data = []
    
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Find INSERT statements for this table
    pattern = rf"INSERT INTO `{tablename}` VALUES (.+?);"
    matches = re.findall(pattern, content, re.DOTALL)
    
    for match in matches:
        # Parse VALUES rows
        # Handle format: (1,1,1,10,NULL,NULL),(2,1,2,1,NULL,NULL),...
        rows_str = match.strip()
        # Split by '),(' to get individual rows
        rows = re.findall(r'\(([^)]+)\)', rows_str)
        
        for row in rows:
            # Parse individual values
            values = []
            for val in row.split(','):
                val = val.strip()
                if val == 'NULL':
                    values.append(None)
                elif val.startswith("'") and val.endswith("'"):
                    values.append(val[1:-1])  # Remove quotes
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

def reconcile_stock():
    base_path = Path("/home/bechar/.openclaw/workspace/viora/viora/viora1602")
    
    # Parse ref_produit table
    print("Loading product data from ref_produit...")
    produit_data = parse_sql_insert(base_path / "gti_po_db_ref_produit.sql", "ref_produit")
    
    # Parse st_stock table
    print("Loading stock data from st_stock...")
    stock_data = parse_sql_insert(base_path / "gti_po_db_st_stock.sql", "st_stock")
    
    # Create product lookup dict by idPrd
    # ref_produit columns: idPrd, codePrd, libPrd, codePrdPack, libPrdPack, fkIdPrdF, ccQteStock, ...
    products = {}
    for row in produit_data:
        if len(row) > 6:
            id_prd = row[0]
            # Ensure cached_stock is numeric
            cached_val = row[6] if len(row) > 6 else 0
            try:
                cached_stock = float(cached_val) if cached_val is not None else 0
            except (ValueError, TypeError):
                cached_stock = 0
            
            products[id_prd] = {
                'id': id_prd,
                'code': row[1] if len(row) > 1 else '',
                'name': row[2] if len(row) > 2 else '',
                'cached_stock': cached_stock,
            }
    
    # Create stock lookup by fkIdPrd
    # st_stock columns: idStockDepot, fkIdDepot, fkIdPrd, qtePrd, qteDetails, stckPartiel
    stock_by_product = {}
    for row in stock_data:
        if len(row) > 3:
            fk_id_prd = row[2]
            qte_val = row[3] if row[3] is not None else 0
            try:
                qte = float(qte_val) if qte_val is not None else 0
            except (ValueError, TypeError):
                qte = 0
            stock_by_product[fk_id_prd] = qte
    
    # Reconcile and create report
    discrepancies = []
    total_products = len(products)
    
    for id_prd, prod in products.items():
        cached = prod['cached_stock'] if prod['cached_stock'] is not None else 0
        actual = stock_by_product.get(id_prd, 0)
        
        discrepancy = {
            'product_id': id_prd,
            'code': prod['code'],
            'name': prod['name'][:50] if prod['name'] else '',  # Truncate long names
            'cached_stock': cached,
            'actual_stock': actual,
            'difference': actual - cached,
            'status': 'OK' if actual == cached else 'MISMATCH',
            'issue': ''
        }
        
        # Flag issues
        if actual < 0:
            discrepancy['issue'] = 'NEGATIVE_STOCK'
        elif actual > 50:  # Suspiciously high
            discrepancy['issue'] = 'HIGH_STOCK_VERIFY'
        elif cached != actual:
            discrepancy['issue'] = 'CACHE_MISMATCH'
        
        discrepancies.append(discrepancy)
    
    # Write CSV report
    output_path = base_path / "stock_reconciliation_report.csv"
    
    fieldnames = ['product_id', 'code', 'name', 'cached_stock', 'actual_stock', 'difference', 'status', 'issue']
    
    with open(output_path, 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(discrepancies)
    
    # Print summary
    mismatches = [d for d in discrepancies if d['status'] == 'MISMATCH']
    negative = [d for d in discrepancies if d['actual_stock'] < 0]
    high_stock = [d for d in discrepancies if d['actual_stock'] > 50]
    
    print(f"\n{'='*60}")
    print("STOCK RECONCILIATION SUMMARY")
    print(f"{'='*60}")
    print(f"Total products: {total_products}")
    print(f"Stock mismatches: {len(mismatches)}")
    print(f"Negative stock: {len(negative)}")
    print(f"Suspiciously high (>50): {len(high_stock)}")
    print(f"\nReport saved to: {output_path}")
    
    if mismatches:
        print(f"\n{'='*60}")
        print("TOP 10 MISMATCHES (by absolute difference):")
        print(f"{'='*60}")
        top_mismatches = sorted(mismatches, key=lambda x: abs(x['difference']), reverse=True)[:10]
        for m in top_mismatches:
            print(f"ID {m['product_id']}: {m['name'][:40]}")
            print(f"  Cached: {m['cached_stock']:.0f} | Actual: {m['actual_stock']:.0f} | Diff: {m['difference']:+.0f}")
    
    if negative:
        print(f"\n{'='*60}")
        print("NEGATIVE STOCK ITEMS (CRITICAL):")
        print(f"{'='*60}")
        for m in negative:
            print(f"ID {m['product_id']}: {m['name'][:40]} = {m['actual_stock']}")
    
    return output_path

if __name__ == "__main__":
    try:
        report_path = reconcile_stock()
        print(f"\n✓ Reconciliation complete!")
        sys.exit(0)
    except Exception as e:
        print(f"Error: {e}")
        import traceback
        traceback.print_exc()
        sys.exit(1)
