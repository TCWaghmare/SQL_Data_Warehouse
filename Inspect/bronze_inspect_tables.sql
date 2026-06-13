USE DataWarehouse;
GO

/*
===============================================================================
Script: Inspect Bronze Layer
===============================================================================
Purpose:
    - Run the Bronze load procedure to populate tables from source CSV files.
    - Validate that each Bronze table has been correctly populated.
    - Use SELECT queries to inspect data in each table.
===============================================================================
*/

-------------------------------------------------------------------------------
-- Step 1: Execute Bronze Load Procedure
-- Purpose: Load raw data from source files into Bronze tables
-------------------------------------------------------------------------------
EXEC bronze.load_bronze;
GO

-------------------------------------------------------------------------------
-- Step 2: Inspect bronze.crm_cust_info
-- Purpose: Raw customer information from CRM system
-------------------------------------------------------------------------------
SELECT * FROM bronze.crm_cust_info;
GO

-------------------------------------------------------------------------------
-- Step 3: Inspect bronze.crm_prd_info
-- Purpose: Raw product information from CRM system
-------------------------------------------------------------------------------
SELECT * FROM bronze.crm_prd_info;
GO

-------------------------------------------------------------------------------
-- Step 4: Inspect bronze.crm_sales_details
-- Purpose: Raw sales transaction details from CRM system
-------------------------------------------------------------------------------
SELECT * FROM bronze.crm_sales_details;
GO

-------------------------------------------------------------------------------
-- Step 5: Inspect bronze.erp_cust_az12
-- Purpose: Raw customer demographic details from ERP system
-------------------------------------------------------------------------------
SELECT * FROM bronze.erp_cust_az12;
GO

-------------------------------------------------------------------------------
-- Step 6: Inspect bronze.erp_loc_a101
-- Purpose: Raw customer location details from ERP system
-------------------------------------------------------------------------------
SELECT * FROM bronze.erp_loc_a101;
GO

-------------------------------------------------------------------------------
-- Step 7: Inspect bronze.erp_px_cat_g1v2
-- Purpose: Raw product category and maintenance details from ERP system
-------------------------------------------------------------------------------
SELECT * FROM bronze.erp_px_cat_g1v2;
GO
