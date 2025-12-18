#!/usr/bin/env python3
"""
HTML Table Scanner for Package/Pkg Analysis
This script scans all HTML files in the repository and identifies tables
containing 'pkg' or 'package' in their names, then frames SQL queries.
"""

import os
import re
from html.parser import HTMLParser
from typing import List, Dict, Any
import json


class TableHTMLParser(HTMLParser):
    """Parser to extract table information from HTML files"""
    
    def __init__(self):
        super().__init__()
        self.tables = []
        self.current_table = None
        self.current_tag = None
        self.current_attrs = None
        self.in_table = False
        self.row_type = None  # 'header' or 'data'
        self.current_column = None
        
    def handle_starttag(self, tag, attrs):
        attrs_dict = dict(attrs)
        
        if tag == 'table':
            self.in_table = True
            self.current_table = {
                'name': None,
                'module': None,
                'description': None,
                'columns': []
            }
        elif tag == 'tr' and self.in_table:
            self.current_tag = 'tr'
        elif tag == 'th' and self.in_table:
            self.current_tag = 'th'
            self.current_attrs = attrs_dict
        elif tag == 'td' and self.in_table:
            self.current_tag = 'td'
            self.current_attrs = attrs_dict
            
    def handle_data(self, data):
        data = data.strip()
        if not data or not self.in_table:
            return
            
        if self.current_tag == 'th' and data == 'Table Name':
            self.row_type = 'table_name'
        elif self.current_tag == 'td' and self.row_type == 'table_name':
            self.current_table['name'] = data
            self.row_type = None
        elif self.current_tag == 'th' and data == 'Module Name':
            self.row_type = 'module_name'
        elif self.current_tag == 'td' and self.row_type == 'module_name':
            self.current_table['module'] = data
            self.row_type = None
        elif self.current_tag == 'th' and data == 'Description':
            self.row_type = 'description'
        elif self.current_tag == 'td' and self.row_type == 'description':
            self.current_table['description'] = data
            self.row_type = None
        elif self.current_tag == 'th' and data == 'Column Name':
            self.row_type = 'column_header'
        elif self.current_tag == 'td' and self.row_type == 'column_data':
            # We're in a column data row
            if self.current_column is None:
                self.current_column = {'name': data, 'data_type': None, 'nullable': None, 'comment': None}
            elif self.current_column['data_type'] is None:
                self.current_column['data_type'] = data
            elif self.current_column['nullable'] is None:
                self.current_column['nullable'] = data
            elif self.current_column['comment'] is None:
                self.current_column['comment'] = data
                self.current_table['columns'].append(self.current_column)
                self.current_column = None
                
    def handle_endtag(self, tag):
        if tag == 'tr' and self.row_type == 'column_header':
            self.row_type = 'column_data'
        elif tag == 'tr' and self.current_column:
            # Sometimes the row ends before all data is collected
            if self.current_column['name']:
                self.current_table['columns'].append(self.current_column)
            self.current_column = None
        elif tag == 'table' and self.in_table:
            if self.current_table and self.current_table['name']:
                self.tables.append(self.current_table)
            self.in_table = False
            self.current_table = None
            self.row_type = None
            
        if tag in ['tr', 'th', 'td']:
            self.current_tag = None
            self.current_attrs = None


def scan_html_file(filepath: str) -> List[Dict[str, Any]]:
    """Scan a single HTML file and extract all tables"""
    try:
        with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
        
        parser = TableHTMLParser()
        parser.feed(content)
        return parser.tables
    except Exception as e:
        print(f"Error scanning {filepath}: {e}")
        return []


def filter_pkg_tables(tables: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
    """Filter tables that contain 'pkg' or 'package' in their names"""
    pkg_tables = []
    for table in tables:
        table_name = table.get('name', '').lower()
        if 'pkg' in table_name or 'package' in table_name:
            pkg_tables.append(table)
    return pkg_tables


def generate_select_query(table: Dict[str, Any]) -> str:
    """Generate a SELECT query for a table"""
    table_name = table.get('name', 'UNKNOWN_TABLE')
    columns = table.get('columns', [])
    
    if not columns:
        return f"-- No columns found for table {table_name}\nSELECT * FROM {table_name};"
    
    # Get column names
    column_names = [col['name'] for col in columns if col.get('name')]
    
    if not column_names:
        return f"SELECT * FROM {table_name};"
    
    # Create formatted column list
    column_list = ',\n    '.join(column_names)
    
    query = f"""-- Table: {table_name}
-- Description: {table.get('description', 'N/A')}
-- Module: {table.get('module', 'N/A')}
SELECT
    {column_list}
FROM {table_name};
"""
    return query


def generate_insert_query(table: Dict[str, Any]) -> str:
    """Generate an INSERT template query for a table"""
    table_name = table.get('name', 'UNKNOWN_TABLE')
    columns = table.get('columns', [])
    
    if not columns:
        return f"-- No columns found for table {table_name}"
    
    # Get column names
    column_names = [col['name'] for col in columns if col.get('name')]
    
    if not column_names:
        return f"-- No valid columns for INSERT into {table_name}"
    
    # Create formatted column list
    column_list = ',\n    '.join(column_names)
    
    # Create placeholder values
    placeholders = ',\n    '.join(['?' for _ in column_names])
    
    query = f"""-- INSERT template for table: {table_name}
INSERT INTO {table_name} (
    {column_list}
) VALUES (
    {placeholders}
);
"""
    return query


def generate_create_table_query(table: Dict[str, Any]) -> str:
    """Generate a CREATE TABLE query based on table structure"""
    table_name = table.get('name', 'UNKNOWN_TABLE')
    columns = table.get('columns', [])
    
    if not columns:
        return f"-- No columns found for table {table_name}"
    
    column_definitions = []
    for col in columns:
        name = col.get('name', 'UNKNOWN_COLUMN')
        data_type = col.get('data_type', 'TEXT')
        nullable = col.get('nullable', 'YES')
        
        # Format the column definition
        null_constraint = '' if nullable == 'YES' else ' NOT NULL'
        column_definitions.append(f"    {name} {data_type}{null_constraint}")
    
    columns_str = ',\n'.join(column_definitions)
    
    query = f"""-- CREATE TABLE for: {table_name}
-- Description: {table.get('description', 'N/A')}
-- Module: {table.get('module', 'N/A')}
CREATE TABLE {table_name} (
{columns_str}
);
"""
    return query


def main():
    """Main function to scan all HTML files and generate queries"""
    # Get the directory where the script is located
    script_dir = os.path.dirname(os.path.abspath(__file__))
    
    # Find all HTML files
    html_files = [f for f in os.listdir(script_dir) if f.endswith('.HTML') or f.endswith('.html')]
    
    print(f"Found {len(html_files)} HTML files to scan")
    print("=" * 80)
    
    all_pkg_tables = []
    
    # Scan each HTML file
    for html_file in sorted(html_files):
        filepath = os.path.join(script_dir, html_file)
        print(f"\nScanning: {html_file}")
        
        tables = scan_html_file(filepath)
        pkg_tables = filter_pkg_tables(tables)
        
        if pkg_tables:
            print(f"  Found {len(pkg_tables)} package/pkg tables")
            for table in pkg_tables:
                table['source_file'] = html_file
                all_pkg_tables.append(table)
        else:
            print(f"  No package/pkg tables found")
    
    print("\n" + "=" * 80)
    print(f"\nTotal package/pkg tables found: {len(all_pkg_tables)}")
    
    # Generate output report
    output_file = os.path.join(script_dir, 'pkg_tables_report.txt')
    queries_file = os.path.join(script_dir, 'pkg_queries.sql')
    json_file = os.path.join(script_dir, 'pkg_tables.json')
    
    # Write detailed report
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write("=" * 80 + "\n")
        f.write("PACKAGE/PKG TABLES ANALYSIS REPORT\n")
        f.write("=" * 80 + "\n\n")
        
        for i, table in enumerate(all_pkg_tables, 1):
            f.write(f"\n{'=' * 80}\n")
            f.write(f"Table #{i}\n")
            f.write(f"{'=' * 80}\n")
            f.write(f"Source File: {table.get('source_file', 'Unknown')}\n")
            f.write(f"Table Name: {table.get('name', 'Unknown')}\n")
            f.write(f"Module: {table.get('module', 'N/A')}\n")
            f.write(f"Description: {table.get('description', 'N/A')}\n")
            f.write(f"\nColumns ({len(table.get('columns', []))}):\n")
            f.write("-" * 80 + "\n")
            
            for col in table.get('columns', []):
                f.write(f"  - {col.get('name', 'Unknown')}\n")
                f.write(f"    Type: {col.get('data_type', 'N/A')}\n")
                f.write(f"    Nullable: {col.get('nullable', 'N/A')}\n")
                f.write(f"    Comment: {col.get('comment', 'N/A')}\n")
                f.write("\n")
    
    # Write SQL queries
    with open(queries_file, 'w', encoding='utf-8') as f:
        f.write("-- " + "=" * 76 + "\n")
        f.write("-- SQL QUERIES FOR PACKAGE/PKG TABLES\n")
        f.write("-- Generated from HTML table analysis\n")
        f.write("-- " + "=" * 76 + "\n\n")
        
        for i, table in enumerate(all_pkg_tables, 1):
            f.write(f"\n-- {'=' * 76}\n")
            f.write(f"-- Table #{i}: {table.get('name', 'Unknown')}\n")
            f.write(f"-- Source: {table.get('source_file', 'Unknown')}\n")
            f.write(f"-- {'=' * 76}\n\n")
            
            # Generate different types of queries
            f.write("-- SELECT Query:\n")
            f.write(generate_select_query(table))
            f.write("\n")
            
            f.write("-- INSERT Template:\n")
            f.write(generate_insert_query(table))
            f.write("\n")
            
            f.write("-- CREATE TABLE Statement:\n")
            f.write(generate_create_table_query(table))
            f.write("\n\n")
    
    # Write JSON output for programmatic access
    with open(json_file, 'w', encoding='utf-8') as f:
        json.dump(all_pkg_tables, f, indent=2)
    
    print(f"\nOutput files generated:")
    print(f"  - {output_file} (detailed report)")
    print(f"  - {queries_file} (SQL queries)")
    print(f"  - {json_file} (JSON format)")
    
    # Print summary
    print(f"\n{'=' * 80}")
    print("SUMMARY")
    print(f"{'=' * 80}")
    print(f"Total HTML files scanned: {len(html_files)}")
    print(f"Total package/pkg tables found: {len(all_pkg_tables)}")
    print(f"\nPackage/Pkg Tables by File:")
    
    file_counts = {}
    for table in all_pkg_tables:
        source = table.get('source_file', 'Unknown')
        file_counts[source] = file_counts.get(source, 0) + 1
    
    for source, count in sorted(file_counts.items()):
        print(f"  {source}: {count} table(s)")
        
    print(f"\n{'=' * 80}\n")


if __name__ == '__main__':
    main()
