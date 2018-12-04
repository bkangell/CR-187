----#################### Start table generate output for : CCSNAZ.TCompAssmtCGDropDowns (8be18d/b85bfc) - 7091_CR-187_DATA_TCompAssmtCGDropDowns ####################
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'CCSNAZ')

	BEGIN

		EXEC ('CREATE SCHEMA [CCSNAZ] AUTHORIZATION [dbo]')

	END
IF NOT EXISTS ( SELECT 1 FROM [sys].[schemas] WHERE name = N'bak' )
BEGIN
    EXEC [sp_executesql] N'CREATE SCHEMA [bak] AUTHORIZATION [dbo];';
END
 
SET NOCOUNT ON;
DECLARE @sqlCmdData_b85bfc nvarchar(max);
DECLARE @exTranCount_b85bfc int;
DECLARE @paramsXml_b85bfc xml, @exErrorNumber_b85bfc int, @exErrorLine_b85bfc int, @exErrorSeverity_b85bfc int, @exErrorState_b85bfc int, @exErrorMessage_b85bfc nvarchar(max);
SET @exTranCount_b85bfc = @@TRANCOUNT;
BEGIN TRY
    IF @exTranCount_b85bfc = 0
        BEGIN TRANSACTION;
    ELSE
        SAVE TRANSACTION ScriptTableData_b85bfc;
    SELECT @sqlCmdData_b85bfc = N'SELECT * INTO [bak].[CCSNAZ_TCompAssmtCGDropDowns_' + REPLACE(REPLACE(REPLACE(CONVERT(nvarchar(30),GETDATE(),126),N'-',N''),N':',N''),N'.',N'') + N'] FROM [CCSNAZ].[TCompAssmtCGDropDowns];';
    EXEC [sp_executesql] @sqlCmdData_b85bfc;
    /*        1 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'No Use', N'1980-01-01T00:00:00', NULL, 1, '1', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'No Use'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 1
                                         AND [DropDown]  = '1'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*        2 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'Oral', N'1980-01-01T00:00:00', NULL, 2, '1', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'Oral'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 2
                                         AND [DropDown]  = '1'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*        3 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'Smoking', N'1980-01-01T00:00:00', NULL, 3, '1', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'Smoking'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 3
                                         AND [DropDown]  = '1'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*        4 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'Inhalation', N'1980-01-01T00:00:00', NULL, 4, '1', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'Inhalation'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 4
                                         AND [DropDown]  = '1'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*        5 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'No use past month', N'1980-01-01T00:00:00', NULL, 1, '2', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'No use past month'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 1
                                         AND [DropDown]  = '2'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*        6 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT '1-3 times in past month', N'1980-01-01T00:00:00', NULL, 2, '2', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = '1-3 times in past month'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 2
                                         AND [DropDown]  = '2'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*        7 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT '1-2 times per week', N'1980-01-01T00:00:00', NULL, 3, '2', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = '1-2 times per week'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 3
                                         AND [DropDown]  = '2'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*        8 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT '3-6 times per week', N'1980-01-01T00:00:00', NULL, 4, '2', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = '3-6 times per week'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 4
                                         AND [DropDown]  = '2'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*        9 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT '1+ times per day', N'1980-01-01T00:00:00', NULL, 5, '2', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = '1+ times per day'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 5
                                         AND [DropDown]  = '2'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*       10 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'No use past 3 months', N'1980-01-01T00:00:00', NULL, 6, '2', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'No use past 3 months'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 6
                                         AND [DropDown]  = '2'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*       11 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'No use past 6 months', N'1980-01-01T00:00:00', NULL, 7, '2', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'No use past 6 months'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 7
                                         AND [DropDown]  = '2'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*       12 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'No use past 12 months', N'1980-01-01T00:00:00', NULL, 8, '2', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'No use past 12 months'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 8
                                         AND [DropDown]  = '2'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*       13 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'Marijuana / Hashish', N'1980-01-01T00:00:00', NULL, 3, '3', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'Marijuana / Hashish'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 3
                                         AND [DropDown]  = '3'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*       14 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'Heroin/Morphine', N'1980-01-01T00:00:00', NULL, 4, '3', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'Heroin/Morphine'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 4
                                         AND [DropDown]  = '3'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*       15 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'Other Opiates/Synthetics', N'1980-01-01T00:00:00', NULL, 5, '3', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'Other Opiates/Synthetics'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 5
                                         AND [DropDown]  = '3'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*       16 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'Hallucinogens', N'1980-01-01T00:00:00', NULL, 6, '3', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'Hallucinogens'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 6
                                         AND [DropDown]  = '3'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*       17 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'Methamphetamine/Speed', N'1980-01-01T00:00:00', NULL, 7, '3', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'Methamphetamine/Speed'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 7
                                         AND [DropDown]  = '3'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*       18 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'Other Stimulants', N'1980-01-01T00:00:00', NULL, 8, '3', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'Other Stimulants'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 8
                                         AND [DropDown]  = '3'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*       19 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'Benzodiazepines', N'1980-01-01T00:00:00', NULL, 9, '3', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'Benzodiazepines'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 9
                                         AND [DropDown]  = '3'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*       20 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'Other Sedatives / Tranquilizers', N'1980-01-01T00:00:00', NULL, 10, '3', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'Other Sedatives / Tranquilizers'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 10
                                         AND [DropDown]  = '3'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*       21 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'Inhalants', N'1980-01-01T00:00:00', NULL, 11, '3', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'Inhalants'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 11
                                         AND [DropDown]  = '3'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*       22 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'Other Drugs', N'1980-01-01T00:00:00', NULL, 12, '3', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'Other Drugs'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 12
                                         AND [DropDown]  = '3'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*       23 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'Alcohol', N'1980-01-01T00:00:00', NULL, 1, '3', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'Alcohol'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 1
                                         AND [DropDown]  = '3'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*       24 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'Cocaine / Crack', N'1980-01-01T00:00:00', NULL, 2, '3', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'Cocaine / Crack'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 2
                                         AND [DropDown]  = '3'
                                         AND [TriggerEvent]  = 0
                                    );
 
    /*       25 */ INSERT INTO [CCSNAZ].[TCompAssmtCGDropDowns] ( [Description], [EffectiveDate], [ExpirationDate], [DisplayOrder], [DropDown], [TriggerEvent] )
                   SELECT 'Injection', N'1980-01-01T00:00:00', NULL, 5, '1', 0
                   WHERE NOT EXISTS ( SELECT 1 FROM [CCSNAZ].[TCompAssmtCGDropDowns] WHERE 1 = 1
                                         AND [Description]  = 'Injection'
                                         AND [EffectiveDate]  = N'1980-01-01T00:00:00'
                                         AND [ExpirationDate]  IS NULL
                                         AND [DisplayOrder]  = 5
                                         AND [DropDown]  = '1'
                                         AND [TriggerEvent]  = 0
                                    );
    --===========================================================================================================================================================
lbQuit_b85bfc:
    RAISERROR( N'Process data completed successfully', 0, 1 ) WITH NOWAIT;
    IF @exTranCount_b85bfc = 0
        COMMIT;
END TRY
BEGIN CATCH
    DECLARE @exXactState_b85bfc int;
    SELECT  @exXactState_b85bfc = XACT_STATE();
 
     -- Transaction Doomed
    IF @exXactState_b85bfc = -1
        ROLLBACK;
 
    -- Transaction started by this procedure
    IF @exXactState_b85bfc = 1 AND @exTranCount_b85bfc = 0 
        ROLLBACK;
 
    -- Transaction started before this procedure
    IF @exXactState_b85bfc = 1 AND @exTranCount_b85bfc > 0
        ROLLBACK TRANSACTION ScriptTableData_b85bfc;
 
    SELECT 
        @exErrorMessage_b85bfc  = ERROR_MESSAGE()
       ,@exErrorLine_b85bfc     = ERROR_LINE()
       ,@exErrorNumber_b85bfc   = ERROR_NUMBER()
       ,@exErrorSeverity_b85bfc = ERROR_SEVERITY()
       ,@exErrorState_b85bfc    = ERROR_STATE()
       ,@paramsXml_b85bfc = (SELECT
            'STRUCTURE SCRIPT FOR [CCSNAZ].[TCompAssmtCGDropDowns]' AS [Process]
        FOR XML PATH(N'Params'), ELEMENTS, TYPE);
 
    EXEC [CCSNAZ].[CTSP_Core_Common_RecordException]
        @ProcID        = @@PROCID
       ,@ErrorMessage  = @exErrorMessage_b85bfc
       ,@ErrorLine     = @exErrorLine_b85bfc
       ,@ErrorNumber   = @exErrorNumber_b85bfc
       ,@ErrorSeverity = @exErrorSeverity_b85bfc
       ,@ErrorState    = @exErrorState_b85bfc
       ,@Params        = @paramsXml_b85bfc;
    RAISERROR( N'Process [CCSNAZ].[TCompAssmtCGDropDowns] data completed with errors: %d: %s', 16, 1, @exErrorNumber_b85bfc, @exErrorMessage_b85bfc);
END CATCH

----#################### End Table generate output for : CCSNAZ.TCompAssmtCGDropDowns (8be18d/b85bfc) ####################
GO
