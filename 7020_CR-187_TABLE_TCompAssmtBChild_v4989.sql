----#################### Start table generate output for : CCSNAZ.TCompAssmtBChild (cb9a5c) - 7020_CR-187_TABLE_TCompAssmtBChild_v4989 ####################
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'CCSNAZ')

	BEGIN

		EXEC ('CREATE SCHEMA [CCSNAZ] AUTHORIZATION [dbo]')

	END
----#################### Start table generate output for : CCSNAZ.TCompAssmtBChild (407911) ####################
SET NOCOUNT ON;
DECLARE @sqlCmd_407911 nvarchar(max);
DECLARE @exTranCount_407911 int;
DECLARE @paramsXml_407911 xml, @exErrorNumber_407911 int, @exErrorLine_407911 int, @exErrorSeverity_407911 int, @exErrorState_407911 int, @exErrorMessage_407911 nvarchar(max);
SET @exTranCount_407911 = @@TRANCOUNT;
BEGIN TRY
    IF @exTranCount_407911 = 0
        BEGIN TRANSACTION;
    ELSE
        SAVE TRANSACTION ScriptTableStruct_407911;
    --===========================================================================================================================================================
    --===========================================================================================================================================================
    IF NOT EXISTS ( SELECT 1 FROM [sys].[tables] WHERE [name] = N'TCompAssmtBChild' AND [schema_id] = SCHEMA_ID( N'CCSNAZ' ) )
    BEGIN
        CREATE TABLE [CCSNAZ].[TCompAssmtBChild] ( [ID] int NOT NULL IDENTITY(1,1) );
    END
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'MasterKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtBChild] ADD [MasterKey] int NULL;
        GOTO lb407911_ac2;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'MasterKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column MasterKey on table CCSNAZ.TCompAssmtBChild is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb407911_ac2;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'MasterKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'MasterKey') ) )
    BEGIN
        GOTO lb407911_ac2;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtBChild] ALTER COLUMN [MasterKey] int NULL;
lb407911_ac2:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtBChldAgeDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtBChild] ADD [CmpAsmtBChldAgeDesc] varchar(50) NULL;
        GOTO lb407911_ac3;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtBChldAgeDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CmpAsmtBChldAgeDesc on table CCSNAZ.TCompAssmtBChild is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb407911_ac3;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtBChldAgeDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtBChldAgeDesc') ) )
    BEGIN
        RAISERROR( N'The extant column CmpAsmtBChldAgeDesc on table CCSNAZ.TCompAssmtBChild is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb407911_ac3;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtBChldAgeDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtBChldAgeDesc') ) )
    BEGIN
        GOTO lb407911_ac3;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtBChild] ALTER COLUMN [CmpAsmtBChldAgeDesc] varchar(50) NULL;
lb407911_ac3:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtBChldMagYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtBChild] ADD [CmpAsmtBChldMagYNKey] char(1) NULL;
        GOTO lb407911_ac4;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtBChldMagYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column CmpAsmtBChldMagYNKey on table CCSNAZ.TCompAssmtBChild is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb407911_ac4;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtBChldMagYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtBChldMagYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CmpAsmtBChldMagYNKey on table CCSNAZ.TCompAssmtBChild is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb407911_ac4;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtBChldMagYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtBChldMagYNKey') ) )
    BEGIN
        GOTO lb407911_ac4;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtBChild] ALTER COLUMN [CmpAsmtBChldMagYNKey] char(1) NULL;
lb407911_ac4:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtChldLivHomeYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtBChild] ADD [CmpAsmtChldLivHomeYNKey] char(1) NULL;
        GOTO lb407911_ac5;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtChldLivHomeYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column CmpAsmtChldLivHomeYNKey on table CCSNAZ.TCompAssmtBChild is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb407911_ac5;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtChldLivHomeYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtChldLivHomeYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CmpAsmtChldLivHomeYNKey on table CCSNAZ.TCompAssmtBChild is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb407911_ac5;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtChldLivHomeYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtChldLivHomeYNKey') ) )
    BEGIN
        GOTO lb407911_ac5;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtBChild] ALTER COLUMN [CmpAsmtChldLivHomeYNKey] char(1) NULL;
lb407911_ac5:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtRmvdHomeYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtBChild] ADD [CmpAsmtRmvdHomeYNKey] char(1) NULL;
        GOTO lb407911_ac6;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtRmvdHomeYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column CmpAsmtRmvdHomeYNKey on table CCSNAZ.TCompAssmtBChild is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb407911_ac6;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtRmvdHomeYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtRmvdHomeYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CmpAsmtRmvdHomeYNKey on table CCSNAZ.TCompAssmtBChild is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb407911_ac6;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtRmvdHomeYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtBChild', N'U' ) AND [name] = N'CmpAsmtRmvdHomeYNKey') ) )
    BEGIN
        GOTO lb407911_ac6;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtBChild] ALTER COLUMN [CmpAsmtRmvdHomeYNKey] char(1) NULL;
lb407911_ac6:
    DECLARE @KeyName_407911 nvarchar(max), @Clustering_407911 nvarchar(max);
    SELECT @KeyName_407911 = [kc].[name], @Clustering_407911 = [i].[type_desc]
    FROM [sys].[key_constraints] AS [kc]
    INNER JOIN [sys].[indexes] AS [i]
        ON [kc].[parent_object_id] = [i].[object_id]
       AND [kc].[unique_index_id]  = [i].[index_id]
       AND [kc].[type]             = N'PK'
    WHERE [kc].[parent_object_id] = OBJECT_ID( N'[CCSNAZ].[TCompAssmtBChild]', N'U' );
    IF ( ( @KeyName_407911 IS NULL AND @Clustering_407911 IS NULL )
      OR ( @KeyName_407911 <> N'PK_TCompAssmtBChild' )
      OR ( @Clustering_407911 <> N'CLUSTERED' ) )
    BEGIN
        IF ( ( COALESCE( @KeyName_407911, N'' ) <> N'PK_TCompAssmtBChild' )
          OR ( COALESCE( @Clustering_407911, N'' ) <> N'CLUSTERED' ) )
        BEGIN
            SELECT @sqlCmd_407911 = N'ALTER TABLE [CCSNAZ].[TCompAssmtBChild] DROP CONSTRAINT [' + @KeyName_407911 + N'];'
            EXEC [sp_executesql] @sqlCmd_407911;
        END
 
        ALTER TABLE [CCSNAZ].[TCompAssmtBChild]
        ADD CONSTRAINT [PK_TCompAssmtBChild]
        PRIMARY KEY CLUSTERED (
            [ID] ASC
        );
    END
    --===========================================================================================================================================================
lbQuit_407911:
    RAISERROR( N'Process structure completed successfully', 0, 1 ) WITH NOWAIT;
    IF @exTranCount_407911 = 0
        COMMIT;
END TRY
BEGIN CATCH
    DECLARE @exXactState_407911 int;
    SELECT  @exXactState_407911 = XACT_STATE();
 
     -- Transaction Doomed
    IF @exXactState_407911 = -1
        ROLLBACK;
 
    -- Transaction started by this procedure
    IF @exXactState_407911 = 1 AND @exTranCount_407911 = 0 
        ROLLBACK;
 
    -- Transaction started before this procedure
    IF @exXactState_407911 = 1 AND @exTranCount_407911 > 0
        ROLLBACK TRANSACTION ScriptTableStruct_407911;
 
    SELECT 
        @exErrorMessage_407911  = ERROR_MESSAGE()
       ,@exErrorLine_407911     = ERROR_LINE()
       ,@exErrorNumber_407911   = ERROR_NUMBER()
       ,@exErrorSeverity_407911 = ERROR_SEVERITY()
       ,@exErrorState_407911    = ERROR_STATE()
       ,@paramsXml_407911 = (SELECT
            'STRUCTURE SCRIPT FOR [CCSNAZ].[TCompAssmtBChild]' AS [Process]
        FOR XML PATH(N'Params'), ELEMENTS, TYPE);
 
    EXEC [CCSNAZ].[CTSP_Core_Common_RecordException]
        @ProcID        = @@PROCID
       ,@ErrorMessage  = @exErrorMessage_407911
       ,@ErrorLine     = @exErrorLine_407911
       ,@ErrorNumber   = @exErrorNumber_407911
       ,@ErrorSeverity = @exErrorSeverity_407911
       ,@ErrorState    = @exErrorState_407911
       ,@Params        = @paramsXml_407911;
    RAISERROR( N'Process [CCSNAZ].[TCompAssmtBChild] structure completed with errors: %d: %s', 16, 1, @exErrorNumber_407911, @exErrorMessage_407911);
END CATCH

----#################### End Table generate output for : CCSNAZ.TCompAssmtBChild (407911) ####################
GO
