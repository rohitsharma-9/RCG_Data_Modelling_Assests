-- ============================================================================
-- SQL QUERIES FOR PACKAGE/PKG TABLES
-- Generated from HTML table analysis
-- ============================================================================


-- ============================================================================
-- Table #1: ITRVL_ACT_INV_PKG_VW
-- Source: itrvl_act.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_ACT_INV_PKG_VW
-- Description: Table which stores applicability criteria package codes
-- Module: REPORT
SELECT
    PACKAGE_ID,
    TENANT_ID,
    COMPANY_ID,
    INVENTORY_ID,
    PKG_CODE,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE
FROM ITRVL_ACT_INV_PKG_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_ACT_INV_PKG_VW
INSERT INTO ITRVL_ACT_INV_PKG_VW (
    PACKAGE_ID,
    TENANT_ID,
    COMPANY_ID,
    INVENTORY_ID,
    PKG_CODE,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_ACT_INV_PKG_VW
-- Description: Table which stores applicability criteria package codes
-- Module: REPORT
CREATE TABLE ITRVL_ACT_INV_PKG_VW (
    PACKAGE_ID INTEGER,
    TENANT_ID CHARACTER VARYING(20),
    COMPANY_ID CHARACTER VARYING(20),
    INVENTORY_ID INTEGER,
    PKG_CODE CHARACTER VARYING(20),
    LAST_MODIFIED_BY CHARACTER VARYING(100),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE
);



-- ============================================================================
-- Table #2: ITRVL_AGN_COM_PKG_CLSSFCN_VW
-- Source: itrvl_agn.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_AGN_COM_PKG_CLSSFCN_VW
-- Description: This table stores one to many pckg classification code under a product criteria
-- Module: REPORT
SELECT
    PKG_CLSSFCN_ID,
    PROF_PROD_ID,
    COMM_REST_ID,
    CLSSFCN_CODE,
    STATUS,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    COMPANY_ID
FROM ITRVL_AGN_COM_PKG_CLSSFCN_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_AGN_COM_PKG_CLSSFCN_VW
INSERT INTO ITRVL_AGN_COM_PKG_CLSSFCN_VW (
    PKG_CLSSFCN_ID,
    PROF_PROD_ID,
    COMM_REST_ID,
    CLSSFCN_CODE,
    STATUS,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    COMPANY_ID
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_AGN_COM_PKG_CLSSFCN_VW
-- Description: This table stores one to many pckg classification code under a product criteria
-- Module: REPORT
CREATE TABLE ITRVL_AGN_COM_PKG_CLSSFCN_VW (
    PKG_CLSSFCN_ID INTEGER,
    PROF_PROD_ID INTEGER,
    COMM_REST_ID INTEGER,
    CLSSFCN_CODE CHARACTER VARYING(8),
    STATUS SMALLINT,
    LAST_MODIFIED_BY CHARACTER VARYING(100),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE,
    COMPANY_ID CHARACTER VARYING(4)
);



-- ============================================================================
-- Table #3: ITRVL_AGN_COM_PKG_SERCODE_VW
-- Source: itrvl_agn.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_AGN_COM_PKG_SERCODE_VW
-- Description: This table stores one to many pckg series code under a product criteria
-- Module: REPORT
SELECT
    PKG_SERIES_ID,
    PROF_PROD_ID,
    COMM_REST_ID,
    PKG_SER_CODE,
    STATUS,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    COMPANY_ID
FROM ITRVL_AGN_COM_PKG_SERCODE_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_AGN_COM_PKG_SERCODE_VW
INSERT INTO ITRVL_AGN_COM_PKG_SERCODE_VW (
    PKG_SERIES_ID,
    PROF_PROD_ID,
    COMM_REST_ID,
    PKG_SER_CODE,
    STATUS,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    COMPANY_ID
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_AGN_COM_PKG_SERCODE_VW
-- Description: This table stores one to many pckg series code under a product criteria
-- Module: REPORT
CREATE TABLE ITRVL_AGN_COM_PKG_SERCODE_VW (
    PKG_SERIES_ID INTEGER,
    PROF_PROD_ID INTEGER,
    COMM_REST_ID INTEGER,
    PKG_SER_CODE CHARACTER VARYING(20),
    STATUS SMALLINT,
    LAST_MODIFIED_BY CHARACTER VARYING(100),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE,
    COMPANY_ID CHARACTER VARYING(4)
);



-- ============================================================================
-- Table #4: ITRVL_AGN_COM_PKG_TYPE_VW
-- Source: itrvl_agn.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_AGN_COM_PKG_TYPE_VW
-- Description: This table stores one to many pckg type code under a product criteria
-- Module: REPORT
SELECT
    PKG_TYPE_ID,
    PROF_PROD_ID,
    COMM_REST_ID,
    PKG_TYPE,
    STATUS,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    COMPANY_ID
FROM ITRVL_AGN_COM_PKG_TYPE_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_AGN_COM_PKG_TYPE_VW
INSERT INTO ITRVL_AGN_COM_PKG_TYPE_VW (
    PKG_TYPE_ID,
    PROF_PROD_ID,
    COMM_REST_ID,
    PKG_TYPE,
    STATUS,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    COMPANY_ID
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_AGN_COM_PKG_TYPE_VW
-- Description: This table stores one to many pckg type code under a product criteria
-- Module: REPORT
CREATE TABLE ITRVL_AGN_COM_PKG_TYPE_VW (
    PKG_TYPE_ID INTEGER,
    PROF_PROD_ID INTEGER,
    COMM_REST_ID INTEGER,
    PKG_TYPE CHARACTER VARYING(8),
    STATUS SMALLINT,
    LAST_MODIFIED_BY CHARACTER VARYING(100),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE,
    COMPANY_ID CHARACTER VARYING(4)
);



-- ============================================================================
-- Table #5: ITRVL_AGN_COM_PRD_PKGTHEME_VW
-- Source: itrvl_agn.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_AGN_COM_PRD_PKGTHEME_VW
-- Description: Table which stores the Pakage Theme Code
-- Module: REPORT
SELECT
    PKG_THEME_ID,
    COMPANY_ID,
    PROF_PROD_ID,
    COMM_REST_ID,
    PKG_THEME_CODE,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE
FROM ITRVL_AGN_COM_PRD_PKGTHEME_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_AGN_COM_PRD_PKGTHEME_VW
INSERT INTO ITRVL_AGN_COM_PRD_PKGTHEME_VW (
    PKG_THEME_ID,
    COMPANY_ID,
    PROF_PROD_ID,
    COMM_REST_ID,
    PKG_THEME_CODE,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_AGN_COM_PRD_PKGTHEME_VW
-- Description: Table which stores the Pakage Theme Code
-- Module: REPORT
CREATE TABLE ITRVL_AGN_COM_PRD_PKGTHEME_VW (
    PKG_THEME_ID INTEGER,
    COMPANY_ID CHARACTER VARYING(4),
    PROF_PROD_ID INTEGER,
    COMM_REST_ID INTEGER,
    PKG_THEME_CODE CHARACTER VARYING(20),
    LAST_MODIFIED_BY CHARACTER VARYING(100),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE
);



-- ============================================================================
-- Table #6: ITRVL_AGN_COM_PRD_PKG_CODE_VW
-- Source: itrvl_agn.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_AGN_COM_PRD_PKG_CODE_VW
-- Description: To store product package codes
-- Module: REPORT
SELECT
    PKG_CODE_ID,
    COMPANY_ID,
    PRD_SLAB_ID,
    COMM_REST_MAXCOMCAP_ID,
    PKG_CODE,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE
FROM ITRVL_AGN_COM_PRD_PKG_CODE_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_AGN_COM_PRD_PKG_CODE_VW
INSERT INTO ITRVL_AGN_COM_PRD_PKG_CODE_VW (
    PKG_CODE_ID,
    COMPANY_ID,
    PRD_SLAB_ID,
    COMM_REST_MAXCOMCAP_ID,
    PKG_CODE,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_AGN_COM_PRD_PKG_CODE_VW
-- Description: To store product package codes
-- Module: REPORT
CREATE TABLE ITRVL_AGN_COM_PRD_PKG_CODE_VW (
    PKG_CODE_ID INTEGER,
    COMPANY_ID CHARACTER VARYING(4),
    PRD_SLAB_ID INTEGER,
    COMM_REST_MAXCOMCAP_ID INTEGER,
    PKG_CODE CHARACTER VARYING(10),
    LAST_MODIFIED_BY CHARACTER VARYING(100),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE
);



-- ============================================================================
-- Table #7: ITRVL_AIR_CAT_PKG_AVAIL_VW
-- Source: itrvl_air.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_AIR_CAT_PKG_AVAIL_VW
-- Description: Air catalogue package availability table
-- Module: REPORT
SELECT
    PKG_AVAIL_ID,
    COMPANY_ID,
    AIR_CATALOGUE_ID,
    PKG_CAT,
    PKG_TYPE,
    PKG_COD,
    STATUS,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE
FROM ITRVL_AIR_CAT_PKG_AVAIL_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_AIR_CAT_PKG_AVAIL_VW
INSERT INTO ITRVL_AIR_CAT_PKG_AVAIL_VW (
    PKG_AVAIL_ID,
    COMPANY_ID,
    AIR_CATALOGUE_ID,
    PKG_CAT,
    PKG_TYPE,
    PKG_COD,
    STATUS,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE
) VALUES (
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

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_AIR_CAT_PKG_AVAIL_VW
-- Description: Air catalogue package availability table
-- Module: REPORT
CREATE TABLE ITRVL_AIR_CAT_PKG_AVAIL_VW (
    PKG_AVAIL_ID INTEGER,
    COMPANY_ID CHARACTER VARYING(4),
    AIR_CATALOGUE_ID INTEGER,
    PKG_CAT CHARACTER VARYING(16),
    PKG_TYPE CHARACTER VARYING(8),
    PKG_COD CHARACTER VARYING(20),
    STATUS SMALLINT,
    LAST_MODIFIED_BY CHARACTER VARYING(100),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE
);



-- ============================================================================
-- Table #8: ITRVL_AIR_INVPKG_VW
-- Source: itrvl_air.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_AIR_INVPKG_VW
-- Description: Air inventory package table
-- Module: REPORT
SELECT
    PKG_ID,
    COMPANY_ID,
    PKG_CODE,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    APPLICABILITY_SWITCH
FROM ITRVL_AIR_INVPKG_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_AIR_INVPKG_VW
INSERT INTO ITRVL_AIR_INVPKG_VW (
    PKG_ID,
    COMPANY_ID,
    PKG_CODE,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    APPLICABILITY_SWITCH
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_AIR_INVPKG_VW
-- Description: Air inventory package table
-- Module: REPORT
CREATE TABLE ITRVL_AIR_INVPKG_VW (
    PKG_ID BIGINT,
    COMPANY_ID CHARACTER VARYING(4),
    PKG_CODE CHARACTER VARYING(20),
    LAST_MODIFIED_BY CHARACTER VARYING(100),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE,
    APPLICABILITY_SWITCH SMALLINT
);



-- ============================================================================
-- Table #9: ITRVL_AIR_INV_PKG_CATEGORY_VW
-- Source: itrvl_air.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_AIR_INV_PKG_CATEGORY_VW
-- Description: Block Package category table, i.e, table containing package categories associated with particular block inventory
-- Module: REPORT
SELECT
    PKG_CATEGORY_ID,
    COMPANY_ID,
    PKG_CATEGORY_CODE,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    APPLICABILITY_SWITCH
FROM ITRVL_AIR_INV_PKG_CATEGORY_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_AIR_INV_PKG_CATEGORY_VW
INSERT INTO ITRVL_AIR_INV_PKG_CATEGORY_VW (
    PKG_CATEGORY_ID,
    COMPANY_ID,
    PKG_CATEGORY_CODE,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    APPLICABILITY_SWITCH
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_AIR_INV_PKG_CATEGORY_VW
-- Description: Block Package category table, i.e, table containing package categories associated with particular block inventory
-- Module: REPORT
CREATE TABLE ITRVL_AIR_INV_PKG_CATEGORY_VW (
    PKG_CATEGORY_ID BIGINT,
    COMPANY_ID CHARACTER VARYING(4),
    PKG_CATEGORY_CODE CHARACTER VARYING(20),
    LAST_MODIFIED_BY CHARACTER VARYING(100),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE,
    APPLICABILITY_SWITCH SMALLINT
);



-- ============================================================================
-- Table #10: ITRVL_AIR_INV_PKG_SERIES_VW
-- Source: itrvl_air.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_AIR_INV_PKG_SERIES_VW
-- Description: Block Package series table, i.e, table containing package series associated with particular block inventory
-- Module: REPORT
SELECT
    PKG_SERIES_ID,
    COMPANY_ID,
    PKG_SERIES_CODE,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    APPLICABILITY_SWITCH
FROM ITRVL_AIR_INV_PKG_SERIES_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_AIR_INV_PKG_SERIES_VW
INSERT INTO ITRVL_AIR_INV_PKG_SERIES_VW (
    PKG_SERIES_ID,
    COMPANY_ID,
    PKG_SERIES_CODE,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    APPLICABILITY_SWITCH
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_AIR_INV_PKG_SERIES_VW
-- Description: Block Package series table, i.e, table containing package series associated with particular block inventory
-- Module: REPORT
CREATE TABLE ITRVL_AIR_INV_PKG_SERIES_VW (
    PKG_SERIES_ID BIGINT,
    COMPANY_ID CHARACTER VARYING(4),
    PKG_SERIES_CODE CHARACTER VARYING(15),
    LAST_MODIFIED_BY CHARACTER VARYING(100),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE,
    APPLICABILITY_SWITCH SMALLINT
);



-- ============================================================================
-- Table #11: ITRVL_AIR_SUP_CP_PKG_INFO_VW
-- Source: itrvl_air.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_AIR_SUP_CP_PKG_INFO_VW
-- Description: Air cost and price package information table
-- Module: REPORT
SELECT
    PKG_SERIES_ID,
    COMPANY_ID,
    COST_PRICE_DEF_ID,
    PKG_SERIES,
    PACKAGE_CODE,
    STATUS,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE
FROM ITRVL_AIR_SUP_CP_PKG_INFO_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_AIR_SUP_CP_PKG_INFO_VW
INSERT INTO ITRVL_AIR_SUP_CP_PKG_INFO_VW (
    PKG_SERIES_ID,
    COMPANY_ID,
    COST_PRICE_DEF_ID,
    PKG_SERIES,
    PACKAGE_CODE,
    STATUS,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_AIR_SUP_CP_PKG_INFO_VW
-- Description: Air cost and price package information table
-- Module: REPORT
CREATE TABLE ITRVL_AIR_SUP_CP_PKG_INFO_VW (
    PKG_SERIES_ID INTEGER,
    COMPANY_ID CHARACTER VARYING(4),
    COST_PRICE_DEF_ID INTEGER,
    PKG_SERIES CHARACTER VARYING(20),
    PACKAGE_CODE CHARACTER VARYING(30),
    STATUS SMALLINT,
    LAST_MODIFIED_BY CHARACTER VARYING(100),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE
);



-- ============================================================================
-- Table #12: ITRVL_BKG_PKG_AMD_POLICY_VW
-- Source: itrvl_bkg.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_BKG_PKG_AMD_POLICY_VW
-- Description: Table to store package amendment policy details
-- Module: REPORT
SELECT
    AMEND_ID,
    AMOUNT,
    AMEND_TYPE,
    AMEND_POLICY_DESC,
    CURRENCY,
    FROM_DATE_TIME,
    TO_DATE_TIME,
    PAX_TYPE,
    APPL_TYPE,
    SUPER_PNR_NO,
    COMPONENT_ID,
    RULEID,
    COMPANY_ID,
    TIME_ZONE,
    CREATED_ON
FROM ITRVL_BKG_PKG_AMD_POLICY_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_BKG_PKG_AMD_POLICY_VW
INSERT INTO ITRVL_BKG_PKG_AMD_POLICY_VW (
    AMEND_ID,
    AMOUNT,
    AMEND_TYPE,
    AMEND_POLICY_DESC,
    CURRENCY,
    FROM_DATE_TIME,
    TO_DATE_TIME,
    PAX_TYPE,
    APPL_TYPE,
    SUPER_PNR_NO,
    COMPONENT_ID,
    RULEID,
    COMPANY_ID,
    TIME_ZONE,
    CREATED_ON
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
    ?,
    ?,
    ?,
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_BKG_PKG_AMD_POLICY_VW
-- Description: Table to store package amendment policy details
-- Module: REPORT
CREATE TABLE ITRVL_BKG_PKG_AMD_POLICY_VW (
    AMEND_ID BIGINT,
    AMOUNT NUMERIC (19,6),
    AMEND_TYPE CHARACTER VARYING(100),
    AMEND_POLICY_DESC CHARACTER VARYING(100),
    CURRENCY CHARACTER VARYING(5),
    FROM_DATE_TIME TIMESTAMP WITHOUT TIME ZONE,
    TO_DATE_TIME TIMESTAMP WITHOUT TIME ZONE,
    PAX_TYPE CHARACTER VARYING(1),
    APPL_TYPE CHARACTER VARYING(20),
    SUPER_PNR_NO CHARACTER VARYING(15),
    COMPONENT_ID BIGINT,
    RULEID CHARACTER VARYING(100),
    COMPANY_ID CHARACTER VARYING(4),
    TIME_ZONE CHARACTER VARYING(40),
    CREATED_ON TIMESTAMP WITHOUT TIME ZONE
);



-- ============================================================================
-- Table #13: ITRVL_BKG_PKG_BENEFIT_APPL_VW
-- Source: itrvl_bkg.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_BKG_PKG_BENEFIT_APPL_VW
-- Description: This table is to save the promotion benefit applicability details
-- Module: REPORT
SELECT
    PKG_BENEFIT_APPL_ID,
    SUPER_PNR_NO,
    APPL_TYPE,
    PKG_PROMO_BENEFIT_ID,
    PAX_ID,
    UNIT_ID,
    COMPANY_ID,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    CREATED_ON
FROM ITRVL_BKG_PKG_BENEFIT_APPL_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_BKG_PKG_BENEFIT_APPL_VW
INSERT INTO ITRVL_BKG_PKG_BENEFIT_APPL_VW (
    PKG_BENEFIT_APPL_ID,
    SUPER_PNR_NO,
    APPL_TYPE,
    PKG_PROMO_BENEFIT_ID,
    PAX_ID,
    UNIT_ID,
    COMPANY_ID,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    CREATED_ON
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
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_BKG_PKG_BENEFIT_APPL_VW
-- Description: This table is to save the promotion benefit applicability details
-- Module: REPORT
CREATE TABLE ITRVL_BKG_PKG_BENEFIT_APPL_VW (
    PKG_BENEFIT_APPL_ID BIGINT,
    SUPER_PNR_NO CHARACTER VARYING(15),
    APPL_TYPE CHARACTER VARYING(20),
    PKG_PROMO_BENEFIT_ID BIGINT,
    PAX_ID BIGINT,
    UNIT_ID CHARACTER VARYING(20),
    COMPANY_ID CHARACTER VARYING(4),
    LAST_MODIFIED_BY CHARACTER VARYING(100),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE,
    CREATED_ON TIMESTAMP WITHOUT TIME ZONE
);



-- ============================================================================
-- Table #14: ITRVL_BKG_PKG_CHRG_VW
-- Source: itrvl_bkg.HTML
-- ============================================================================

-- SELECT Query:
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
    NET_PRICE,
    COMMISSIONABLE_IND,
    AGENCY_COMMISSION,
    VENDOR_COMMISSION,
    MARK_UP,
    PAX_ID,
    CREATED_ON,
    BASE_COST,
    MANUAL_ADD_IND,
    REFUNDABLE_IND,
    BASE_OVERRIDEN_IND,
    GROSS_OVERRIDDEN_IND,
    COMM_OVERRIDDEN_IND,
    ORIGINAL_BASE_COST,
    ORIGINAL_GROSS_PRICE,
    ORIGINAL_COMMISSION_AMT,
    COMPANY_ID,
    ORIGINAL_SUP_COST,
    SUPPLIER_DISCOUNT,
    PRICE_SERVICETAX,
    COST_SERVICETAX,
    COMMISSION_SERVICETAX,
    VDR_CUR,
    COST_VDR_CUR,
    BASE_PRC_VDR_CUR,
    EXCHG_RATE_TO_PRC_CUR,
    VENDOR_COMM_PERCENTAGE,
    VENDOR_COMM_OVERRIDDEN_IND,
    ORIGINAL_VENDOR_COMM_AMT,
    ORIGINAL_VENDOR_COMM_PCT,
    CATEGORY,
    VAT_CODE,
    PRICE_SERVICETAX_PCT,
    COST_SERVICETAX_PCT,
    COMMISSION_SERVICETAX_PCT,
    TC_COMMISSION,
    SERVICETAX_LEVELCODE,
    TC_DISCOUNT,
    ADJUSTED_AMOUNT,
    STD_COMMISSION,
    BONUS_COMMISSION,
    STD_COMMISSION_PERCENT,
    BONUS_COMMISSION_PERCENT,
    ORIGINAL_STD_COMMISSION,
    ORIGINAL_BONUS_COMMISSION,
    ORIGINAL_STD_COMM_PERCENT,
    ORIGINAL_BONUS_COMM_PERCENT,
    PRICE_TAX_CLSFCN,
    COMM_TAX_CLSFCN,
    IS_TAX_INCL_COMM,
    IS_TAX_INCL_PRICE,
    IS_TAX_INCL_COST
FROM ITRVL_BKG_PKG_CHRG_VW;

-- INSERT Template:
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
    NET_PRICE,
    COMMISSIONABLE_IND,
    AGENCY_COMMISSION,
    VENDOR_COMMISSION,
    MARK_UP,
    PAX_ID,
    CREATED_ON,
    BASE_COST,
    MANUAL_ADD_IND,
    REFUNDABLE_IND,
    BASE_OVERRIDEN_IND,
    GROSS_OVERRIDDEN_IND,
    COMM_OVERRIDDEN_IND,
    ORIGINAL_BASE_COST,
    ORIGINAL_GROSS_PRICE,
    ORIGINAL_COMMISSION_AMT,
    COMPANY_ID,
    ORIGINAL_SUP_COST,
    SUPPLIER_DISCOUNT,
    PRICE_SERVICETAX,
    COST_SERVICETAX,
    COMMISSION_SERVICETAX,
    VDR_CUR,
    COST_VDR_CUR,
    BASE_PRC_VDR_CUR,
    EXCHG_RATE_TO_PRC_CUR,
    VENDOR_COMM_PERCENTAGE,
    VENDOR_COMM_OVERRIDDEN_IND,
    ORIGINAL_VENDOR_COMM_AMT,
    ORIGINAL_VENDOR_COMM_PCT,
    CATEGORY,
    VAT_CODE,
    PRICE_SERVICETAX_PCT,
    COST_SERVICETAX_PCT,
    COMMISSION_SERVICETAX_PCT,
    TC_COMMISSION,
    SERVICETAX_LEVELCODE,
    TC_DISCOUNT,
    ADJUSTED_AMOUNT,
    STD_COMMISSION,
    BONUS_COMMISSION,
    STD_COMMISSION_PERCENT,
    BONUS_COMMISSION_PERCENT,
    ORIGINAL_STD_COMMISSION,
    ORIGINAL_BONUS_COMMISSION,
    ORIGINAL_STD_COMM_PERCENT,
    ORIGINAL_BONUS_COMM_PERCENT,
    PRICE_TAX_CLSFCN,
    COMM_TAX_CLSFCN,
    IS_TAX_INCL_COMM,
    IS_TAX_INCL_PRICE,
    IS_TAX_INCL_COST
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
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_BKG_PKG_CHRG_VW
-- Description: The charge split up for the package
-- Module: REPORT
CREATE TABLE ITRVL_BKG_PKG_CHRG_VW (
    CHARGE_ID BIGINT,
    COMPONENT_ID BIGINT,
    TENANT_ID CHARACTER VARYING(4),
    SUPER_PNR_NO CHARACTER VARYING(15),
    CHARGE_LEVEL CHARACTER VARYING(20),
    CHARGE_TYPE CHARACTER VARYING(20),
    CURRENCY CHARACTER VARYING(6),
    BASE_PRICE NUMERIC (19,6),
    DISCOUNT NUMERIC (19,6),
    GROSS_PRICE NUMERIC (19,6),
    NET_PRICE NUMERIC (19,6),
    COMMISSIONABLE_IND BOOLEAN,
    AGENCY_COMMISSION NUMERIC (19,6),
    VENDOR_COMMISSION NUMERIC (19,6),
    MARK_UP NUMERIC (19,6),
    PAX_ID BIGINT,
    CREATED_ON TIMESTAMP WITHOUT TIME ZONE,
    BASE_COST NUMERIC (19,6),
    MANUAL_ADD_IND BOOLEAN,
    REFUNDABLE_IND BOOLEAN,
    BASE_OVERRIDEN_IND BOOLEAN,
    GROSS_OVERRIDDEN_IND BOOLEAN,
    COMM_OVERRIDDEN_IND BOOLEAN,
    ORIGINAL_BASE_COST NUMERIC (19,6),
    ORIGINAL_GROSS_PRICE NUMERIC (19,6),
    ORIGINAL_COMMISSION_AMT NUMERIC (19,6),
    COMPANY_ID CHARACTER VARYING(4),
    ORIGINAL_SUP_COST NUMERIC (19,6),
    SUPPLIER_DISCOUNT NUMERIC (19,6),
    PRICE_SERVICETAX NUMERIC (19,6),
    COST_SERVICETAX NUMERIC (19,6),
    COMMISSION_SERVICETAX NUMERIC (19,6),
    VDR_CUR CHARACTER VARYING(6),
    COST_VDR_CUR NUMERIC (19,6),
    BASE_PRC_VDR_CUR NUMERIC (19,6),
    EXCHG_RATE_TO_PRC_CUR REAL,
    VENDOR_COMM_PERCENTAGE DOUBLE PRECISION,
    VENDOR_COMM_OVERRIDDEN_IND BOOLEAN,
    ORIGINAL_VENDOR_COMM_AMT NUMERIC (19,6),
    ORIGINAL_VENDOR_COMM_PCT DOUBLE PRECISION,
    CATEGORY CHARACTER VARYING(20),
    VAT_CODE CHARACTER VARYING(50),
    PRICE_SERVICETAX_PCT DOUBLE PRECISION,
    COST_SERVICETAX_PCT DOUBLE PRECISION,
    COMMISSION_SERVICETAX_PCT DOUBLE PRECISION,
    TC_COMMISSION NUMERIC (19,6),
    SERVICETAX_LEVELCODE CHARACTER VARYING(10),
    TC_DISCOUNT NUMERIC (19,6),
    ADJUSTED_AMOUNT NUMERIC (19,6),
    STD_COMMISSION NUMERIC (19,6),
    BONUS_COMMISSION NUMERIC (19,6),
    STD_COMMISSION_PERCENT DOUBLE PRECISION,
    BONUS_COMMISSION_PERCENT DOUBLE PRECISION,
    ORIGINAL_STD_COMMISSION NUMERIC (19,6),
    ORIGINAL_BONUS_COMMISSION NUMERIC (19,6),
    ORIGINAL_STD_COMM_PERCENT DOUBLE PRECISION,
    ORIGINAL_BONUS_COMM_PERCENT DOUBLE PRECISION,
    PRICE_TAX_CLSFCN CHARACTER VARYING(15),
    COMM_TAX_CLSFCN CHARACTER VARYING(15),
    IS_TAX_INCL_COMM BOOLEAN,
    IS_TAX_INCL_PRICE BOOLEAN,
    IS_TAX_INCL_COST BOOLEAN
);



-- ============================================================================
-- Table #15: ITRVL_BKG_PKG_DEST_VW
-- Source: itrvl_bkg.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_BKG_PKG_DEST_VW
-- Description: The package destintion table
-- Module: REPORT
SELECT
    DESTN_ID,
    COMPONENT_ID,
    SUPER_PNR_NO,
    DEST_CODE,
    REGION,
    START_DATE,
    END_DATE,
    COMPANY_ID,
    DEST_TIMEZONE,
    CREATED_ON
FROM ITRVL_BKG_PKG_DEST_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_BKG_PKG_DEST_VW
INSERT INTO ITRVL_BKG_PKG_DEST_VW (
    DESTN_ID,
    COMPONENT_ID,
    SUPER_PNR_NO,
    DEST_CODE,
    REGION,
    START_DATE,
    END_DATE,
    COMPANY_ID,
    DEST_TIMEZONE,
    CREATED_ON
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
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_BKG_PKG_DEST_VW
-- Description: The package destintion table
-- Module: REPORT
CREATE TABLE ITRVL_BKG_PKG_DEST_VW (
    DESTN_ID BIGINT,
    COMPONENT_ID BIGINT,
    SUPER_PNR_NO CHARACTER VARYING(15),
    DEST_CODE CHARACTER VARYING(20),
    REGION CHARACTER VARYING(20),
    START_DATE TIMESTAMP WITHOUT TIME ZONE,
    END_DATE TIMESTAMP WITHOUT TIME ZONE,
    COMPANY_ID CHARACTER VARYING(4),
    DEST_TIMEZONE CHARACTER VARYING(40),
    CREATED_ON TIMESTAMP WITHOUT TIME ZONE
);



-- ============================================================================
-- Table #16: ITRVL_BKG_PKG_ITEM_CHRG_VW
-- Source: itrvl_bkg.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_BKG_PKG_ITEM_CHRG_VW
-- Description: Details of Package Item Charges
-- Module: REPORT
SELECT
    CHARGE_ID,
    ITEM_ID,
    CHARGE_LEVEL,
    CHARGE_TYPE,
    CURRENCY,
    BASE_PRICE,
    DISCOUNT,
    GROSS_PRICE,
    NET_PRICE,
    COMMISSIONABLE_IND,
    AGENCY_COMMISSION,
    VENDOR_COMMISSION,
    MARK_UP,
    PAX_ID,
    BASE_COST,
    MANUAL_ADD_IND,
    REFUNDABLE_IND,
    BASE_OVERRIDEN_IND,
    GROSS_OVERRIDEN_IND,
    COMM_OVERRIDEN_IND,
    ORIGINAL_BASE_COST,
    ORIGINAL_GROSS_PRICE,
    ORIGINAL_COMMISSION_AMT,
    ORIGINAL_SUP_COST,
    SUPPLIER_DISCOUNT,
    COMPANY_ID,
    TENANT_ID,
    SUPER_PNR_NO,
    CREATED_ON,
    VDR_CUR,
    EXCHG_RATE_TO_PRC_CUR,
    PRICE_SERVICETAX,
    COST_SERVICETAX,
    COST_VDR_CUR,
    COMMISSION_SERVICETAX,
    BASE_PRC_VDR_CUR,
    VENDOR_COMM_PERCENTAGE,
    VENDOR_COMM_OVERRIDDEN_IND,
    ORIGINAL_VENDOR_COMM_AMT,
    ORIGINAL_VENDOR_COMM_PCT,
    CATEGORY,
    VAT_CODE,
    PRICE_SERVICETAX_PCT,
    COST_SERVICETAX_PCT,
    COMMISSION_SERVICETAX_PCT,
    TC_COMMISSION,
    SERVICETAX_LEVELCODE,
    TC_DISCOUNT,
    ADJUSTED_AMOUNT,
    STD_COMMISSION,
    BONUS_COMMISSION,
    STD_COMMISSION_PERCENT,
    BONUS_COMMISSION_PERCENT,
    ORIGINAL_STD_COMMISSION,
    ORIGINAL_BONUS_COMMISSION,
    ORIGINAL_STD_COMM_PERCENT,
    ORIGINAL_BONUS_COMM_PERCENT,
    PRICE_TAX_CLSFCN,
    COMM_TAX_CLSFCN,
    IS_TAX_INCL_COMM,
    IS_TAX_INCL_PRICE,
    IS_TAX_INCL_COST
FROM ITRVL_BKG_PKG_ITEM_CHRG_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_BKG_PKG_ITEM_CHRG_VW
INSERT INTO ITRVL_BKG_PKG_ITEM_CHRG_VW (
    CHARGE_ID,
    ITEM_ID,
    CHARGE_LEVEL,
    CHARGE_TYPE,
    CURRENCY,
    BASE_PRICE,
    DISCOUNT,
    GROSS_PRICE,
    NET_PRICE,
    COMMISSIONABLE_IND,
    AGENCY_COMMISSION,
    VENDOR_COMMISSION,
    MARK_UP,
    PAX_ID,
    BASE_COST,
    MANUAL_ADD_IND,
    REFUNDABLE_IND,
    BASE_OVERRIDEN_IND,
    GROSS_OVERRIDEN_IND,
    COMM_OVERRIDEN_IND,
    ORIGINAL_BASE_COST,
    ORIGINAL_GROSS_PRICE,
    ORIGINAL_COMMISSION_AMT,
    ORIGINAL_SUP_COST,
    SUPPLIER_DISCOUNT,
    COMPANY_ID,
    TENANT_ID,
    SUPER_PNR_NO,
    CREATED_ON,
    VDR_CUR,
    EXCHG_RATE_TO_PRC_CUR,
    PRICE_SERVICETAX,
    COST_SERVICETAX,
    COST_VDR_CUR,
    COMMISSION_SERVICETAX,
    BASE_PRC_VDR_CUR,
    VENDOR_COMM_PERCENTAGE,
    VENDOR_COMM_OVERRIDDEN_IND,
    ORIGINAL_VENDOR_COMM_AMT,
    ORIGINAL_VENDOR_COMM_PCT,
    CATEGORY,
    VAT_CODE,
    PRICE_SERVICETAX_PCT,
    COST_SERVICETAX_PCT,
    COMMISSION_SERVICETAX_PCT,
    TC_COMMISSION,
    SERVICETAX_LEVELCODE,
    TC_DISCOUNT,
    ADJUSTED_AMOUNT,
    STD_COMMISSION,
    BONUS_COMMISSION,
    STD_COMMISSION_PERCENT,
    BONUS_COMMISSION_PERCENT,
    ORIGINAL_STD_COMMISSION,
    ORIGINAL_BONUS_COMMISSION,
    ORIGINAL_STD_COMM_PERCENT,
    ORIGINAL_BONUS_COMM_PERCENT,
    PRICE_TAX_CLSFCN,
    COMM_TAX_CLSFCN,
    IS_TAX_INCL_COMM,
    IS_TAX_INCL_PRICE,
    IS_TAX_INCL_COST
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
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_BKG_PKG_ITEM_CHRG_VW
-- Description: Details of Package Item Charges
-- Module: REPORT
CREATE TABLE ITRVL_BKG_PKG_ITEM_CHRG_VW (
    CHARGE_ID BIGINT,
    ITEM_ID BIGINT,
    CHARGE_LEVEL CHARACTER VARYING(20),
    CHARGE_TYPE CHARACTER VARYING(20),
    CURRENCY CHARACTER VARYING(6),
    BASE_PRICE NUMERIC (19,6),
    DISCOUNT NUMERIC (19,6),
    GROSS_PRICE NUMERIC (19,6),
    NET_PRICE NUMERIC (19,6),
    COMMISSIONABLE_IND BOOLEAN,
    AGENCY_COMMISSION NUMERIC (19,6),
    VENDOR_COMMISSION NUMERIC (19,6),
    MARK_UP NUMERIC (19,6),
    PAX_ID BIGINT,
    BASE_COST NUMERIC (19,6),
    MANUAL_ADD_IND BOOLEAN,
    REFUNDABLE_IND BOOLEAN,
    BASE_OVERRIDEN_IND BOOLEAN,
    GROSS_OVERRIDEN_IND BOOLEAN,
    COMM_OVERRIDEN_IND BOOLEAN,
    ORIGINAL_BASE_COST NUMERIC (19,6),
    ORIGINAL_GROSS_PRICE NUMERIC (19,6),
    ORIGINAL_COMMISSION_AMT NUMERIC (19,6),
    ORIGINAL_SUP_COST NUMERIC (19,6),
    SUPPLIER_DISCOUNT NUMERIC (19,6),
    COMPANY_ID CHARACTER VARYING(4),
    TENANT_ID CHARACTER VARYING(4),
    SUPER_PNR_NO CHARACTER VARYING(15),
    CREATED_ON TIMESTAMP WITHOUT TIME ZONE,
    VDR_CUR CHARACTER VARYING(6),
    EXCHG_RATE_TO_PRC_CUR REAL,
    PRICE_SERVICETAX NUMERIC (19,6),
    COST_SERVICETAX NUMERIC (19,6),
    COST_VDR_CUR NUMERIC (19,6),
    COMMISSION_SERVICETAX NUMERIC (19,6),
    BASE_PRC_VDR_CUR NUMERIC (19,6),
    VENDOR_COMM_PERCENTAGE DOUBLE PRECISION,
    VENDOR_COMM_OVERRIDDEN_IND BOOLEAN,
    ORIGINAL_VENDOR_COMM_AMT NUMERIC (19,6),
    ORIGINAL_VENDOR_COMM_PCT DOUBLE PRECISION,
    CATEGORY CHARACTER VARYING(20),
    VAT_CODE CHARACTER VARYING(50),
    PRICE_SERVICETAX_PCT DOUBLE PRECISION,
    COST_SERVICETAX_PCT DOUBLE PRECISION,
    COMMISSION_SERVICETAX_PCT DOUBLE PRECISION,
    TC_COMMISSION NUMERIC (19,6),
    SERVICETAX_LEVELCODE CHARACTER VARYING(10),
    TC_DISCOUNT NUMERIC (19,6),
    ADJUSTED_AMOUNT NUMERIC (19,6),
    STD_COMMISSION NUMERIC (19,6),
    BONUS_COMMISSION NUMERIC (19,6),
    STD_COMMISSION_PERCENT DOUBLE PRECISION,
    BONUS_COMMISSION_PERCENT DOUBLE PRECISION,
    ORIGINAL_STD_COMMISSION NUMERIC (19,6),
    ORIGINAL_BONUS_COMMISSION NUMERIC (19,6),
    ORIGINAL_STD_COMM_PERCENT DOUBLE PRECISION,
    ORIGINAL_BONUS_COMM_PERCENT DOUBLE PRECISION,
    PRICE_TAX_CLSFCN CHARACTER VARYING(15),
    COMM_TAX_CLSFCN CHARACTER VARYING(15),
    IS_TAX_INCL_COMM BOOLEAN,
    IS_TAX_INCL_PRICE BOOLEAN,
    IS_TAX_INCL_COST BOOLEAN
);



-- ============================================================================
-- Table #17: ITRVL_BKG_PKG_ITEM_GEN_PAX_VW
-- Source: itrvl_bkg.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_BKG_PKG_ITEM_GEN_PAX_VW
-- Description: Pax Details for each Generic Itinerary Item
-- Module: REPORT
SELECT
    COMP_PAX_ID,
    PAX_ID,
    ITEM_GEN_ID,
    SUPER_PNR_NO,
    COMPANY_ID,
    ITEM_PAX_STATUS,
    CREATED_ON
FROM ITRVL_BKG_PKG_ITEM_GEN_PAX_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_BKG_PKG_ITEM_GEN_PAX_VW
INSERT INTO ITRVL_BKG_PKG_ITEM_GEN_PAX_VW (
    COMP_PAX_ID,
    PAX_ID,
    ITEM_GEN_ID,
    SUPER_PNR_NO,
    COMPANY_ID,
    ITEM_PAX_STATUS,
    CREATED_ON
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_BKG_PKG_ITEM_GEN_PAX_VW
-- Description: Pax Details for each Generic Itinerary Item
-- Module: REPORT
CREATE TABLE ITRVL_BKG_PKG_ITEM_GEN_PAX_VW (
    COMP_PAX_ID BIGINT,
    PAX_ID BIGINT,
    ITEM_GEN_ID BIGINT,
    SUPER_PNR_NO CHARACTER VARYING(15),
    COMPANY_ID CHARACTER VARYING(20),
    ITEM_PAX_STATUS CHARACTER VARYING(15),
    CREATED_ON TIMESTAMP WITHOUT TIME ZONE
);



-- ============================================================================
-- Table #18: ITRVL_BKG_PKG_ITEM_GEN_VW
-- Source: itrvl_bkg.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_BKG_PKG_ITEM_GEN_VW
-- Description: Details for each Generic Itinerary Item
-- Module: REPORT
SELECT
    ITEM_GEN_ID,
    ITEM_ID,
    SUPER_PNR_NO,
    COMPANY_ID,
    CREATED_ON
FROM ITRVL_BKG_PKG_ITEM_GEN_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_BKG_PKG_ITEM_GEN_VW
INSERT INTO ITRVL_BKG_PKG_ITEM_GEN_VW (
    ITEM_GEN_ID,
    ITEM_ID,
    SUPER_PNR_NO,
    COMPANY_ID,
    CREATED_ON
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_BKG_PKG_ITEM_GEN_VW
-- Description: Details for each Generic Itinerary Item
-- Module: REPORT
CREATE TABLE ITRVL_BKG_PKG_ITEM_GEN_VW (
    ITEM_GEN_ID BIGINT,
    ITEM_ID BIGINT,
    SUPER_PNR_NO CHARACTER VARYING(15),
    COMPANY_ID CHARACTER VARYING(20),
    CREATED_ON TIMESTAMP WITHOUT TIME ZONE
);



-- ============================================================================
-- Table #19: ITRVL_BKG_PKG_ITEM_ROUTE_VW
-- Source: itrvl_bkg.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_BKG_PKG_ITEM_ROUTE_VW
-- Description: Table to store package item route details(for Transfer and AIR)
-- Module: REPORT
SELECT
    ROUTE_ID,
    ITEM_ID,
    ITEM_SEQUENCE,
    START_DAY,
    END_DAY,
    FROM_LOCATION_TYPE,
    TO_LOCATION_TYPE,
    FROM_LOCATION,
    TO_LOCTION,
    TRIP_TYPE,
    COMPANY_ID,
    CREATED_ON
FROM ITRVL_BKG_PKG_ITEM_ROUTE_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_BKG_PKG_ITEM_ROUTE_VW
INSERT INTO ITRVL_BKG_PKG_ITEM_ROUTE_VW (
    ROUTE_ID,
    ITEM_ID,
    ITEM_SEQUENCE,
    START_DAY,
    END_DAY,
    FROM_LOCATION_TYPE,
    TO_LOCATION_TYPE,
    FROM_LOCATION,
    TO_LOCTION,
    TRIP_TYPE,
    COMPANY_ID,
    CREATED_ON
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
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_BKG_PKG_ITEM_ROUTE_VW
-- Description: Table to store package item route details(for Transfer and AIR)
-- Module: REPORT
CREATE TABLE ITRVL_BKG_PKG_ITEM_ROUTE_VW (
    ROUTE_ID BIGINT,
    ITEM_ID BIGINT,
    ITEM_SEQUENCE SMALLINT,
    START_DAY SMALLINT,
    END_DAY SMALLINT,
    FROM_LOCATION_TYPE CHARACTER VARYING(20),
    TO_LOCATION_TYPE CHARACTER VARYING(20),
    FROM_LOCATION CHARACTER VARYING(50),
    TO_LOCTION CHARACTER VARYING(50),
    TRIP_TYPE CHARACTER VARYING(1),
    COMPANY_ID CHARACTER VARYING(4),
    CREATED_ON TIMESTAMP WITHOUT TIME ZONE
);



-- ============================================================================
-- Table #20: ITRVL_BKG_PKG_ITEM_VW
-- Source: itrvl_bkg.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_BKG_PKG_ITEM_VW
-- Description: Details of Package Items
-- Module: REPORT
SELECT
    ITEM_ID,
    PKG_ID,
    COMPONENT_ID,
    SEQUENCE_NO,
    ITEM_TYPE,
    ITEM_CODE,
    APPLICABILITY_TYPE,
    SOURCE_TYPE,
    IS_LEAD_ITEM,
    COMPANY_ID,
    TENANT_ID,
    SUPER_PNR_NO,
    START_DAY,
    END_DAY,
    CATEGORY_CODE,
    LOCATION,
    UNIQUE_REF_ID,
    OCCURENCE_CODE,
    SUBS_GRP_CODE,
    IS_REMOVED,
    IS_FLEXIBLE,
    RATE_PLAN,
    ITEM_REF_ID,
    CREATED_ON
FROM ITRVL_BKG_PKG_ITEM_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_BKG_PKG_ITEM_VW
INSERT INTO ITRVL_BKG_PKG_ITEM_VW (
    ITEM_ID,
    PKG_ID,
    COMPONENT_ID,
    SEQUENCE_NO,
    ITEM_TYPE,
    ITEM_CODE,
    APPLICABILITY_TYPE,
    SOURCE_TYPE,
    IS_LEAD_ITEM,
    COMPANY_ID,
    TENANT_ID,
    SUPER_PNR_NO,
    START_DAY,
    END_DAY,
    CATEGORY_CODE,
    LOCATION,
    UNIQUE_REF_ID,
    OCCURENCE_CODE,
    SUBS_GRP_CODE,
    IS_REMOVED,
    IS_FLEXIBLE,
    RATE_PLAN,
    ITEM_REF_ID,
    CREATED_ON
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
    ?,
    ?,
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_BKG_PKG_ITEM_VW
-- Description: Details of Package Items
-- Module: REPORT
CREATE TABLE ITRVL_BKG_PKG_ITEM_VW (
    ITEM_ID BIGINT,
    PKG_ID BIGINT,
    COMPONENT_ID BIGINT,
    SEQUENCE_NO INTEGER,
    ITEM_TYPE CHARACTER VARYING(3),
    ITEM_CODE CHARACTER VARYING(50),
    APPLICABILITY_TYPE CHARACTER VARYING(1),
    SOURCE_TYPE CHARACTER VARYING(1),
    IS_LEAD_ITEM BOOLEAN,
    COMPANY_ID CHARACTER VARYING(4),
    TENANT_ID CHARACTER VARYING(4),
    SUPER_PNR_NO CHARACTER VARYING(15),
    START_DAY SMALLINT,
    END_DAY SMALLINT,
    CATEGORY_CODE CHARACTER VARYING(20),
    LOCATION CHARACTER VARYING(20),
    UNIQUE_REF_ID CHARACTER VARYING(100),
    OCCURENCE_CODE CHARACTER VARYING(20),
    SUBS_GRP_CODE CHARACTER VARYING(20),
    IS_REMOVED BOOLEAN,
    IS_FLEXIBLE BOOLEAN,
    RATE_PLAN CHARACTER VARYING(27),
    ITEM_REF_ID TEXT,
    CREATED_ON TIMESTAMP WITHOUT TIME ZONE
);



-- ============================================================================
-- Table #21: ITRVL_BKG_PKG_MAIN_VW
-- Source: itrvl_bkg.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_BKG_PKG_MAIN_VW
-- Description: Table to store the package booking master data
-- Module: REPORT
SELECT
    COMPONENT_ID,
    TENANT_ID,
    SUPER_PNR_NO,
    PACKAGE_CODE,
    PACKAGE_NAME,
    PKG_DEP_DATE_TIME,
    CURRENCY_CODE,
    COMPANY_ID,
    RATE_PLAN,
    PACKAGE_CATEGORY,
    HUB_CODE,
    DURATION,
    THEME_CODE,
    SERIES_CODE,
    LEAD_PKG_IND,
    LEAD_ITEM_CODE,
    LEAD_ITEM_CAT,
    BRAND_CODE,
    PRICE_METHODOLOGY,
    PRICE_OPACITY,
    ITIN_CODE,
    IS_APPORTION_APPLIED,
    SLCT_AIRPORT_CODES,
    LEAD_ITEM_FARECLS,
    LEAD_ITEM_RATEPLAN_TYPE,
    LEAD_ITEM_DURATION,
    CREATED_ON
FROM ITRVL_BKG_PKG_MAIN_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_BKG_PKG_MAIN_VW
INSERT INTO ITRVL_BKG_PKG_MAIN_VW (
    COMPONENT_ID,
    TENANT_ID,
    SUPER_PNR_NO,
    PACKAGE_CODE,
    PACKAGE_NAME,
    PKG_DEP_DATE_TIME,
    CURRENCY_CODE,
    COMPANY_ID,
    RATE_PLAN,
    PACKAGE_CATEGORY,
    HUB_CODE,
    DURATION,
    THEME_CODE,
    SERIES_CODE,
    LEAD_PKG_IND,
    LEAD_ITEM_CODE,
    LEAD_ITEM_CAT,
    BRAND_CODE,
    PRICE_METHODOLOGY,
    PRICE_OPACITY,
    ITIN_CODE,
    IS_APPORTION_APPLIED,
    SLCT_AIRPORT_CODES,
    LEAD_ITEM_FARECLS,
    LEAD_ITEM_RATEPLAN_TYPE,
    LEAD_ITEM_DURATION,
    CREATED_ON
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
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_BKG_PKG_MAIN_VW
-- Description: Table to store the package booking master data
-- Module: REPORT
CREATE TABLE ITRVL_BKG_PKG_MAIN_VW (
    COMPONENT_ID BIGINT,
    TENANT_ID CHARACTER VARYING(4),
    SUPER_PNR_NO CHARACTER VARYING(15),
    PACKAGE_CODE CHARACTER VARYING(25),
    PACKAGE_NAME CHARACTER VARYING(150),
    PKG_DEP_DATE_TIME TIMESTAMP WITHOUT TIME ZONE,
    CURRENCY_CODE CHARACTER VARYING(5),
    COMPANY_ID CHARACTER VARYING(4),
    RATE_PLAN CHARACTER VARYING(27),
    PACKAGE_CATEGORY CHARACTER VARYING(15),
    HUB_CODE CHARACTER VARYING(15),
    DURATION SMALLINT,
    THEME_CODE CHARACTER VARYING(20),
    SERIES_CODE CHARACTER VARYING(20),
    LEAD_PKG_IND BOOLEAN,
    LEAD_ITEM_CODE CHARACTER VARYING(30),
    LEAD_ITEM_CAT CHARACTER VARYING(20),
    BRAND_CODE CHARACTER VARYING(30),
    PRICE_METHODOLOGY CHARACTER VARYING(1),
    PRICE_OPACITY CHARACTER VARYING(1),
    ITIN_CODE CHARACTER VARYING(20),
    IS_APPORTION_APPLIED BOOLEAN,
    SLCT_AIRPORT_CODES CHARACTER VARYING(150),
    LEAD_ITEM_FARECLS CHARACTER VARYING(20),
    LEAD_ITEM_RATEPLAN_TYPE CHARACTER VARYING(20),
    LEAD_ITEM_DURATION CHARACTER VARYING(30),
    CREATED_ON TIMESTAMP WITHOUT TIME ZONE
);



-- ============================================================================
-- Table #22: ITRVL_BKG_PKG_PAX_PROM_VW
-- Source: itrvl_bkg.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_BKG_PKG_PAX_PROM_VW
-- Description: PACKAGE PER PAX CHARGE BOOKING PROMOTION DETAILS TABLE
-- Module: REPORT
SELECT
    PROMO_ID,
    CHARGE_ID,
    PKG_PROMO_CODE,
    AMOUNT,
    COMPANY_ID,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    CREATED_ON
FROM ITRVL_BKG_PKG_PAX_PROM_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_BKG_PKG_PAX_PROM_VW
INSERT INTO ITRVL_BKG_PKG_PAX_PROM_VW (
    PROMO_ID,
    CHARGE_ID,
    PKG_PROMO_CODE,
    AMOUNT,
    COMPANY_ID,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    CREATED_ON
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_BKG_PKG_PAX_PROM_VW
-- Description: PACKAGE PER PAX CHARGE BOOKING PROMOTION DETAILS TABLE
-- Module: REPORT
CREATE TABLE ITRVL_BKG_PKG_PAX_PROM_VW (
    PROMO_ID BIGINT,
    CHARGE_ID BIGINT,
    PKG_PROMO_CODE CHARACTER VARYING(50),
    AMOUNT NUMERIC (19,6),
    COMPANY_ID CHARACTER VARYING(4),
    LAST_MODIFIED_BY CHARACTER VARYING(100),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE,
    CREATED_ON TIMESTAMP WITHOUT TIME ZONE
);



-- ============================================================================
-- Table #23: ITRVL_BKG_PKG_PAX_VW
-- Source: itrvl_bkg.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_BKG_PKG_PAX_VW
-- Description: Table to store the passenger details in a package belong to a booking
-- Module: REPORT
SELECT
    COMP_PAX_ID,
    PAX_ID,
    COMPONENT_ID,
    PKG_PAX_STATUS,
    LOYALTY_MEMB_ID,
    LOYALTY_PGM_ID,
    SUPER_PNR_NO,
    COMPANY_ID,
    PAX_TOTAL_PRICE,
    CREATED_ON
FROM ITRVL_BKG_PKG_PAX_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_BKG_PKG_PAX_VW
INSERT INTO ITRVL_BKG_PKG_PAX_VW (
    COMP_PAX_ID,
    PAX_ID,
    COMPONENT_ID,
    PKG_PAX_STATUS,
    LOYALTY_MEMB_ID,
    LOYALTY_PGM_ID,
    SUPER_PNR_NO,
    COMPANY_ID,
    PAX_TOTAL_PRICE,
    CREATED_ON
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
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_BKG_PKG_PAX_VW
-- Description: Table to store the passenger details in a package belong to a booking
-- Module: REPORT
CREATE TABLE ITRVL_BKG_PKG_PAX_VW (
    COMP_PAX_ID BIGINT,
    PAX_ID BIGINT,
    COMPONENT_ID BIGINT,
    PKG_PAX_STATUS CHARACTER VARYING(15),
    LOYALTY_MEMB_ID CHARACTER VARYING(32),
    LOYALTY_PGM_ID CHARACTER VARYING(16),
    SUPER_PNR_NO CHARACTER VARYING(15),
    COMPANY_ID CHARACTER VARYING(20),
    PAX_TOTAL_PRICE NUMERIC (19,6),
    CREATED_ON TIMESTAMP WITHOUT TIME ZONE
);



-- ============================================================================
-- Table #24: ITRVL_BKG_PKG_PROM_BENEFIT_VW
-- Source: itrvl_bkg.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_BKG_PKG_PROM_BENEFIT_VW
-- Description: This table is to save the promotion benefit details
-- Module: REPORT
SELECT
    PKG_PROMO_BENEFIT_ID,
    SUPER_PNR_NO,
    PROMO_ID,
    BENEFIT_CODE,
    BENEFIT_LEVEL,
    COMP_PROMO_ID,
    COMPONENT_ID,
    COMPANY_ID,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    BENEFIT_NAME,
    BENEFIT_DISCOUNT,
    CREATED_ON
FROM ITRVL_BKG_PKG_PROM_BENEFIT_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_BKG_PKG_PROM_BENEFIT_VW
INSERT INTO ITRVL_BKG_PKG_PROM_BENEFIT_VW (
    PKG_PROMO_BENEFIT_ID,
    SUPER_PNR_NO,
    PROMO_ID,
    BENEFIT_CODE,
    BENEFIT_LEVEL,
    COMP_PROMO_ID,
    COMPONENT_ID,
    COMPANY_ID,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    BENEFIT_NAME,
    BENEFIT_DISCOUNT,
    CREATED_ON
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
    ?,
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_BKG_PKG_PROM_BENEFIT_VW
-- Description: This table is to save the promotion benefit details
-- Module: REPORT
CREATE TABLE ITRVL_BKG_PKG_PROM_BENEFIT_VW (
    PKG_PROMO_BENEFIT_ID BIGINT,
    SUPER_PNR_NO CHARACTER VARYING(15),
    PROMO_ID BIGINT,
    BENEFIT_CODE CHARACTER VARYING(20),
    BENEFIT_LEVEL CHARACTER VARYING(20),
    COMP_PROMO_ID BIGINT,
    COMPONENT_ID BIGINT,
    COMPANY_ID CHARACTER VARYING(4),
    LAST_MODIFIED_BY CHARACTER VARYING(100),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE,
    BENEFIT_NAME CHARACTER VARYING(20),
    BENEFIT_DISCOUNT NUMERIC (19,6),
    CREATED_ON TIMESTAMP WITHOUT TIME ZONE
);



-- ============================================================================
-- Table #25: ITRVL_CRU_INV_PKG_GRP_CAT_VW
-- Source: itrvl_cru.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_CRU_INV_PKG_GRP_CAT_VW
-- Description: This table is used to store the Cruise Inventory Cabin.
-- Module: REPORT
SELECT
    CAT_REQ_ID,
    REQUEST_ID,
    CATEGORY_CODE,
    REAL_ENT,
    GUAR_ENT,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    COMPANY_ID
FROM ITRVL_CRU_INV_PKG_GRP_CAT_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_CRU_INV_PKG_GRP_CAT_VW
INSERT INTO ITRVL_CRU_INV_PKG_GRP_CAT_VW (
    CAT_REQ_ID,
    REQUEST_ID,
    CATEGORY_CODE,
    REAL_ENT,
    GUAR_ENT,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    COMPANY_ID
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_CRU_INV_PKG_GRP_CAT_VW
-- Description: This table is used to store the Cruise Inventory Cabin.
-- Module: REPORT
CREATE TABLE ITRVL_CRU_INV_PKG_GRP_CAT_VW (
    CAT_REQ_ID INTEGER,
    REQUEST_ID INTEGER,
    CATEGORY_CODE CHARACTER VARYING(20),
    REAL_ENT INTEGER,
    GUAR_ENT INTEGER,
    LAST_MODIFIED_BY CHARACTER VARYING(100),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE,
    COMPANY_ID CHARACTER VARYING(20)
);



-- ============================================================================
-- Table #26: ITRVL_CRU_INV_PKG_GRP_REQ_VW
-- Source: itrvl_cru.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_CRU_INV_PKG_GRP_REQ_VW
-- Description: This table is used to store the Cruise Inventory Package/Group Request
-- Module: REPORT
SELECT
    REQUEST_ID,
    CRUISE_ID,
    BLOCK_ID,
    BLOCK_NAME,
    BLOCK_TYPE,
    REQUESTOR_TYPE,
    GRP_PKG_ID,
    BLOCK_NATURE,
    REAL_ALLOC,
    REAL_DEALLOC,
    GUAR_ALLOC,
    GUAR_DEALLOC,
    IS_REAL_OVERSELL,
    IS_GUAR_OVERSELL,
    BLOCK_STATUS,
    PRIORITY,
    IS_INV_INFO,
    IS_CABIN_INFO,
    CREATION_DATE,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    COMPANY_ID,
    CABIN_CODE,
    OPERATION_MODE,
    GRP_CLS_CODE,
    GRP_CAT_CODE,
    PACKAGE_DEPARTURE_DATE,
    PACKAGE_CATEGORY,
    PACKAGE_GROUP_CODE
FROM ITRVL_CRU_INV_PKG_GRP_REQ_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_CRU_INV_PKG_GRP_REQ_VW
INSERT INTO ITRVL_CRU_INV_PKG_GRP_REQ_VW (
    REQUEST_ID,
    CRUISE_ID,
    BLOCK_ID,
    BLOCK_NAME,
    BLOCK_TYPE,
    REQUESTOR_TYPE,
    GRP_PKG_ID,
    BLOCK_NATURE,
    REAL_ALLOC,
    REAL_DEALLOC,
    GUAR_ALLOC,
    GUAR_DEALLOC,
    IS_REAL_OVERSELL,
    IS_GUAR_OVERSELL,
    BLOCK_STATUS,
    PRIORITY,
    IS_INV_INFO,
    IS_CABIN_INFO,
    CREATION_DATE,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    COMPANY_ID,
    CABIN_CODE,
    OPERATION_MODE,
    GRP_CLS_CODE,
    GRP_CAT_CODE,
    PACKAGE_DEPARTURE_DATE,
    PACKAGE_CATEGORY,
    PACKAGE_GROUP_CODE
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

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_CRU_INV_PKG_GRP_REQ_VW
-- Description: This table is used to store the Cruise Inventory Package/Group Request
-- Module: REPORT
CREATE TABLE ITRVL_CRU_INV_PKG_GRP_REQ_VW (
    REQUEST_ID INTEGER,
    CRUISE_ID CHARACTER VARYING(50),
    BLOCK_ID CHARACTER VARYING(100),
    BLOCK_NAME CHARACTER VARYING(150),
    BLOCK_TYPE CHARACTER VARYING(25),
    REQUESTOR_TYPE CHARACTER VARYING(3),
    GRP_PKG_ID CHARACTER VARYING(50),
    BLOCK_NATURE CHARACTER VARYING(25),
    REAL_ALLOC INTEGER,
    REAL_DEALLOC INTEGER,
    GUAR_ALLOC INTEGER,
    GUAR_DEALLOC INTEGER,
    IS_REAL_OVERSELL BOOLEAN,
    IS_GUAR_OVERSELL BOOLEAN,
    BLOCK_STATUS SMALLINT,
    PRIORITY INTEGER,
    IS_INV_INFO BOOLEAN,
    IS_CABIN_INFO BOOLEAN,
    CREATION_DATE TIMESTAMP WITHOUT TIME ZONE,
    LAST_MODIFIED_BY CHARACTER VARYING(100),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE,
    COMPANY_ID CHARACTER VARYING(20),
    CABIN_CODE TEXT,
    OPERATION_MODE CHARACTER VARYING(15),
    GRP_CLS_CODE TEXT,
    GRP_CAT_CODE TEXT,
    PACKAGE_DEPARTURE_DATE TIMESTAMP WITHOUT TIME ZONE,
    PACKAGE_CATEGORY CHARACTER VARYING(50),
    PACKAGE_GROUP_CODE CHARACTER VARYING(50)
);



-- ============================================================================
-- Table #27: ITRVL_CRU_OPS_PKG_GRP_VW
-- Source: itrvl_cru.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_CRU_OPS_PKG_GRP_VW
-- Description: Table to store impacted package/group details corresponding to action details id in ITRVL_CRU_OPS_ACTION_DTLS table
-- Module: REPORT
SELECT
    CRU_OPS_PKG_GRP_ID,
    CRU_OPS_ACTION_DTLS_ID,
    CODE,
    PACKAGE_TYPE,
    DEPARTURE_DATE,
    UPDATE_STATUS,
    IS_PACKAGE,
    COMPANY_ID,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE
FROM ITRVL_CRU_OPS_PKG_GRP_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_CRU_OPS_PKG_GRP_VW
INSERT INTO ITRVL_CRU_OPS_PKG_GRP_VW (
    CRU_OPS_PKG_GRP_ID,
    CRU_OPS_ACTION_DTLS_ID,
    CODE,
    PACKAGE_TYPE,
    DEPARTURE_DATE,
    UPDATE_STATUS,
    IS_PACKAGE,
    COMPANY_ID,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE
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
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_CRU_OPS_PKG_GRP_VW
-- Description: Table to store impacted package/group details corresponding to action details id in ITRVL_CRU_OPS_ACTION_DTLS table
-- Module: REPORT
CREATE TABLE ITRVL_CRU_OPS_PKG_GRP_VW (
    CRU_OPS_PKG_GRP_ID BIGINT,
    CRU_OPS_ACTION_DTLS_ID BIGINT,
    CODE CHARACTER VARYING(50),
    PACKAGE_TYPE CHARACTER VARYING(50),
    DEPARTURE_DATE TIMESTAMP WITHOUT TIME ZONE,
    UPDATE_STATUS CHARACTER VARYING(1),
    IS_PACKAGE BOOLEAN,
    COMPANY_ID CHARACTER VARYING(4),
    LAST_MODIFIED_BY CHARACTER VARYING(100),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE
);



-- ============================================================================
-- Table #28: ITRVL_CRU_PRI_RTPLN_PKGS_VW
-- Source: itrvl_cru.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_CRU_PRI_RTPLN_PKGS_VW
-- Description: This is a table for package basic details defined in Cruise Rateplan.
-- Module: REPORT
SELECT
    PACKAGEID,
    RATEPLANID,
    PACKAGE_CODE,
    VALIDITY_START_DATE,
    VALIDITY_END_DATE,
    CATEGORY_CODE,
    ITEM_CODE,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    COMPANY_ID
FROM ITRVL_CRU_PRI_RTPLN_PKGS_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_CRU_PRI_RTPLN_PKGS_VW
INSERT INTO ITRVL_CRU_PRI_RTPLN_PKGS_VW (
    PACKAGEID,
    RATEPLANID,
    PACKAGE_CODE,
    VALIDITY_START_DATE,
    VALIDITY_END_DATE,
    CATEGORY_CODE,
    ITEM_CODE,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    COMPANY_ID
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
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_CRU_PRI_RTPLN_PKGS_VW
-- Description: This is a table for package basic details defined in Cruise Rateplan.
-- Module: REPORT
CREATE TABLE ITRVL_CRU_PRI_RTPLN_PKGS_VW (
    PACKAGEID BIGINT,
    RATEPLANID BIGINT,
    PACKAGE_CODE CHARACTER VARYING(20),
    VALIDITY_START_DATE TIMESTAMP WITHOUT TIME ZONE,
    VALIDITY_END_DATE TIMESTAMP WITHOUT TIME ZONE,
    CATEGORY_CODE TEXT,
    ITEM_CODE TEXT,
    LAST_MODIFIED_BY CHARACTER VARYING(100),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE,
    COMPANY_ID CHARACTER VARYING(20)
);



-- ============================================================================
-- Table #29: ITRVL_ACC_PKG_ACCLINE_DTLS_VW
-- Source: itrvl_fna.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_ACC_PKG_ACCLINE_DTLS_VW
-- Description: Table to store package line details for revenue recognition
-- Module: REPORT
SELECT
    PKG_ID,
    TENANT_ID,
    COMPANY_ID,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    ORG_UNIT,
    BILLING_ID,
    CHARGE_TYPE,
    SERVICE_TYPE,
    IS_PARTOF_PKG,
    PKG_CMPNT_ID,
    SALE_NET_VALUE,
    SALE_GROSS_VALUE,
    SALE_COMM,
    SALE_DISCOUNT,
    SALE_SERVICE_TAX,
    COMM_SRV_TAX,
    COST_AMT,
    ANT_EX_FLAG,
    ACT_EX_FLAG,
    ADJ_EX_FLAG,
    POSTED_REV,
    POSTED_COMM,
    POSTED_DISCOUNT,
    POSTED_SERV_TAX,
    POSTED_COMM_SERV_TAX,
    POSTED_COST,
    PRICE_METHODOLOGY,
    CATEGORY
FROM ITRVL_ACC_PKG_ACCLINE_DTLS_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_ACC_PKG_ACCLINE_DTLS_VW
INSERT INTO ITRVL_ACC_PKG_ACCLINE_DTLS_VW (
    PKG_ID,
    TENANT_ID,
    COMPANY_ID,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    ORG_UNIT,
    BILLING_ID,
    CHARGE_TYPE,
    SERVICE_TYPE,
    IS_PARTOF_PKG,
    PKG_CMPNT_ID,
    SALE_NET_VALUE,
    SALE_GROSS_VALUE,
    SALE_COMM,
    SALE_DISCOUNT,
    SALE_SERVICE_TAX,
    COMM_SRV_TAX,
    COST_AMT,
    ANT_EX_FLAG,
    ACT_EX_FLAG,
    ADJ_EX_FLAG,
    POSTED_REV,
    POSTED_COMM,
    POSTED_DISCOUNT,
    POSTED_SERV_TAX,
    POSTED_COMM_SERV_TAX,
    POSTED_COST,
    PRICE_METHODOLOGY,
    CATEGORY
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

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_ACC_PKG_ACCLINE_DTLS_VW
-- Description: Table to store package line details for revenue recognition
-- Module: REPORT
CREATE TABLE ITRVL_ACC_PKG_ACCLINE_DTLS_VW (
    PKG_ID BIGINT,
    TENANT_ID CHARACTER VARYING(4),
    COMPANY_ID CHARACTER VARYING(4),
    LAST_MODIFIED_BY CHARACTER VARYING(100),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE,
    ORG_UNIT CHARACTER VARYING(75),
    BILLING_ID CHARACTER VARYING(20),
    CHARGE_TYPE CHARACTER VARYING(100),
    SERVICE_TYPE CHARACTER VARYING(20),
    IS_PARTOF_PKG BOOLEAN,
    PKG_CMPNT_ID CHARACTER VARYING(20),
    SALE_NET_VALUE NUMERIC (19,6),
    SALE_GROSS_VALUE NUMERIC (19,6),
    SALE_COMM NUMERIC (19,6),
    SALE_DISCOUNT NUMERIC (19,6),
    SALE_SERVICE_TAX NUMERIC (19,6),
    COMM_SRV_TAX NUMERIC (19,6),
    COST_AMT NUMERIC (19,6),
    ANT_EX_FLAG CHARACTER VARYING(1),
    ACT_EX_FLAG CHARACTER VARYING(1),
    ADJ_EX_FLAG CHARACTER VARYING(1),
    POSTED_REV NUMERIC (19,6),
    POSTED_COMM NUMERIC (19,6),
    POSTED_DISCOUNT NUMERIC (19,6),
    POSTED_SERV_TAX NUMERIC (19,6),
    POSTED_COMM_SERV_TAX NUMERIC (19,6),
    POSTED_COST NUMERIC (19,6),
    PRICE_METHODOLOGY CHARACTER VARYING(1),
    CATEGORY CHARACTER VARYING(50)
);



-- ============================================================================
-- Table #30: ITRVL_MST_PACKAGE_CODE_VW
-- Source: itrvl_mst.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_MST_PACKAGE_CODE_VW
-- Description: Package code master
-- Module: REPORT
SELECT
    PACKAGE_ID,
    PKG_CODE,
    MARKET_CODE,
    OFFICE_CODE,
    PKG_NAME,
    PACKAGE_TYPE,
    PACKAGE_THEME,
    BOOK_PACK_START_DATE,
    BOOK_PACK_END_DATE,
    PACKAGE_SUBTYPE,
    PKGCODE_INFO,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    STATUS,
    COMPANY_ID
FROM ITRVL_MST_PACKAGE_CODE_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_MST_PACKAGE_CODE_VW
INSERT INTO ITRVL_MST_PACKAGE_CODE_VW (
    PACKAGE_ID,
    PKG_CODE,
    MARKET_CODE,
    OFFICE_CODE,
    PKG_NAME,
    PACKAGE_TYPE,
    PACKAGE_THEME,
    BOOK_PACK_START_DATE,
    BOOK_PACK_END_DATE,
    PACKAGE_SUBTYPE,
    PKGCODE_INFO,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_DATE,
    STATUS,
    COMPANY_ID
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
    ?,
    ?,
    ?,
    ?,
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_MST_PACKAGE_CODE_VW
-- Description: Package code master
-- Module: REPORT
CREATE TABLE ITRVL_MST_PACKAGE_CODE_VW (
    PACKAGE_ID INTEGER,
    PKG_CODE CHARACTER VARYING(5),
    MARKET_CODE INTEGER,
    OFFICE_CODE INTEGER,
    PKG_NAME CHARACTER VARYING(10),
    PACKAGE_TYPE INTEGER,
    PACKAGE_THEME CHARACTER VARYING(11),
    BOOK_PACK_START_DATE TIMESTAMP WITHOUT TIME ZONE,
    BOOK_PACK_END_DATE TIMESTAMP WITHOUT TIME ZONE,
    PACKAGE_SUBTYPE INTEGER,
    PKGCODE_INFO CHARACTER VARYING(2000),
    LAST_MODIFIED_BY CHARACTER VARYING(100),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE,
    STATUS SMALLINT,
    COMPANY_ID CHARACTER VARYING(4)
);



-- ============================================================================
-- Table #31: ITRVL_MST_PKGCLASSIFICATION_VW
-- Source: itrvl_mst.HTML
-- ============================================================================

-- SELECT Query:
-- Table: ITRVL_MST_PKGCLASSIFICATION_VW
-- Description: None
-- Module: REPORT
SELECT
    MASTER_CODE,
    MASTER_KEY,
    MASTER_VALUE,
    DESCRIPTION,
    MASTER_INFORMATION,
    LAST_MODIFIED_DATE,
    LAST_MODIFIED_BY,
    STATUS,
    META_DATA,
    COMPANY_ID
FROM ITRVL_MST_PKGCLASSIFICATION_VW;

-- INSERT Template:
-- INSERT template for table: ITRVL_MST_PKGCLASSIFICATION_VW
INSERT INTO ITRVL_MST_PKGCLASSIFICATION_VW (
    MASTER_CODE,
    MASTER_KEY,
    MASTER_VALUE,
    DESCRIPTION,
    MASTER_INFORMATION,
    LAST_MODIFIED_DATE,
    LAST_MODIFIED_BY,
    STATUS,
    META_DATA,
    COMPANY_ID
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
    ?
);

-- CREATE TABLE Statement:
-- CREATE TABLE for: ITRVL_MST_PKGCLASSIFICATION_VW
-- Description: None
-- Module: REPORT
CREATE TABLE ITRVL_MST_PKGCLASSIFICATION_VW (
    MASTER_CODE INTEGER,
    MASTER_KEY CHARACTER VARYING(30),
    MASTER_VALUE CHARACTER VARYING(4000),
    DESCRIPTION CHARACTER VARYING(5000),
    MASTER_INFORMATION CHARACTER VARYING(4000),
    LAST_MODIFIED_DATE TIMESTAMP WITHOUT TIME ZONE,
    LAST_MODIFIED_BY CHARACTER VARYING(50),
    STATUS SMALLINT,
    META_DATA TEXT,
    COMPANY_ID CHARACTER VARYING(4)
);


