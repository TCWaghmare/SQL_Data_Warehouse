/*
This file use to inspect the Gold layer views after they have been created. 
Each SELECT statement retrieves all rows from the respective Gold view, 
allowing you to validate that the dimension and fact tables.
which have been correctly populated and transformed for analytics and reporting purposes.
*/
-------------------------------------------------------------------------------
-- View: gold.dim_customers
-- Purpose: Check the customer dimension (surrogate keys + enriched attributes)
-------------------------------------------------------------------------------
SELECT * FROM gold.dim_customers;
GO

-------------------------------------------------------------------------------
-- View: gold.dim_products
-- Purpose: Check the product dimension (surrogate keys + category details)
-------------------------------------------------------------------------------
SELECT * FROM gold.dim_products;
GO

-------------------------------------------------------------------------------
-- View: gold.fact_sales
-- Purpose: Check the fact table (sales transactions linked to customers/products)
-------------------------------------------------------------------------------
SELECT * FROM gold.fact_sales;
GO
