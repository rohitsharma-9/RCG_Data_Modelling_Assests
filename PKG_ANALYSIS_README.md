# Package/Pkg Table Analysis Tool

## Overview
This tool scans all HTML files in the repository to identify tables containing "pkg" or "package" in their names and generates SQL queries for these tables.

## Features
- Scans all `.HTML` files in the repository
- Identifies tables with "pkg" or "package" in their names
- Extracts table metadata including:
  - Table name
  - Module name
  - Description
  - Column definitions (name, data type, nullable, comments)
- Generates SQL queries:
  - SELECT queries
  - INSERT templates
  - CREATE TABLE statements
- Outputs results in multiple formats:
  - Detailed text report (`pkg_tables_report.txt`)
  - SQL queries file (`pkg_queries.sql`)
  - JSON format for programmatic access (`pkg_tables.json`)

## Usage

### Running the Scanner
```bash
python3 scan_html_tables.py
```

### Output Files

#### 1. `pkg_tables_report.txt`
A comprehensive text report with detailed information about each package/pkg table found, including:
- Source HTML file
- Table name
- Module name
- Description
- Full column details with data types, nullable status, and comments

#### 2. `pkg_queries.sql`
Ready-to-use SQL queries for all identified tables:
- **SELECT queries**: Retrieve all columns from each table
- **INSERT templates**: Insert data into tables (with placeholders)
- **CREATE TABLE statements**: Recreate table structures

#### 3. `pkg_tables.json`
Machine-readable JSON format containing all extracted table metadata, suitable for:
- Integration with other tools
- Automated processing
- Data analysis

## Results Summary

### Scan Results
- **Total HTML files scanned**: 18
- **Total package/pkg tables found**: 31

### Distribution by File
| HTML File | Package/Pkg Tables |
|-----------|-------------------|
| itrvl_act.HTML | 1 |
| itrvl_agn.HTML | 5 |
| itrvl_air.HTML | 5 |
| itrvl_bkg.HTML | 13 |
| itrvl_cru.HTML | 4 |
| itrvl_fna.HTML | 1 |
| itrvl_mst.HTML | 2 |

## Example Queries

### SELECT Query Example
```sql
-- Table: ITRVL_BKG_PKG_CHRG_VW
-- Description: The charge split up for the package
-- Module: REPORT
SELECT
    CHARGE_ID,
    COMPONENT_ID,
    TENANT_ID,
    SUPER_PNR_NO,
    CHARGE_LEVEL,
    CHARGE_TYPE,
    CURRENCY,
    BASE_PRICE,
    DISCOUNT,
    GROSS_PRICE,
    NET_PRICE
FROM ITRVL_BKG_PKG_CHRG_VW;
```

### INSERT Template Example
```sql
-- INSERT template for table: ITRVL_BKG_PKG_CHRG_VW
INSERT INTO ITRVL_BKG_PKG_CHRG_VW (
    CHARGE_ID,
    COMPONENT_ID,
    TENANT_ID,
    SUPER_PNR_NO,
    CHARGE_LEVEL,
    CHARGE_TYPE,
    CURRENCY,
    BASE_PRICE,
    DISCOUNT,
    GROSS_PRICE,
    NET_PRICE
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);
```

## Tables Identified

The tool identified 31 package/pkg-related tables across the following categories:

### Activity Module (itrvl_act.HTML)
- ITRVL_ACT_INV_PKG_VW

### Agency Module (itrvl_agn.HTML)
- ITRVL_AGN_COM_PKG_CLSSFCN_VW
- ITRVL_AGN_COM_PKG_SERCODE_VW
- ITRVL_AGN_COM_PKG_TYPE_VW
- ITRVL_AGN_COM_PRD_PKGTHEME_VW
- ITRVL_AGN_COM_PRD_PKG_CODE_VW

### Air Module (itrvl_air.HTML)
- ITRVL_AIR_CAT_PKG_AVAIL_VW
- ITRVL_AIR_INVPKG_VW
- ITRVL_AIR_INV_PKG_CATEGORY_VW
- ITRVL_AIR_INV_PKG_SERIES_VW
- ITRVL_AIR_SUP_CP_PKG_INFO_VW

### Booking Module (itrvl_bkg.HTML) - 13 tables
- ITRVL_BKG_PKG_AMD_POLICY_VW
- ITRVL_BKG_PKG_BENEFIT_APPL_VW
- ITRVL_BKG_PKG_CHRG_VW
- ITRVL_BKG_PKG_DEST_VW
- ITRVL_BKG_PKG_ITEM_CHRG_VW
- ITRVL_BKG_PKG_ITEM_GEN_PAX_VW
- ITRVL_BKG_PKG_ITEM_GEN_VW
- ITRVL_BKG_PKG_ITEM_ROUTE_VW
- ITRVL_BKG_PKG_ITEM_VW
- ITRVL_BKG_PKG_MAIN_VW
- ITRVL_BKG_PKG_PAX_PROM_VW
- ITRVL_BKG_PKG_PAX_VW
- ITRVL_BKG_PKG_PROM_BENEFIT_VW

### Cruise Module (itrvl_cru.HTML)
- ITRVL_CRU_INV_PKG_GRP_CAT_VW
- ITRVL_CRU_INV_PKG_GRP_REQ_VW
- ITRVL_CRU_OPS_PKG_GRP_VW
- ITRVL_CRU_PRI_RTPLN_PKGS_VW

### Finance Module (itrvl_fna.HTML)
- ITRVL_ACC_PKG_ACCLINE_DTLS_VW

### Master Module (itrvl_mst.HTML)
- ITRVL_MST_PACKAGE_CODE_VW
- ITRVL_MST_PKGCLASSIFICATION_VW

## Script Details

### Requirements
- Python 3.x
- Standard library only (no external dependencies)

### How It Works
1. **HTML Parsing**: Uses Python's built-in `HTMLParser` to parse HTML files
2. **Table Detection**: Identifies table structures by looking for specific HTML patterns
3. **Data Extraction**: Extracts table names, columns, data types, and metadata
4. **Filtering**: Filters tables containing "pkg" or "package" in their names (case-insensitive)
5. **Query Generation**: Generates SQL queries based on extracted metadata
6. **Output**: Creates three output files with different formats

### Customization
To modify the script's behavior:
- Change the filter criteria in the `filter_pkg_tables()` function
- Add new query types in additional generator functions
- Modify output formats in the `main()` function

## Notes
- The scanner is case-insensitive for "pkg" and "package" keywords
- All columns are extracted with their complete metadata
- SQL queries use standard SQL syntax
- INSERT templates use `?` as placeholders (compatible with most SQL dialects)
- The tool handles malformed HTML gracefully

## Maintenance
To update or extend the tool:
1. Review the `scan_html_tables.py` script
2. Modify the parsing logic in the `TableHTMLParser` class
3. Add new output formats as needed
4. Test with sample HTML files before running on all files
