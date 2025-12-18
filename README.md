# RCG_Data_Modelling_Assests

This repository contains data modeling assets including HTML documentation files for various database tables and a tool to analyze package/pkg-related tables.

## Contents
- HTML documentation files for database tables (itrvl_*.HTML)
- PDF documentation files for various modules
- Package/Pkg table analysis tool

## Package/Pkg Table Analysis Tool

A Python tool that scans all HTML files and identifies tables containing "pkg" or "package" in their names, then generates SQL queries.

**Quick Start:**
```bash
python3 scan_html_tables.py
```

**Results:**
- Found **31 package/pkg tables** across **7 HTML files**
- Generated SQL queries (SELECT, INSERT, CREATE TABLE)
- Created detailed reports in text, SQL, and JSON formats

**For detailed documentation, see:** [PKG_ANALYSIS_README.md](PKG_ANALYSIS_README.md)

**Output Files:**
- `pkg_tables_report.txt` - Detailed text report
- `pkg_queries.sql` - Ready-to-use SQL queries
- `pkg_tables.json` - Machine-readable JSON format 
