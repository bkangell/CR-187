----#################### Start table generate output for : CCSNAZ.TCompAssmtCGDropDowns (c0864a) - 7070_CR-187_TABLE_TCompAssmtCGDropDowns_v4989 ####################
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'CCSNAZ')

	BEGIN

		EXEC ('CREATE SCHEMA [CCSNAZ] AUTHORIZATION [dbo]')

	END
SET NOCOUNT ON;
DECLARE @sqlCmd_8a0937 nvarchar(max);
DECLARE @exTranCount_8a0937 int;
DECLARE @paramsXml_8a0937 xml, @exErrorNumber_8a0937 int, @exErrorLine_8a0937 int, @exErrorSeverity_8a0937 int, @exErrorState_8a0937 int, @exErrorMessage_8a0937 nvarchar(max);
SET @exTranCount_8a0937 = @@TRANCOUNT;
BEGIN TRY
    IF @exTranCount_8a0937 = 0
        BEGIN TRANSACTION;
    ELSE
        SAVE TRANSACTION ScriptTableStruct_8a0937;
    --===========================================================================================================================================================
    --===========================================================================================================================================================
    IF NOT EXISTS ( SELECT 1 FROM [sys].[tables] WHERE [name] = N'TCompAssmtCGDropDowns' AND [schema_id] = SCHEMA_ID( N'CCSNAZ' ) )
    BEGIN
        CREATE TABLE [CCSNAZ].[TCompAssmtCGDropDowns] ( [ID] int NOT NULL IDENTITY(1,1) );
    END
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'Description' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtCGDropDowns] ADD [Description] varchar(50) NULL;
        GOTO lb8a0937_ac2;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'Description') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column Description on table CCSNAZ.TCompAssmtCGDropDowns is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb8a0937_ac2;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'Description') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'Description') ) )
    BEGIN
        RAISERROR( N'The extant column Description on table CCSNAZ.TCompAssmtCGDropDowns is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb8a0937_ac2;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'Description') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'Description') ) )
    BEGIN
        GOTO lb8a0937_ac2;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtCGDropDowns] ALTER COLUMN [Description] varchar(50) NULL;
lb8a0937_ac2:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'EffectiveDate' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtCGDropDowns] ADD [EffectiveDate] datetime NULL;
        GOTO lb8a0937_ac3;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'EffectiveDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column EffectiveDate on table CCSNAZ.TCompAssmtCGDropDowns is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb8a0937_ac3;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'EffectiveDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'EffectiveDate') ) )
    BEGIN
        GOTO lb8a0937_ac3;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtCGDropDowns] ALTER COLUMN [EffectiveDate] datetime NULL;
lb8a0937_ac3:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'ExpirationDate' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtCGDropDowns] ADD [ExpirationDate] datetime NULL;
        GOTO lb8a0937_ac4;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'ExpirationDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column ExpirationDate on table CCSNAZ.TCompAssmtCGDropDowns is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb8a0937_ac4;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'ExpirationDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'ExpirationDate') ) )
    BEGIN
        GOTO lb8a0937_ac4;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtCGDropDowns] ALTER COLUMN [ExpirationDate] datetime NULL;
lb8a0937_ac4:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'DisplayOrder' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtCGDropDowns] ADD [DisplayOrder] int NULL;
        GOTO lb8a0937_ac5;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'DisplayOrder') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column DisplayOrder on table CCSNAZ.TCompAssmtCGDropDowns is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb8a0937_ac5;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'DisplayOrder') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'DisplayOrder') ) )
    BEGIN
        GOTO lb8a0937_ac5;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtCGDropDowns] ALTER COLUMN [DisplayOrder] int NULL;
lb8a0937_ac5:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'DropDown' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtCGDropDowns] ADD [DropDown] varchar(5) NULL;
        GOTO lb8a0937_ac6;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'DropDown') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column DropDown on table CCSNAZ.TCompAssmtCGDropDowns is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb8a0937_ac6;
    END
 
    IF( ( 5 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'DropDown') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'DropDown') ) )
    BEGIN
        RAISERROR( N'The extant column DropDown on table CCSNAZ.TCompAssmtCGDropDowns is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb8a0937_ac6;
    END
 
    IF( (    5 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'DropDown') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'DropDown') ) )
    BEGIN
        GOTO lb8a0937_ac6;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtCGDropDowns] ALTER COLUMN [DropDown] varchar(5) NULL;
lb8a0937_ac6:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'TriggerEvent' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtCGDropDowns] ADD [TriggerEvent] tinyint NULL;
        GOTO lb8a0937_ac7;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'TriggerEvent') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column TriggerEvent on table CCSNAZ.TCompAssmtCGDropDowns is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb8a0937_ac7;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'TriggerEvent') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCGDropDowns', N'U' ) AND [name] = N'TriggerEvent') ) )
    BEGIN
        GOTO lb8a0937_ac7;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtCGDropDowns] ALTER COLUMN [TriggerEvent] tinyint NULL;
lb8a0937_ac7:
    DECLARE @KeyName_8a0937 nvarchar(max), @Clustering_8a0937 nvarchar(max);
    SELECT @KeyName_8a0937 = [kc].[name], @Clustering_8a0937 = [i].[type_desc]
    FROM [sys].[key_constraints] AS [kc]
    INNER JOIN [sys].[indexes] AS [i]
        ON [kc].[parent_object_id] = [i].[object_id]
       AND [kc].[unique_index_id]  = [i].[index_id]
       AND [kc].[type]             = N'PK'
    WHERE [kc].[parent_object_id] = OBJECT_ID( N'[CCSNAZ].[TCompAssmtCGDropDowns]', N'U' );
    IF ( ( @KeyName_8a0937 IS NULL AND @Clustering_8a0937 IS NULL )
      OR ( @KeyName_8a0937 <> N'PK_TCompAssmtCGDropDowns' )
      OR ( @Clustering_8a0937 <> N'CLUSTERED' ) )
    BEGIN
        IF ( ( COALESCE( @KeyName_8a0937, N'' ) <> N'PK_TCompAssmtCGDropDowns' )
          OR ( COALESCE( @Clustering_8a0937, N'' ) <> N'CLUSTERED' ) )
        BEGIN
            SELECT @sqlCmd_8a0937 = N'ALTER TABLE [CCSNAZ].[TCompAssmtCGDropDowns] DROP CONSTRAINT [' + @KeyName_8a0937 + N'];'
            EXEC [sp_executesql] @sqlCmd_8a0937;
        END
 
        ALTER TABLE [CCSNAZ].[TCompAssmtCGDropDowns]
        ADD CONSTRAINT [PK_TCompAssmtCGDropDowns]
        PRIMARY KEY CLUSTERED (
            [ID] ASC
        );
    END
    --===========================================================================================================================================================
lbQuit_8a0937:
    RAISERROR( N'Process structure completed successfully', 0, 1 ) WITH NOWAIT;
    IF @exTranCount_8a0937 = 0
        COMMIT;
END TRY
BEGIN CATCH
    DECLARE @exXactState_8a0937 int;
    SELECT  @exXactState_8a0937 = XACT_STATE();
 
     -- Transaction Doomed
    IF @exXactState_8a0937 = -1
        ROLLBACK;
 
    -- Transaction started by this procedure
    IF @exXactState_8a0937 = 1 AND @exTranCount_8a0937 = 0 
        ROLLBACK;
 
    -- Transaction started before this procedure
    IF @exXactState_8a0937 = 1 AND @exTranCount_8a0937 > 0
        ROLLBACK TRANSACTION ScriptTableStruct_8a0937;
 
    SELECT 
        @exErrorMessage_8a0937  = ERROR_MESSAGE()
       ,@exErrorLine_8a0937     = ERROR_LINE()
       ,@exErrorNumber_8a0937   = ERROR_NUMBER()
       ,@exErrorSeverity_8a0937 = ERROR_SEVERITY()
       ,@exErrorState_8a0937    = ERROR_STATE()
       ,@paramsXml_8a0937 = (SELECT
            'STRUCTURE SCRIPT FOR [CCSNAZ].[TCompAssmtCGDropDowns]' AS [Process]
        FOR XML PATH(N'Params'), ELEMENTS, TYPE);
 
    EXEC [CCSNAZ].[CTSP_Core_Common_RecordException]
        @ProcID        = @@PROCID
       ,@ErrorMessage  = @exErrorMessage_8a0937
       ,@ErrorLine     = @exErrorLine_8a0937
       ,@ErrorNumber   = @exErrorNumber_8a0937
       ,@ErrorSeverity = @exErrorSeverity_8a0937
       ,@ErrorState    = @exErrorState_8a0937
       ,@Params        = @paramsXml_8a0937;
    RAISERROR( N'Process [CCSNAZ].[TCompAssmtCGDropDowns] structure completed with errors: %d: %s', 16, 1, @exErrorNumber_8a0937, @exErrorMessage_8a0937);
END CATCH
----#################### End Table generate output for : CCSNAZ.TCompAssmtCGDropDowns (8a0937) ####################

GO
