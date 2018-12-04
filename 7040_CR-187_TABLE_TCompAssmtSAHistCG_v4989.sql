----#################### Start table generate output for : CCSNAZ.TCompAssmtSAHistCG (933d21) - 7040_CR-187_TABLE_TCompAssmtSAHistCG_v4989 ####################
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'CCSNAZ')

	BEGIN

		EXEC ('CREATE SCHEMA [CCSNAZ] AUTHORIZATION [dbo]')

	END
SET NOCOUNT ON;
DECLARE @sqlCmd_053fc6 nvarchar(max);
DECLARE @exTranCount_053fc6 int;
DECLARE @paramsXml_053fc6 xml, @exErrorNumber_053fc6 int, @exErrorLine_053fc6 int, @exErrorSeverity_053fc6 int, @exErrorState_053fc6 int, @exErrorMessage_053fc6 nvarchar(max);
SET @exTranCount_053fc6 = @@TRANCOUNT;
BEGIN TRY
    IF @exTranCount_053fc6 = 0
        BEGIN TRANSACTION;
    ELSE
        SAVE TRANSACTION ScriptTableStruct_053fc6;
    --===========================================================================================================================================================
    --===========================================================================================================================================================
    IF NOT EXISTS ( SELECT 1 FROM [sys].[tables] WHERE [name] = N'TCompAssmtSAHistCG' AND [schema_id] = SCHEMA_ID( N'CCSNAZ' ) )
    BEGIN
        CREATE TABLE CCSNAZ.[TCompAssmtSAHistCG] ( [ID] int NOT NULL IDENTITY(1,1) );
    END
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'MasterKey' )
    BEGIN
        ALTER TABLE CCSNAZ.[TCompAssmtSAHistCG] ADD [MasterKey] int NULL;
        GOTO lb053fc6_ac2;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'MasterKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column MasterKey on table CCSNAZ.TCompAssmtSAHistCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb053fc6_ac2;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'MasterKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'MasterKey') ) )
    BEGIN
        GOTO lb053fc6_ac2;
    END
 
    ALTER TABLE CCSNAZ.[TCompAssmtSAHistCG] ALTER COLUMN [MasterKey] int NULL;
lb053fc6_ac2:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SATypeDesc' )
    BEGIN
        ALTER TABLE CCSNAZ.[TCompAssmtSAHistCG] ADD [SATypeDesc] int NULL;
        GOTO lb053fc6_ac3;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SATypeDesc') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column SATypeDesc on table CCSNAZ.TCompAssmtSAHistCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb053fc6_ac3;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SATypeDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SATypeDesc') ) )
    BEGIN
        GOTO lb053fc6_ac3;
    END
 
    ALTER TABLE CCSNAZ.[TCompAssmtSAHistCG] ALTER COLUMN [SATypeDesc] int NULL;
lb053fc6_ac3:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SAFirstUseDate' )
    BEGIN
        ALTER TABLE CCSNAZ.[TCompAssmtSAHistCG] ADD [SAFirstUseDate] datetime NULL;
        GOTO lb053fc6_ac4;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SAFirstUseDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column SAFirstUseDate on table CCSNAZ.TCompAssmtSAHistCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb053fc6_ac4;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SAFirstUseDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SAFirstUseDate') ) )
    BEGIN
        GOTO lb053fc6_ac4;
    END
 
    ALTER TABLE CCSNAZ.[TCompAssmtSAHistCG] ALTER COLUMN [SAFirstUseDate] datetime NULL;
lb053fc6_ac4:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SALastUseDate' )
    BEGIN
        ALTER TABLE CCSNAZ.[TCompAssmtSAHistCG] ADD [SALastUseDate] datetime NULL;
        GOTO lb053fc6_ac5;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SALastUseDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column SALastUseDate on table CCSNAZ.TCompAssmtSAHistCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb053fc6_ac5;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SALastUseDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SALastUseDate') ) )
    BEGIN
        GOTO lb053fc6_ac5;
    END
 
    ALTER TABLE CCSNAZ.[TCompAssmtSAHistCG] ALTER COLUMN [SALastUseDate] datetime NULL;
lb053fc6_ac5:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SAFirstUseAgeDesc' )
    BEGIN
        ALTER TABLE CCSNAZ.[TCompAssmtSAHistCG] ADD [SAFirstUseAgeDesc] varchar(50) NULL;
        GOTO lb053fc6_ac6;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SAFirstUseAgeDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column SAFirstUseAgeDesc on table CCSNAZ.TCompAssmtSAHistCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb053fc6_ac6;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SAFirstUseAgeDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SAFirstUseAgeDesc') ) )
    BEGIN
        RAISERROR( N'The extant column SAFirstUseAgeDesc on table CCSNAZ.TCompAssmtSAHistCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb053fc6_ac6;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SAFirstUseAgeDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SAFirstUseAgeDesc') ) )
    BEGIN
        GOTO lb053fc6_ac6;
    END
 
    ALTER TABLE CCSNAZ.[TCompAssmtSAHistCG] ALTER COLUMN [SAFirstUseAgeDesc] varchar(50) NULL;
lb053fc6_ac6:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SAAmountDesc' )
    BEGIN
        ALTER TABLE CCSNAZ.[TCompAssmtSAHistCG] ADD [SAAmountDesc] varchar(50) NULL;
        GOTO lb053fc6_ac7;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SAAmountDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column SAAmountDesc on table CCSNAZ.TCompAssmtSAHistCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb053fc6_ac7;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SAAmountDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SAAmountDesc') ) )
    BEGIN
        RAISERROR( N'The extant column SAAmountDesc on table CCSNAZ.TCompAssmtSAHistCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb053fc6_ac7;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SAAmountDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SAAmountDesc') ) )
    BEGIN
        GOTO lb053fc6_ac7;
    END
 
    ALTER TABLE CCSNAZ.[TCompAssmtSAHistCG] ALTER COLUMN [SAAmountDesc] varchar(50) NULL;
lb053fc6_ac7:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SAFrequencyDesc' )
    BEGIN
        ALTER TABLE CCSNAZ.[TCompAssmtSAHistCG] ADD [SAFrequencyDesc] int NULL;
        GOTO lb053fc6_ac8;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SAFrequencyDesc') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column SAFrequencyDesc on table CCSNAZ.TCompAssmtSAHistCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb053fc6_ac8;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SAFrequencyDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SAFrequencyDesc') ) )
    BEGIN
        GOTO lb053fc6_ac8;
    END
 
    ALTER TABLE CCSNAZ.[TCompAssmtSAHistCG] ALTER COLUMN [SAFrequencyDesc] int NULL;
lb053fc6_ac8:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SARouteDesc' )
    BEGIN
        ALTER TABLE CCSNAZ.[TCompAssmtSAHistCG] ADD [SARouteDesc] int NULL;
        GOTO lb053fc6_ac9;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SARouteDesc') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column SARouteDesc on table CCSNAZ.TCompAssmtSAHistCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb053fc6_ac9;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SARouteDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SARouteDesc') ) )
    BEGIN
        GOTO lb053fc6_ac9;
    END
 
    ALTER TABLE CCSNAZ.[TCompAssmtSAHistCG] ALTER COLUMN [SARouteDesc] int NULL;
lb053fc6_ac9:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SACurUseDesc' )
    BEGIN
        ALTER TABLE CCSNAZ.[TCompAssmtSAHistCG] ADD [SACurUseDesc] varchar(50) NULL;
        GOTO lb053fc6_ac10;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SACurUseDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column SACurUseDesc on table CCSNAZ.TCompAssmtSAHistCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb053fc6_ac10;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SACurUseDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SACurUseDesc') ) )
    BEGIN
        RAISERROR( N'The extant column SACurUseDesc on table CCSNAZ.TCompAssmtSAHistCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb053fc6_ac10;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SACurUseDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtSAHistCG', N'U' ) AND [name] = N'SACurUseDesc') ) )
    BEGIN
        GOTO lb053fc6_ac10;
    END
 
    ALTER TABLE CCSNAZ.[TCompAssmtSAHistCG] ALTER COLUMN [SACurUseDesc] varchar(50) NULL;
lb053fc6_ac10:
    DECLARE @KeyName_053fc6 nvarchar(max), @Clustering_053fc6 nvarchar(max);
    SELECT @KeyName_053fc6 = [kc].[name], @Clustering_053fc6 = [i].[type_desc]
    FROM [sys].[key_constraints] AS [kc]
    INNER JOIN [sys].[indexes] AS [i]
        ON [kc].[parent_object_id] = [i].[object_id]
       AND [kc].[unique_index_id]  = [i].[index_id]
       AND [kc].[type]             = N'PK'
    WHERE [kc].[parent_object_id] = OBJECT_ID( N'CCSNAZ.[TCompAssmtSAHistCG]', N'U' );
    IF ( ( @KeyName_053fc6 IS NULL AND @Clustering_053fc6 IS NULL )
      OR ( @KeyName_053fc6 <> N'PK_TCompAssmtSAHistCG' )
      OR ( @Clustering_053fc6 <> N'CLUSTERED' ) )
    BEGIN
        IF ( ( COALESCE( @KeyName_053fc6, N'' ) <> N'PK_TCompAssmtSAHistCG' )
          OR ( COALESCE( @Clustering_053fc6, N'' ) <> N'CLUSTERED' ) )
        BEGIN
            SELECT @sqlCmd_053fc6 = N'ALTER TABLE CCSNAZ.[TCompAssmtSAHistCG] DROP CONSTRAINT [' + @KeyName_053fc6 + N'];'
            EXEC [sp_executesql] @sqlCmd_053fc6;
        END
 
        ALTER TABLE CCSNAZ.[TCompAssmtSAHistCG]
        ADD CONSTRAINT [PK_TCompAssmtSAHistCG]
        PRIMARY KEY CLUSTERED (
            [ID] ASC
        );
    END
    --===========================================================================================================================================================
lbQuit_053fc6:
    RAISERROR( N'Process structure completed successfully', 0, 1 ) WITH NOWAIT;
    IF @exTranCount_053fc6 = 0
        COMMIT;
END TRY
BEGIN CATCH
    DECLARE @exXactState_053fc6 int;
    SELECT  @exXactState_053fc6 = XACT_STATE();
 
     -- Transaction Doomed
    IF @exXactState_053fc6 = -1
        ROLLBACK;
 
    -- Transaction started by this procedure
    IF @exXactState_053fc6 = 1 AND @exTranCount_053fc6 = 0 
        ROLLBACK;
 
    -- Transaction started before this procedure
    IF @exXactState_053fc6 = 1 AND @exTranCount_053fc6 > 0
        ROLLBACK TRANSACTION ScriptTableStruct_053fc6;
 
    SELECT 
        @exErrorMessage_053fc6  = ERROR_MESSAGE()
       ,@exErrorLine_053fc6     = ERROR_LINE()
       ,@exErrorNumber_053fc6   = ERROR_NUMBER()
       ,@exErrorSeverity_053fc6 = ERROR_SEVERITY()
       ,@exErrorState_053fc6    = ERROR_STATE()
       ,@paramsXml_053fc6 = (SELECT
            'STRUCTURE SCRIPT FOR CCSNAZ.[TCompAssmtSAHistCG]' AS [Process]
        FOR XML PATH(N'Params'), ELEMENTS, TYPE);
 
    EXEC CCSNAZ.[CTSP_Core_Common_RecordException]
        @ProcID        = @@PROCID
       ,@ErrorMessage  = @exErrorMessage_053fc6
       ,@ErrorLine     = @exErrorLine_053fc6
       ,@ErrorNumber   = @exErrorNumber_053fc6
       ,@ErrorSeverity = @exErrorSeverity_053fc6
       ,@ErrorState    = @exErrorState_053fc6
       ,@Params        = @paramsXml_053fc6;
    RAISERROR( N'Process CCSNAZ.[TCompAssmtSAHistCG] structure completed with errors: %d: %s', 16, 1, @exErrorNumber_053fc6, @exErrorMessage_053fc6);
END CATCH

----#################### End Table generate output for : CCSNAZ.TCompAssmtSAHistCG (053fc6) ####################
GO

