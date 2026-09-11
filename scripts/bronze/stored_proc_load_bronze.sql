
--Stored Procedure
CREATE PROCEDURE bronze.load_bronze AS
BEGIN
	BEGIN TRY
		--Truncate and load the table from the file path
		TRUNCATE TABLE bronze.crm_cust_info
		BULK INSERT bronze.crm_cust_info
		FROM 'C:\Users\peter\OneDrive\Documents\DATA\SQL\Baraa Material\sql-data-warehouse-project\datasets\source_crm/cust_info.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		)


		--Truncate and load the table from the file path
		TRUNCATE TABLE bronze.crm_prd_info
		BULK INSERT bronze.crm_prd_info
		FROM 'C:\Users\peter\OneDrive\Documents\DATA\SQL\Baraa Material\sql-data-warehouse-project\datasets\source_crm/prd_info.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		)


		--Truncate and load the table from the file path
		TRUNCATE TABLE bronze.crm_sales_details
		BULK INSERT bronze.crm_sales_details
		FROM 'C:\Users\peter\OneDrive\Documents\DATA\SQL\Baraa Material\sql-data-warehouse-project\datasets\source_crm/sales_details.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		)

		-------------------------second folder loading------------------------------------
		--Truncate and load the table from the file path
		TRUNCATE TABLE bronze.erp_cust_az12
		BULK INSERT bronze.erp_cust_az12
		FROM 'C:\Users\peter\OneDrive\Documents\DATA\SQL\Baraa Material\sql-data-warehouse-project\datasets\source_erp/CUST_AZ12.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		)


		--Truncate and load the table from the file path
		TRUNCATE TABLE bronze.erp_loc_a101
		BULK INSERT bronze.erp_loc_a101
		FROM 'C:\Users\peter\OneDrive\Documents\DATA\SQL\Baraa Material\sql-data-warehouse-project\datasets\source_erp/LOC_A101.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		)


		--Truncate and load the table from the file path
		TRUNCATE TABLE bronze.erp_px_cat_g1v2
		BULK INSERT bronze.erp_px_cat_g1v2
		FROM 'C:\Users\peter\OneDrive\Documents\DATA\SQL\Baraa Material\sql-data-warehouse-project\datasets\source_erp/PX_CAT_G1V2.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		)
	END TRY

	BEGIN CATCH
		PRINT 'Error Message' +  ERROR_MESSAGE() ;
	END CATCH
END




EXEC bronze.load_bronze
