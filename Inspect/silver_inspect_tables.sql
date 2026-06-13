


-------------------------------------------------------------------------------
 /* Command: EXEC silver.load_silver
 Purpose:
   Executes the stored procedure that loads data from the Bronze layer
   into the Silver schema tables. This step applies transformations,
   cleanses raw data, and enriches it for downstream use in the Gold layer.
 Usage:
   Run this after executing the silver_store_Procedutre file and bronze.load_bronze.
   */
-------------------------------------------------------------------------------
EXEC silver.load_silver;

------------------------------------------------------------------------------
-- Connect with "DataWarehouse" database
USE DataWarehouse;
GO

/*
===============================================================================
Query: Inspect Silver Layer Tables
===============================================================================
Purpose:
    - Validate that data has successfully flowed from Bronze → Silver.
    - Each SELECT statement retrieves all rows from the respective Silver table.
    - Use this script after running ETL procedures to confirm table population.
===============================================================================
*/

-------------------------------------------------------------------------------
-- Table: silver.crm_cust_info
-- Purpose: Customer information enriched from CRM system
-------------------------------------------------------------------------------
SELECT * FROM silver.crm_cust_info;
GO

-------------------------------------------------------------------------------
-- Table: silver.crm_prd_info
-- Purpose: Product information enriched from CRM system
-------------------------------------------------------------------------------
SELECT * FROM silver.crm_prd_info;
GO

-------------------------------------------------------------------------------
-- Table: silver.crm_sales_details
-- Purpose: Sales transaction details enriched from CRM system
-------------------------------------------------------------------------------
SELECT * FROM silver.crm_sales_details;
GO

-------------------------------------------------------------------------------
-- Table: silver.erp_cust_az12
-- Purpose: Customer demographic details enriched from ERP system
-------------------------------------------------------------------------------
SELECT * FROM silver.erp_cust_az12;
GO

-------------------------------------------------------------------------------
-- Table: silver.erp_loc_a101
-- Purpose: Customer location details enriched from ERP system
-------------------------------------------------------------------------------
SELECT * FROM silver.erp_loc_a101;
GO

-------------------------------------------------------------------------------
-- Table: silver.erp_px_cat_g1v2
-- Purpose: Product category and maintenance details enriched from ERP system
-------------------------------------------------------------------------------
SELECT * FROM silver.erp_px_cat_g1v2;
GO
