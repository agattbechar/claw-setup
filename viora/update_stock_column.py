#!/usr/bin/env python3
"""
Create updated products CSV with actual stock from st_stock table
Matches format of products_cleaned.csv but with real stock data
"""

import re
import csv
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

def create_updated_products_csv():
    base_path = Path("/home/bechar/.openclaw/workspace/viora")
    sql_path = base_path / "viora/viora1602"
    
    # Parse ref_produit table
    print("Loading product data...")
    produit_data = parse_sql_insert(sql_path / "gti_po_db_ref_produit.sql", "ref_produit")
    
    # Parse st_stock table
    print("Loading actual stock data...")
    stock_data = parse_sql_insert(sql_path / "gti_po_db_st_stock.sql", "st_stock")
    
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
    
    # Create product lookup by code (SKU)
    # ref_produit: idPrd, codePrd, libPrd, ..., ccQteStock, ..., puVente, ..., prixAchat, ...
    # Columns we need: codePrd (SKU), libPrd (Nom), brand, category, prixAchat, puVente
    products_by_code = {}
    for row in produit_data:
        if len(row) > 10:
            id_prd = row[0]
            code = row[1] if len(row) > 1 else ''
            name = row[2] if len(row) > 2 else ''
            
            # Extract price columns (adjust indices based on actual structure)
            # From the SQL we saw: puVente is around index 10, prixAchat around index 47
            prix_vente = 0
            prix_achat = 0
            
            if len(row) > 10:
                try:
                    prix_vente = float(row[10]) if row[10] is not None else 0
                except:
                    prix_vente = 0
            
            # Find prixAchat - it's later in the row
            if len(row) > 47:
                try:
                    prix_achat = float(row[47]) if row[47] is not None else 0
                except:
                    prix_achat = 0
            
            # Get actual stock from st_stock
            actual_stock = stock_by_product.get(id_prd, 0)
            
            products_by_code[code] = {
                'id': id_prd,
                'code': code,
                'name': name,
                'prix_vente': prix_vente,
                'prix_achat': prix_achat,
                'actual_stock': actual_stock,
            }
    
    # Read existing products_cleaned.csv to get structure
    print("Reading existing products CSV...")
    input_csv = base_path / "products_cleaned.csv"
    
    output_rows = []
    
    with open(input_csv, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        
        for row in reader:
            sku = row.get('SKU', '')
            
            if sku in products_by_code:
                prod = products_by_code[sku]
                
                # Create new row with actual stock
                new_row = {
                    'SKU': sku,
                    'Nom': row.get('Nom', prod['name']),
                    'Marque': row.get('Marque', ''),
                    'Categorie': row.get('Categorie', ''),
                    'Prix Achat': prod['prix_achat'] if prod['prix_achat'] > 0 else row.get('Prix Achat', ''),
                    'Prix Vente': prod['prix_vente'] if prod['prix_vente'] > 0 else row.get('Prix Vente', ''),
                    'Stock': prod['actual_stock'],  # ACTUAL STOCK from st_stock
                    'Description': row.get('Description', ''),
                }
                output_rows.append(new_row)
            else:
                # Keep original if not found in database
                output_rows.append(row)
    
    # Write new CSV
    output_path = base_path / "products_with_actual_stock.csv"
    
    fieldnames = ['SKU', 'Nom', 'Marque', 'Categorie', 'Prix Achat', 'Prix Vente', 'Stock', 'Description']
    
    with open(output_path, 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(output_rows)
    
    print(f"\n✓ Created: {output_path}")
    print(f"  Products: {len(output_rows)}")
    print(f"  Stock column now shows ACTUAL stock from st_stock table")
    
    # Show sample
    print(f"\nSample entries:")
    for row in output_rows[:5]:
        print(f"  {row['SKU']}: {row['Nom'][:40]}... Stock: {row['Stock']}")
    
    return output_path

if __name__ == "__main__":
    create_updated_products_csv()
