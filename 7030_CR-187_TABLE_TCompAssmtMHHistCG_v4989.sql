----#################### Start table generate output for : CCSNAZ.TCompAssmtMHHistCG (aadeff) - 7030_CR-187_TABLE_TCompAssmtMHHistCG_v4989 ####################
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'CCSNAZ')

	BEGIN

		EXEC ('CREATE SCHEMA [CCSNAZ] AUTHORIZATION [dbo]')

	END
SET NOCOUNT ON;
DECLARE @sqlCmd_33ae7e nvarchar(max);
DECLARE @exTranCount_33ae7e int;
DECLARE @paramsXml_33ae7e xml, @exErrorNumber_33ae7e int, @exErrorLine_33ae7e int, @exErrorSeverity_33ae7e int, @exErrorState_33ae7e int, @exErrorMessage_33ae7e nvarchar(max);
SET @exTranCount_33ae7e = @@TRANCOUNT;
BEGIN TRY
    IF @exTranCount_33ae7e = 0
        BEGIN TRANSACTION;
    ELSE
        SAVE TRANSACTION ScriptTableStruct_33ae7e;
    --===========================================================================================================================================================
    --===========================================================================================================================================================
    IF NOT EXISTS ( SELECT 1 FROM [sys].[tables] WHERE [name] = N'TCompAssmtMHHistCG' AND [schema_id] = SCHEMA_ID( N'CCSNAZ' ) )
    BEGIN
        CREATE TABLE [CCSNAZ].[TCompAssmtMHHistCG] ( [ID] int NOT NULL IDENTITY(1,1) );
    END
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MasterKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtMHHistCG] ADD [MasterKey] int NULL;
        GOTO lb33ae7e_ac2;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MasterKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column MasterKey on table CCSNAZ.TCompAssmtMHHistCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb33ae7e_ac2;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MasterKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MasterKey') ) )
    BEGIN
        GOTO lb33ae7e_ac2;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtMHHistCG] ALTER COLUMN [MasterKey] int NULL;
lb33ae7e_ac2:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHTypeDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtMHHistCG] ADD [MHTypeDesc] varchar(50) NULL;
        GOTO lb33ae7e_ac3;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHTypeDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column MHTypeDesc on table CCSNAZ.TCompAssmtMHHistCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb33ae7e_ac3;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHTypeDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHTypeDesc') ) )
    BEGIN
        RAISERROR( N'The extant column MHTypeDesc on table CCSNAZ.TCompAssmtMHHistCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb33ae7e_ac3;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHTypeDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHTypeDesc') ) )
    BEGIN
        GOTO lb33ae7e_ac3;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtMHHistCG] ALTER COLUMN [MHTypeDesc] varchar(50) NULL;
lb33ae7e_ac3:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHWhereDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtMHHistCG] ADD [MHWhereDesc] varchar(50) NULL;
        GOTO lb33ae7e_ac4;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHWhereDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column MHWhereDesc on table CCSNAZ.TCompAssmtMHHistCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb33ae7e_ac4;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHWhereDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHWhereDesc') ) )
    BEGIN
        RAISERROR( N'The extant column MHWhereDesc on table CCSNAZ.TCompAssmtMHHistCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb33ae7e_ac4;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHWhereDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHWhereDesc') ) )
    BEGIN
        GOTO lb33ae7e_ac4;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtMHHistCG] ALTER COLUMN [MHWhereDesc] varchar(50) NULL;
lb33ae7e_ac4:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHWhenDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtMHHistCG] ADD [MHWhenDesc] varchar(50) NULL;
        GOTO lb33ae7e_ac5;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHWhenDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column MHWhenDesc on table CCSNAZ.TCompAssmtMHHistCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb33ae7e_ac5;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHWhenDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHWhenDesc') ) )
    BEGIN
        RAISERROR( N'The extant column MHWhenDesc on table CCSNAZ.TCompAssmtMHHistCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb33ae7e_ac5;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHWhenDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHWhenDesc') ) )
    BEGIN
        GOTO lb33ae7e_ac5;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtMHHistCG] ALTER COLUMN [MHWhenDesc] varchar(50) NULL;
lb33ae7e_ac5:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHWhyDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtMHHistCG] ADD [MHWhyDesc] varchar(50) NULL;
        GOTO lb33ae7e_ac6;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHWhyDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column MHWhyDesc on table CCSNAZ.TCompAssmtMHHistCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb33ae7e_ac6;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHWhyDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHWhyDesc') ) )
    BEGIN
        RAISERROR( N'The extant column MHWhyDesc on table CCSNAZ.TCompAssmtMHHistCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb33ae7e_ac6;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHWhyDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHWhyDesc') ) )
    BEGIN
        GOTO lb33ae7e_ac6;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtMHHistCG] ALTER COLUMN [MHWhyDesc] varchar(50) NULL;
lb33ae7e_ac6:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHFrequencyDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtMHHistCG] ADD [MHFrequencyDesc] varchar(50) NULL;
        GOTO lb33ae7e_ac7;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHFrequencyDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column MHFrequencyDesc on table CCSNAZ.TCompAssmtMHHistCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb33ae7e_ac7;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHFrequencyDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHFrequencyDesc') ) )
    BEGIN
        RAISERROR( N'The extant column MHFrequencyDesc on table CCSNAZ.TCompAssmtMHHistCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb33ae7e_ac7;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHFrequencyDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtMHHistCG', N'U' ) AND [name] = N'MHFrequencyDesc') ) )
    BEGIN
        GOTO lb33ae7e_ac7;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtMHHistCG] ALTER COLUMN [MHFrequencyDesc] varchar(50) NULL;
lb33ae7e_ac7:
    DECLARE @KeyName_33ae7e nvarchar(max), @Clustering_33ae7e nvarchar(max);
    SELECT @KeyName_33ae7e = [kc].[name], @Clustering_33ae7e = [i].[type_desc]
    FROM [sys].[key_constraints] AS [kc]
    INNER JOIN [sys].[indexes] AS [i]
        ON [kc].[parent_object_id] = [i].[object_id]
       AND [kc].[unique_index_id]  = [i].[index_id]
       AND [kc].[type]             = N'PK'
    WHERE [kc].[parent_object_id] = OBJECT_ID( N'[CCSNAZ].[TCompAssmtMHHistCG]', N'U' );
    IF ( ( @KeyName_33ae7e IS NULL AND @Clustering_33ae7e IS NULL )
      OR ( @KeyName_33ae7e <> N'PK_TCompAssmtMHHistCG' )
      OR ( @Clustering_33ae7e <> N'CLUSTERED' ) )
    BEGIN
        IF ( ( COALESCE( @KeyName_33ae7e, N'' ) <> N'PK_TCompAssmtMHHistCG' )
          OR ( COALESCE( @Clustering_33ae7e, N'' ) <> N'CLUSTERED' ) )
        BEGIN
            SELECT @sqlCmd_33ae7e = N'ALTER TABLE [CCSNAZ].[TCompAssmtMHHistCG] DROP CONSTRAINT [' + @KeyName_33ae7e + N'];'
            EXEC [sp_executesql] @sqlCmd_33ae7e;
        END
 
        ALTER TABLE [CCSNAZ].[TCompAssmtMHHistCG]
        ADD CONSTRAINT [PK_TCompAssmtMHHistCG]
        PRIMARY KEY CLUSTERED (
            [ID] ASC
        );
    END
    --===========================================================================================================================================================
lbQuit_33ae7e:
    RAISERROR( N'Process structure completed successfully', 0, 1 ) WITH NOWAIT;
    IF @exTranCount_33ae7e = 0
        COMMIT;
END TRY
BEGIN CATCH
    DECLARE @exXactState_33ae7e int;
    SELECT  @exXactState_33ae7e = XACT_STATE();
 
     -- Transaction Doomed
    IF @exXactState_33ae7e = -1
        ROLLBACK;
 
    -- Transaction started by this procedure
    IF @exXactState_33ae7e = 1 AND @exTranCount_33ae7e = 0 
        ROLLBACK;
 
    -- Transaction started before this procedure
    IF @exXactState_33ae7e = 1 AND @exTranCount_33ae7e > 0
        ROLLBACK TRANSACTION ScriptTableStruct_33ae7e;
 
    SELECT 
        @exErrorMessage_33ae7e  = ERROR_MESSAGE()
       ,@exErrorLine_33ae7e     = ERROR_LINE()
       ,@exErrorNumber_33ae7e   = ERROR_NUMBER()
       ,@exErrorSeverity_33ae7e = ERROR_SEVERITY()
       ,@exErrorState_33ae7e    = ERROR_STATE()
       ,@paramsXml_33ae7e = (SELECT
            'STRUCTURE SCRIPT FOR [CCSNAZ].[TCompAssmtMHHistCG]' AS [Process]
        FOR XML PATH(N'Params'), ELEMENTS, TYPE);
 
    EXEC [CCSNAZ].[CTSP_Core_Common_RecordException]
        @ProcID        = @@PROCID
       ,@ErrorMessage  = @exErrorMessage_33ae7e
       ,@ErrorLine     = @exErrorLine_33ae7e
       ,@ErrorNumber   = @exErrorNumber_33ae7e
       ,@ErrorSeverity = @exErrorSeverity_33ae7e
       ,@ErrorState    = @exErrorState_33ae7e
       ,@Params        = @paramsXml_33ae7e;
    RAISERROR( N'Process [CCSNAZ].[TCompAssmtMHHistCG] structure completed with errors: %d: %s', 16, 1, @exErrorNumber_33ae7e, @exErrorMessage_33ae7e);
END CATCH

----#################### End Table generate output for : CCSNAZ.TCompAssmtMHHistCG (33ae7e) ####################
GO
