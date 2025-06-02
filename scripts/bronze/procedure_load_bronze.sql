/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to bronze tables.

Parameters:
    None. 
	  This stored procedure does not accept any parameters or return any values.

Usage Example:
    EXEC bronze.load_bronze;
===============================================================================
*/

-- pathway procedure: 1.) execute the entire block first then 2.) execute the ' EXEC bronze.load_bronze' separately

CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
    DECLARE @start_time DATETIME, @end_time DATETIME, @batch_start_time DATETIME, @batch_end_time DATETIME;
    BEGIN TRY
        SET @batch_start_time = GETDATE();
        PRINT '===================================='
        PRINT 'Bronze layer, 100m individual result'
        PRINT '===================================='

        SET @start_time = GETDATE();
        PRINT '>> Truncating Table: [bronze].[100m_local_1_results]'
        TRUNCATE TABLE [bronze].[100m_local_1_results];

        PRINT '>> Inserting Data Into: [bronze].[100m_local_1_results]'
        BULK INSERT [bronze].[100m_local_1_results]
        FROM 'C:\Users\Wayne\Desktop\athletics-sprint-data-warehouse\100m\local_1_results.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '.. Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------'

        SET @start_time = GETDATE();
        PRINT '>> Truncating Table: [bronze].[100m_local_2_results]'
        TRUNCATE TABLE [bronze].[100m_local_2_results];
    
        PRINT '>> Inserting Data Into: [bronze].[100m_local_2_results]'
        BULK INSERT [bronze].[100m_local_2_results]
        FROM 'C:\Users\Wayne\Desktop\athletics-sprint-data-warehouse\100m\local_2_results.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '.. Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------'

        SET @start_time = GETDATE();
        PRINT '>> Truncating Table: [bronze].[100m_local_3_results]'
        TRUNCATE TABLE [bronze].[100m_local_3_results];

        PRINT '>> Inserting Data Into: [bronze].[100m_local_3_results]'
        BULK INSERT [bronze].[100m_local_3_results]
        FROM 'C:\Users\Wayne\Desktop\athletics-sprint-data-warehouse\100m\local_3_results.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '.. Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------'

        SET @start_time = GETDATE();
        PRINT '>> Truncating Table: [bronze].[100m_local_4_results]'
        TRUNCATE TABLE [bronze].[100m_local_4_results];

        PRINT '>> Inserting Data Into: [bronze].[100m_local_4_results]'
        BULK INSERT [bronze].[100m_local_4_results]
        FROM 'C:\Users\Wayne\Desktop\athletics-sprint-data-warehouse\100m\local_4_results.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '.. Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------'

        SET @start_time = GETDATE();
        PRINT '>> Truncating Table: [bronze].[100m_local_5_results]'
        TRUNCATE TABLE [bronze].[100m_local_5_results];

        PRINT '>> Inserting Data Into: [bronze].[100m_local_5_results]'
        BULK INSERT [bronze].[100m_local_5_results]
        FROM 'C:\Users\Wayne\Desktop\athletics-sprint-data-warehouse\100m\local_5_results.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '.. Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------'

        SET @start_time = GETDATE();
        PRINT '>> Truncating Table: [bronze].[100m_national_open_results]'
        TRUNCATE TABLE [bronze].[100m_national_open_results];

        PRINT '>> Inserting Data Into: [bronze].[100m_national_open_results]'
        BULK INSERT [bronze].[100m_national_open_results]
        FROM 'C:\Users\Wayne\Desktop\athletics-sprint-data-warehouse\100m\national_open_results.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '.. Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------'

        SET @start_time = GETDATE();
        PRINT '>> Truncating Table: [bronze].[100m_ncac_results]'
        TRUNCATE TABLE [bronze].[100m_ncac_results];

        PRINT '>> Inserting Data Into: [bronze].[100m_ncac_results]'
        BULK INSERT [bronze].[100m_ncac_results]
        FROM 'C:\Users\Wayne\Desktop\athletics-sprint-data-warehouse\100m\ncac_results.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '.. Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------'

        SET @start_time = GETDATE();
        PRINT '>> Truncating Table: [bronze].[100m_U15_little_athletics_results]'
        TRUNCATE TABLE [bronze].[100m_U15_little_athletics_results];

        PRINT '>> Inserting Data Into: [bronze].[100m_U15_little_athletics_results]'
        BULK INSERT [bronze].[100m_U15_little_athletics_results]
        FROM 'C:\Users\Wayne\Desktop\athletics-sprint-data-warehouse\100m\U15_little_athletics_results.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '.. Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------'

        SET @start_time = GETDATE();
        PRINT '>> Truncating Table: [bronze].[100m_U18_continental_results]'
        TRUNCATE TABLE [bronze].[100m_U18_continental_results];

        PRINT '>> Inserting Data Into: [bronze].[100m_U18_continental_results]'
        BULK INSERT [bronze].[100m_U18_continental_results]
        FROM 'C:\Users\Wayne\Desktop\athletics-sprint-data-warehouse\100m\U18_continental_results.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '.. Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------'

        SET @start_time = GETDATE();
        PRINT '>> Truncating Table: [bronze].[100m_U20_continental_results]'
        TRUNCATE TABLE [bronze].[100m_U20_continental_results];

        PRINT '>> Inserting Data Into: [bronze].[100m_U20_continental_results]'
        BULK INSERT [bronze].[100m_U20_continental_results]
        FROM 'C:\Users\Wayne\Desktop\athletics-sprint-data-warehouse\100m\U20_continental_results.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '.. Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        PRINT '>> -------------'

        PRINT '===================================='
        PRINT 'Bronze layer, 4x100m relay results'
        PRINT '===================================='
        
        SET @start_time = GETDATE();
        PRINT '>> Truncating Table: [bronze].relays_local_2_results'
        TRUNCATE TABLE [bronze].[relays_local_2_results];

        PRINT '>> Inserting Data Into: [bronze].relays_local_2_results'
        BULK INSERT [bronze].relays_local_2_results
        FROM 'C:\Users\Wayne\Desktop\athletics-sprint-data-warehouse\relays\local_2_results.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '.. Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';

        SET @start_time = GETDATE();
        PRINT '>> Truncating Table: [bronze].relays_local_3_results'
        TRUNCATE TABLE [bronze].[relays_local_3_results];

        PRINT '>> Inserting Data Into: [bronze].relays_local_3_results'
        BULK INSERT [bronze].relays_local_3_results
        FROM 'C:\Users\Wayne\Desktop\athletics-sprint-data-warehouse\relays\local_3_results.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '.. Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
        
        SET @start_time = GETDATE();
        PRINT '>> Truncating Table: [bronze].relays_local_4_results'
        TRUNCATE TABLE [bronze].[relays_local_4_results];

        PRINT '>> Inserting Data Into: [bronze].relays_local_4_results'
        BULK INSERT [bronze].relays_local_4_results
        FROM 'C:\Users\Wayne\Desktop\athletics-sprint-data-warehouse\relays\local_4_results.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '.. Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';

        SET @start_time = GETDATE();
        PRINT '>> Truncating Table: [bronze].relays_nationals_open_results'
        TRUNCATE TABLE [bronze].[relays_nationals_open_results];

        PRINT '>> Inserting Data Into: [bronze].relays_nationals_open_results'
        BULK INSERT [bronze].relays_nationals_open_results
        FROM 'C:\Users\Wayne\Desktop\athletics-sprint-data-warehouse\relays\nationals_open_results.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '.. Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';

        SET @start_time = GETDATE();
        PRINT '>> Truncating Table: [bronze].relays_ncac_results'
        TRUNCATE TABLE [bronze].[relays_ncac_results];

        PRINT '>> Inserting Data Into: [bronze].relays_ncac_results'
        BULK INSERT [bronze].relays_ncac_results
        FROM 'C:\Users\Wayne\Desktop\athletics-sprint-data-warehouse\relays\ncac_results.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '.. Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';

        SET @start_time = GETDATE();
        PRINT '>> Truncating Table: [bronze].relays_U15_little_athletics_results'
        TRUNCATE TABLE [bronze].[relays_U15_little_athletics_results];

        PRINT '>> Inserting Data Into: [bronze].relays_U15_little_athletics_results'
        BULK INSERT [bronze].relays_U15_little_athletics_results
        FROM 'C:\Users\Wayne\Desktop\athletics-sprint-data-warehouse\relays\U15_little_athletics_results.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '.. Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';

        SET @start_time = GETDATE();
        PRINT '>> Truncating Table: [bronze].relays_U18_continental_results'
        TRUNCATE TABLE [bronze].[relays_U18_continental_results];
    
        PRINT '>> Inserting Data Into: [bronze].relays_U18_continental_results'
        BULK INSERT [bronze].relays_U18_continental_results
        FROM 'C:\Users\Wayne\Desktop\athletics-sprint-data-warehouse\relays\U18_continental_results.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '.. Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';

        SET @start_time = GETDATE();
        PRINT '>> Truncating Table: [bronze].relays_U20_continental_results'
        TRUNCATE TABLE [bronze].[relays_U20_continental_results];
    
        PRINT '>> Inserting Data Into: [bronze].relays_U20_continental_results'
        BULK INSERT [bronze].relays_U20_continental_results
        FROM 'C:\Users\Wayne\Desktop\athletics-sprint-data-warehouse\relays\U20_continental_results.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '.. Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';

        PRINT '===================================='
        PRINT 'Bronze layer, qualifications'
        PRINT '===================================='

        SET @start_time = GETDATE();
        PRINT '>> Truncating Table: [bronze].qualification_2025'
        TRUNCATE TABLE [bronze].[qualification_2025];
        PRINT '>> Inserting Data Into: [bronze].qualification_2025'
        BULK INSERT [bronze].qualification_2025
        FROM 'C:\Users\Wayne\Desktop\athletics-sprint-data-warehouse\qualification\2025.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            KEEPNULLS,
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '.. Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';

        PRINT '===================================='
        PRINT 'Bronze layer, national records'
        PRINT '===================================='
 
        SET @start_time = GETDATE();
        PRINT '>> Truncating Table: [bronze].national_records_2024'
        TRUNCATE TABLE [bronze].[national_records_2024];
        PRINT '>> Inserting Data Into: [bronze].national_records_2024'
        BULK INSERT [bronze].national_records_2024
        FROM 'C:\Users\Wayne\Desktop\athletics-sprint-data-warehouse\national_records\2024.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            KEEPNULLS,
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '.. Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';       

        SET @batch_end_time = GETDATE();
        PRINT '===================================='
        PRINT 'Loading Bronze Layer is Completed'
        PRINT '-Total Load Duration: ' + CAST(DATEDIFF(SECOND, @batch_start_time, @batch_end_time) AS NVARCHAR) + ' seconds';
        PRINT '===================================='        
    END TRY
    BEGIN CATCH
        PRINT '===================================='
        PRINT 'ERROR OCCURED DURING LOADING BRONZE LAYER'
        PRINT 'ERROR MESSAGE' + ERROR_MESSAGE();
        PRINT 'ERROR MESSAGE' + CAST(ERROR_NUMBER() AS NVARCHAR);
        PRINT 'ERROR MESSAGE' + CAST(ERROR_STATE() AS NVARCHAR);
        PRINT '===================================='        
    END CATCH
END
