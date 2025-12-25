-- All the date fields are loaded as nvarchar because the dates are not loaded as null here.
-- The dates will again be made to correct type in silver layer 


-- 1. Load crm_cust_info

-- Truncate the table to ensure a clean, full load
TRUNCATE TABLE bronze.crm_cust_info; 
GO

--Bulk inserting the data into table
BULK INSERT bronze.crm_cust_info
FROM '/tmp/source_crm/cust_info.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0d0a',
    KEEPNULLS,
    TABLOCK
);
GO

-- 2. Load crm_prd_info 

-- Truncate the table to ensure a clean, full load
TRUNCATE TABLE bronze.crm_prd_info;
GO

--Bulk inserting the data into table
BULK INSERT bronze.crm_prd_info
FROM '/tmp/source_crm/prd_info.csv'
WITH(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0d0a',
    KEEPNULLS,
    TABLOCK
);
GO

-- 3. Load crm_sales_details
TRUNCATE TABLE bronze.crm_sales_details;
GO

--Bulk inserting the data into table
BULK INSERT bronze.crm_sales_details
FROM '/tmp/source_crm/sales_details.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0d0a',
    KEEPNULLS,
    TABLOCK
);
GO

-- 4. Load erp_cust_az12
TRUNCATE TABLE bronze.erp_cust_az12;
GO

--Bulk inserting the data into table
BULK INSERT bronze.erp_cust_az12
FROM '/tmp/source_erp/CUST_AZ12.csv'
WITH(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0d0a',
    KEEPNULLS,
    TABLOCK
);
GO

-- 5. Load erp_loc_a101
TRUNCATE TABLE bronze.erp_loc_a101;
GO

--Bulk inserting the data into table
BULK INSERT bronze.erp_loc_a101
FROM '/tmp/source_erp/LOC_A101.csv'
WITH(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0d0a',
    KEEPNULLS,
    TABLOCK
);
GO

-- 6. Load erp_px_cat_g1v2
TRUNCATE TABLE bronze.erp_px_cat_g1v2;
GO

--Bulk inserting the data into table
BULK INSERT bronze.erp_px_cat_g1v2
FROM '/tmp/source_erp/PX_CAT_G1V2.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0d0a',
    KEEPNULLS,
    TABLOCK
);
GO


