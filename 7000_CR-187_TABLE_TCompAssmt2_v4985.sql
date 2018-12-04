----#################### Start table generate output for : dbo.TCompAssmt2 (2409f7) - 7000_CR-187_TABLE_TCompAssmt2_v4985 ####################

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'CCSNAZ')
	BEGIN
		EXEC ('CREATE SCHEMA [CCSNAZ] AUTHORIZATION [dbo]')
	END
SET NOCOUNT ON;
----#################### Start table generate output for : dbo.TCompAssmt2 (6467c6) ####################
DECLARE @sqlCmd_cc44ba nvarchar(max);
DECLARE @exTranCount_cc44ba int;
DECLARE @paramsXml_cc44ba xml, @exErrorNumber_cc44ba int, @exErrorLine_cc44ba int, @exErrorSeverity_cc44ba int, @exErrorState_cc44ba int, @exErrorMessage_cc44ba nvarchar(max);
SET @exTranCount_cc44ba = @@TRANCOUNT;
BEGIN TRY
    IF @exTranCount_cc44ba = 0
        BEGIN TRANSACTION;
    ELSE
        SAVE TRANSACTION ScriptTableStruct_cc44ba;
    --===========================================================================================================================================================
    --===========================================================================================================================================================
    IF NOT EXISTS ( SELECT 1 FROM [sys].[tables] WHERE [name] = N'TCompAssmt2' AND [schema_id] = SCHEMA_ID( N'CCSNAZ' ) )
    BEGIN
        CREATE TABLE [CCSNAZ].[TCompAssmt2] ( [ID] int NOT NULL IDENTITY(1,1) );
    END
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'ClientKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [ClientKey] int NULL;
        GOTO lbcc44ba_ac2;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'ClientKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ClientKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac2;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'ClientKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'ClientKey') ) )
    BEGIN
        GOTO lbcc44ba_ac2;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [ClientKey] int NULL;
lbcc44ba_ac2:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'EnrollmentKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [EnrollmentKey] int NULL;
        GOTO lbcc44ba_ac3;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'EnrollmentKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column EnrollmentKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac3;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'EnrollmentKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'EnrollmentKey') ) )
    BEGIN
        GOTO lbcc44ba_ac3;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [EnrollmentKey] int NULL;
lbcc44ba_ac3:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'PacketKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [PacketKey] int NULL;
        GOTO lbcc44ba_ac4;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'PacketKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column PacketKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac4;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'PacketKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'PacketKey') ) )
    BEGIN
        GOTO lbcc44ba_ac4;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [PacketKey] int NULL;
lbcc44ba_ac4:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'SavedDate' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [SavedDate] datetime NULL;
        GOTO lbcc44ba_ac5;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'SavedDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column SavedDate on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac5;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'SavedDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'SavedDate') ) )
    BEGIN
        GOTO lbcc44ba_ac5;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [SavedDate] datetime NULL;
lbcc44ba_ac5:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'HistoryChangeDate' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [HistoryChangeDate] datetime NULL;
        GOTO lbcc44ba_ac6;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'HistoryChangeDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column HistoryChangeDate on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac6;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'HistoryChangeDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'HistoryChangeDate') ) )
    BEGIN
        GOTO lbcc44ba_ac6;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [HistoryChangeDate] datetime NULL;
lbcc44ba_ac6:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeEuthymicChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDeEuthymicChk] tinyint NULL;
        GOTO lbcc44ba_ac7;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeEuthymicChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDeEuthymicChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac7;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeEuthymicChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeEuthymicChk') ) )
    BEGIN
        GOTO lbcc44ba_ac7;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDeEuthymicChk] tinyint NULL;
lbcc44ba_ac7:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeDysphoricChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDeDysphoricChk] tinyint NULL;
        GOTO lbcc44ba_ac8;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeDysphoricChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDeDysphoricChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac8;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeDysphoricChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeDysphoricChk') ) )
    BEGIN
        GOTO lbcc44ba_ac8;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDeDysphoricChk] tinyint NULL;
lbcc44ba_ac8:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeUpbeatChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDeUpbeatChk] tinyint NULL;
        GOTO lbcc44ba_ac9;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeUpbeatChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDeUpbeatChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac9;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeUpbeatChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeUpbeatChk') ) )
    BEGIN
        GOTO lbcc44ba_ac9;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDeUpbeatChk] tinyint NULL;
lbcc44ba_ac9:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeIrritableChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDeIrritableChk] tinyint NULL;
        GOTO lbcc44ba_ac10;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeIrritableChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDeIrritableChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac10;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeIrritableChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeIrritableChk') ) )
    BEGIN
        GOTO lbcc44ba_ac10;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDeIrritableChk] tinyint NULL;
lbcc44ba_ac10:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeAnxiousChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDeAnxiousChk] tinyint NULL;
        GOTO lbcc44ba_ac11;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeAnxiousChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDeAnxiousChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac11;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeAnxiousChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeAnxiousChk') ) )
    BEGIN
        GOTO lbcc44ba_ac11;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDeAnxiousChk] tinyint NULL;
lbcc44ba_ac11:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeAngryChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDeAngryChk] tinyint NULL;
        GOTO lbcc44ba_ac12;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeAngryChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDeAngryChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac12;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeAngryChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeAngryChk') ) )
    BEGIN
        GOTO lbcc44ba_ac12;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDeAngryChk] tinyint NULL;
lbcc44ba_ac12:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeEuphoricChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDeEuphoricChk] tinyint NULL;
        GOTO lbcc44ba_ac13;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeEuphoricChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDeEuphoricChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac13;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeEuphoricChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeEuphoricChk') ) )
    BEGIN
        GOTO lbcc44ba_ac13;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDeEuphoricChk] tinyint NULL;
lbcc44ba_ac13:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeFlatChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDeFlatChk] tinyint NULL;
        GOTO lbcc44ba_ac14;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeFlatChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDeFlatChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac14;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeFlatChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeFlatChk') ) )
    BEGIN
        GOTO lbcc44ba_ac14;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDeFlatChk] tinyint NULL;
lbcc44ba_ac14:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeConstrictChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDeConstrictChk] tinyint NULL;
        GOTO lbcc44ba_ac15;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeConstrictChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDeConstrictChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac15;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeConstrictChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeConstrictChk') ) )
    BEGIN
        GOTO lbcc44ba_ac15;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDeConstrictChk] tinyint NULL;
lbcc44ba_ac15:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeLabileChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDeLabileChk] tinyint NULL;
        GOTO lbcc44ba_ac16;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeLabileChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDeLabileChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac16;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeLabileChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeLabileChk') ) )
    BEGIN
        GOTO lbcc44ba_ac16;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDeLabileChk] tinyint NULL;
lbcc44ba_ac16:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeAppEyeChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDeAppEyeChk] tinyint NULL;
        GOTO lbcc44ba_ac17;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeAppEyeChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDeAppEyeChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac17;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeAppEyeChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeAppEyeChk') ) )
    BEGIN
        GOTO lbcc44ba_ac17;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDeAppEyeChk] tinyint NULL;
lbcc44ba_ac17:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeMinEyeChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDeMinEyeChk] tinyint NULL;
        GOTO lbcc44ba_ac18;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeMinEyeChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDeMinEyeChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac18;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeMinEyeChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeMinEyeChk') ) )
    BEGIN
        GOTO lbcc44ba_ac18;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDeMinEyeChk] tinyint NULL;
lbcc44ba_ac18:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDePoorEyeChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDePoorEyeChk] tinyint NULL;
        GOTO lbcc44ba_ac19;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDePoorEyeChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDePoorEyeChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac19;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDePoorEyeChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDePoorEyeChk') ) )
    BEGIN
        GOTO lbcc44ba_ac19;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDePoorEyeChk] tinyint NULL;
lbcc44ba_ac19:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeAdeqEyeChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDeAdeqEyeChk] tinyint NULL;
        GOTO lbcc44ba_ac20;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeAdeqEyeChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDeAdeqEyeChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac20;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeAdeqEyeChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeAdeqEyeChk') ) )
    BEGIN
        GOTO lbcc44ba_ac20;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDeAdeqEyeChk] tinyint NULL;
lbcc44ba_ac20:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeConstEyeChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDeConstEyeChk] tinyint NULL;
        GOTO lbcc44ba_ac21;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeConstEyeChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDeConstEyeChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac21;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeConstEyeChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeConstEyeChk') ) )
    BEGIN
        GOTO lbcc44ba_ac21;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDeConstEyeChk] tinyint NULL;
lbcc44ba_ac21:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeGoodCoopChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDeGoodCoopChk] tinyint NULL;
        GOTO lbcc44ba_ac22;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeGoodCoopChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDeGoodCoopChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac22;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeGoodCoopChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeGoodCoopChk') ) )
    BEGIN
        GOTO lbcc44ba_ac22;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDeGoodCoopChk] tinyint NULL;
lbcc44ba_ac22:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeResCoopChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDeResCoopChk] tinyint NULL;
        GOTO lbcc44ba_ac23;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeResCoopChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDeResCoopChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac23;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeResCoopChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeResCoopChk') ) )
    BEGIN
        GOTO lbcc44ba_ac23;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDeResCoopChk] tinyint NULL;
lbcc44ba_ac23:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeHostileChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDeHostileChk] tinyint NULL;
        GOTO lbcc44ba_ac24;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeHostileChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDeHostileChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac24;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeHostileChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeHostileChk') ) )
    BEGIN
        GOTO lbcc44ba_ac24;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDeHostileChk] tinyint NULL;
lbcc44ba_ac24:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeDefensiveChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDeDefensiveChk] tinyint NULL;
        GOTO lbcc44ba_ac25;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeDefensiveChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDeDefensiveChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac25;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeDefensiveChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeDefensiveChk') ) )
    BEGIN
        GOTO lbcc44ba_ac25;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDeDefensiveChk] tinyint NULL;
lbcc44ba_ac25:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeEvasiveChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDeEvasiveChk] tinyint NULL;
        GOTO lbcc44ba_ac26;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeEvasiveChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDeEvasiveChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac26;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeEvasiveChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeEvasiveChk') ) )
    BEGIN
        GOTO lbcc44ba_ac26;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDeEvasiveChk] tinyint NULL;
lbcc44ba_ac26:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeApatheticChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BDeApatheticChk] tinyint NULL;
        GOTO lbcc44ba_ac27;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeApatheticChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BDeApatheticChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac27;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeApatheticChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BDeApatheticChk') ) )
    BEGIN
        GOTO lbcc44ba_ac27;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BDeApatheticChk] tinyint NULL;
lbcc44ba_ac27:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpGoalChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BSpGoalChk] tinyint NULL;
        GOTO lbcc44ba_ac28;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpGoalChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BSpGoalChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac28;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpGoalChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpGoalChk') ) )
    BEGIN
        GOTO lbcc44ba_ac28;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BSpGoalChk] tinyint NULL;
lbcc44ba_ac28:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpUnintellChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BSpUnintellChk] tinyint NULL;
        GOTO lbcc44ba_ac29;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpUnintellChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BSpUnintellChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac29;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpUnintellChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpUnintellChk') ) )
    BEGIN
        GOTO lbcc44ba_ac29;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BSpUnintellChk] tinyint NULL;
lbcc44ba_ac29:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpMumbleChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BSpMumbleChk] tinyint NULL;
        GOTO lbcc44ba_ac30;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpMumbleChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BSpMumbleChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac30;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpMumbleChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpMumbleChk') ) )
    BEGIN
        GOTO lbcc44ba_ac30;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BSpMumbleChk] tinyint NULL;
lbcc44ba_ac30:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpSlurChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BSpSlurChk] tinyint NULL;
        GOTO lbcc44ba_ac31;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpSlurChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BSpSlurChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac31;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpSlurChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpSlurChk') ) )
    BEGIN
        GOTO lbcc44ba_ac31;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BSpSlurChk] tinyint NULL;
lbcc44ba_ac31:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpStutterChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BSpStutterChk] tinyint NULL;
        GOTO lbcc44ba_ac32;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpStutterChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BSpStutterChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac32;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpStutterChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpStutterChk') ) )
    BEGIN
        GOTO lbcc44ba_ac32;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BSpStutterChk] tinyint NULL;
lbcc44ba_ac32:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpNormToneChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BSpNormToneChk] tinyint NULL;
        GOTO lbcc44ba_ac33;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpNormToneChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BSpNormToneChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac33;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpNormToneChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpNormToneChk') ) )
    BEGIN
        GOTO lbcc44ba_ac33;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BSpNormToneChk] tinyint NULL;
lbcc44ba_ac33:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpSoftToneChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BSpSoftToneChk] tinyint NULL;
        GOTO lbcc44ba_ac34;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpSoftToneChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BSpSoftToneChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac34;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpSoftToneChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpSoftToneChk') ) )
    BEGIN
        GOTO lbcc44ba_ac34;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BSpSoftToneChk] tinyint NULL;
lbcc44ba_ac34:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpLoudToneChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BSpLoudToneChk] tinyint NULL;
        GOTO lbcc44ba_ac35;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpLoudToneChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BSpLoudToneChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac35;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpLoudToneChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpLoudToneChk') ) )
    BEGIN
        GOTO lbcc44ba_ac35;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BSpLoudToneChk] tinyint NULL;
lbcc44ba_ac35:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'bSpNormRateChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [bSpNormRateChk] tinyint NULL;
        GOTO lbcc44ba_ac36;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'bSpNormRateChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column bSpNormRateChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac36;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'bSpNormRateChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'bSpNormRateChk') ) )
    BEGIN
        GOTO lbcc44ba_ac36;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [bSpNormRateChk] tinyint NULL;
lbcc44ba_ac36:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpSlowRateChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BSpSlowRateChk] tinyint NULL;
        GOTO lbcc44ba_ac37;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpSlowRateChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BSpSlowRateChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac37;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpSlowRateChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpSlowRateChk') ) )
    BEGIN
        GOTO lbcc44ba_ac37;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BSpSlowRateChk] tinyint NULL;
lbcc44ba_ac37:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpVerboseChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BSpVerboseChk] tinyint NULL;
        GOTO lbcc44ba_ac38;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpVerboseChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BSpVerboseChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac38;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpVerboseChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpVerboseChk') ) )
    BEGIN
        GOTO lbcc44ba_ac38;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BSpVerboseChk] tinyint NULL;
lbcc44ba_ac38:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpPressuredChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BSpPressuredChk] tinyint NULL;
        GOTO lbcc44ba_ac39;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpPressuredChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BSpPressuredChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac39;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpPressuredChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpPressuredChk') ) )
    BEGIN
        GOTO lbcc44ba_ac39;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BSpPressuredChk] tinyint NULL;
lbcc44ba_ac39:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpNormLatChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BSpNormLatChk] tinyint NULL;
        GOTO lbcc44ba_ac40;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpNormLatChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BSpNormLatChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac40;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpNormLatChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpNormLatChk') ) )
    BEGIN
        GOTO lbcc44ba_ac40;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BSpNormLatChk] tinyint NULL;
lbcc44ba_ac40:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpDelLatChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BSpDelLatChk] tinyint NULL;
        GOTO lbcc44ba_ac41;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpDelLatChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BSpDelLatChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac41;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpDelLatChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpDelLatChk') ) )
    BEGIN
        GOTO lbcc44ba_ac41;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BSpDelLatChk] tinyint NULL;
lbcc44ba_ac41:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpShortLatChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BSpShortLatChk] tinyint NULL;
        GOTO lbcc44ba_ac42;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpShortLatChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BSpShortLatChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac42;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpShortLatChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpShortLatChk') ) )
    BEGIN
        GOTO lbcc44ba_ac42;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BSpShortLatChk] tinyint NULL;
lbcc44ba_ac42:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoUnremChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoUnremChk] tinyint NULL;
        GOTO lbcc44ba_ac43;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoUnremChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BCoUnremChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac43;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoUnremChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoUnremChk') ) )
    BEGIN
        GOTO lbcc44ba_ac43;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoUnremChk] tinyint NULL;
lbcc44ba_ac43:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoSuspChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoSuspChk] tinyint NULL;
        GOTO lbcc44ba_ac44;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoSuspChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BCoSuspChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac44;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoSuspChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoSuspChk') ) )
    BEGIN
        GOTO lbcc44ba_ac44;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoSuspChk] tinyint NULL;
lbcc44ba_ac44:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoNegChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoNegChk] tinyint NULL;
        GOTO lbcc44ba_ac45;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoNegChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BCoNegChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac45;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoNegChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoNegChk') ) )
    BEGIN
        GOTO lbcc44ba_ac45;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoNegChk] tinyint NULL;
lbcc44ba_ac45:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoConcreteChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoConcreteChk] tinyint NULL;
        GOTO lbcc44ba_ac46;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoConcreteChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BCoConcreteChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac46;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoConcreteChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoConcreteChk') ) )
    BEGIN
        GOTO lbcc44ba_ac46;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoConcreteChk] tinyint NULL;
lbcc44ba_ac46:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoLogChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoLogChk] tinyint NULL;
        GOTO lbcc44ba_ac47;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoLogChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BCoLogChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac47;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoLogChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoLogChk') ) )
    BEGIN
        GOTO lbcc44ba_ac47;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoLogChk] tinyint NULL;
lbcc44ba_ac47:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoTangChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoTangChk] tinyint NULL;
        GOTO lbcc44ba_ac48;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoTangChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BCoTangChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac48;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoTangChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoTangChk') ) )
    BEGIN
        GOTO lbcc44ba_ac48;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoTangChk] tinyint NULL;
lbcc44ba_ac48:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoCircChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoCircChk] tinyint NULL;
        GOTO lbcc44ba_ac49;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoCircChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BCoCircChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac49;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoCircChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoCircChk') ) )
    BEGIN
        GOTO lbcc44ba_ac49;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoCircChk] tinyint NULL;
lbcc44ba_ac49:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoVagChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoVagChk] tinyint NULL;
        GOTO lbcc44ba_ac50;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoVagChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BCoVagChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac50;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoVagChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoVagChk') ) )
    BEGIN
        GOTO lbcc44ba_ac50;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoVagChk] tinyint NULL;
lbcc44ba_ac50:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoDelYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoDelYNKey] char(1) NULL;
        GOTO lbcc44ba_ac51;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoDelYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column BCoDelYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac51;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoDelYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoDelYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column BCoDelYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac51;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoDelYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoDelYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac51;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoDelYNKey] char(1) NULL;
lbcc44ba_ac51:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoGrandChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoGrandChk] tinyint NULL;
        GOTO lbcc44ba_ac52;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoGrandChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BCoGrandChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac52;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoGrandChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoGrandChk') ) )
    BEGIN
        GOTO lbcc44ba_ac52;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoGrandChk] tinyint NULL;
lbcc44ba_ac52:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoPersecChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoPersecChk] tinyint NULL;
        GOTO lbcc44ba_ac53;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoPersecChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BCoPersecChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac53;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoPersecChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoPersecChk') ) )
    BEGIN
        GOTO lbcc44ba_ac53;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoPersecChk] tinyint NULL;
lbcc44ba_ac53:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoSomaticChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoSomaticChk] tinyint NULL;
        GOTO lbcc44ba_ac54;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoSomaticChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BCoSomaticChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac54;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoSomaticChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoSomaticChk') ) )
    BEGIN
        GOTO lbcc44ba_ac54;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoSomaticChk] tinyint NULL;
lbcc44ba_ac54:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoErotChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoErotChk] tinyint NULL;
        GOTO lbcc44ba_ac55;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoErotChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BCoErotChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac55;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoErotChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoErotChk') ) )
    BEGIN
        GOTO lbcc44ba_ac55;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoErotChk] tinyint NULL;
lbcc44ba_ac55:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoJealChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoJealChk] tinyint NULL;
        GOTO lbcc44ba_ac56;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoJealChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BCoJealChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac56;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoJealChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoJealChk') ) )
    BEGIN
        GOTO lbcc44ba_ac56;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoJealChk] tinyint NULL;
lbcc44ba_ac56:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoOtherChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoOtherChk] tinyint NULL;
        GOTO lbcc44ba_ac57;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoOtherChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BCoOtherChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac57;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoOtherChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoOtherChk') ) )
    BEGIN
        GOTO lbcc44ba_ac57;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoOtherChk] tinyint NULL;
lbcc44ba_ac57:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoPUnrChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoPUnrChk] tinyint NULL;
        GOTO lbcc44ba_ac58;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoPUnrChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BCoPUnrChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac58;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoPUnrChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoPUnrChk') ) )
    BEGIN
        GOTO lbcc44ba_ac58;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoPUnrChk] tinyint NULL;
lbcc44ba_ac58:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoPAudChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoPAudChk] tinyint NULL;
        GOTO lbcc44ba_ac59;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoPAudChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BCoPAudChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac59;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoPAudChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoPAudChk') ) )
    BEGIN
        GOTO lbcc44ba_ac59;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoPAudChk] tinyint NULL;
lbcc44ba_ac59:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoVisChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoVisChk] tinyint NULL;
        GOTO lbcc44ba_ac60;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoVisChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BCoVisChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac60;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoVisChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoVisChk') ) )
    BEGIN
        GOTO lbcc44ba_ac60;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoVisChk] tinyint NULL;
lbcc44ba_ac60:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoTactChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoTactChk] tinyint NULL;
        GOTO lbcc44ba_ac61;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoTactChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BCoTactChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac61;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoTactChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoTactChk') ) )
    BEGIN
        GOTO lbcc44ba_ac61;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoTactChk] tinyint NULL;
lbcc44ba_ac61:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoOlfChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoOlfChk] tinyint NULL;
        GOTO lbcc44ba_ac62;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoOlfChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BCoOlfChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac62;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoOlfChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoOlfChk') ) )
    BEGIN
        GOTO lbcc44ba_ac62;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoOlfChk] tinyint NULL;
lbcc44ba_ac62:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoGustChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BCoGustChk] tinyint NULL;
        GOTO lbcc44ba_ac63;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoGustChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BCoGustChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac63;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoGustChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BCoGustChk') ) )
    BEGIN
        GOTO lbcc44ba_ac63;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BCoGustChk] tinyint NULL;
lbcc44ba_ac63:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoNormGaitChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMoNormGaitChk] tinyint NULL;
        GOTO lbcc44ba_ac64;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoNormGaitChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMoNormGaitChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac64;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoNormGaitChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoNormGaitChk') ) )
    BEGIN
        GOTO lbcc44ba_ac64;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMoNormGaitChk] tinyint NULL;
lbcc44ba_ac64:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoStagGaitChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMoStagGaitChk] tinyint NULL;
        GOTO lbcc44ba_ac65;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoStagGaitChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMoStagGaitChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac65;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoStagGaitChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoStagGaitChk') ) )
    BEGIN
        GOTO lbcc44ba_ac65;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMoStagGaitChk] tinyint NULL;
lbcc44ba_ac65:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoShufChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMoShufChk] tinyint NULL;
        GOTO lbcc44ba_ac66;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoShufChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMoShufChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac66;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoShufChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoShufChk') ) )
    BEGIN
        GOTO lbcc44ba_ac66;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMoShufChk] tinyint NULL;
lbcc44ba_ac66:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoSlowChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMoSlowChk] tinyint NULL;
        GOTO lbcc44ba_ac67;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoSlowChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMoSlowChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac67;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoSlowChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoSlowChk') ) )
    BEGIN
        GOTO lbcc44ba_ac67;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMoSlowChk] tinyint NULL;
lbcc44ba_ac67:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoAwkChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMoAwkChk] tinyint NULL;
        GOTO lbcc44ba_ac68;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoAwkChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMoAwkChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac68;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoAwkChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoAwkChk') ) )
    BEGIN
        GOTO lbcc44ba_ac68;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMoAwkChk] tinyint NULL;
lbcc44ba_ac68:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoCaneChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMoCaneChk] tinyint NULL;
        GOTO lbcc44ba_ac69;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoCaneChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMoCaneChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac69;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoCaneChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoCaneChk') ) )
    BEGIN
        GOTO lbcc44ba_ac69;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMoCaneChk] tinyint NULL;
lbcc44ba_ac69:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoNormPostChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMoNormPostChk] tinyint NULL;
        GOTO lbcc44ba_ac70;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoNormPostChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMoNormPostChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac70;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoNormPostChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoNormPostChk') ) )
    BEGIN
        GOTO lbcc44ba_ac70;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMoNormPostChk] tinyint NULL;
lbcc44ba_ac70:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoRelPostChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMoRelPostChk] tinyint NULL;
        GOTO lbcc44ba_ac71;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoRelPostChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMoRelPostChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac71;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoRelPostChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoRelPostChk') ) )
    BEGIN
        GOTO lbcc44ba_ac71;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMoRelPostChk] tinyint NULL;
lbcc44ba_ac71:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoRigidChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMoRigidChk] tinyint NULL;
        GOTO lbcc44ba_ac72;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoRigidChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMoRigidChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac72;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoRigidChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoRigidChk') ) )
    BEGIN
        GOTO lbcc44ba_ac72;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMoRigidChk] tinyint NULL;
lbcc44ba_ac72:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoTensePChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMoTensePChk] tinyint NULL;
        GOTO lbcc44ba_ac73;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoTensePChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMoTensePChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac73;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoTensePChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoTensePChk') ) )
    BEGIN
        GOTO lbcc44ba_ac73;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMoTensePChk] tinyint NULL;
lbcc44ba_ac73:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoSlouchChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMoSlouchChk] tinyint NULL;
        GOTO lbcc44ba_ac74;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoSlouchChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMoSlouchChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac74;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoSlouchChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoSlouchChk') ) )
    BEGIN
        GOTO lbcc44ba_ac74;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMoSlouchChk] tinyint NULL;
lbcc44ba_ac74:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoErectChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMoErectChk] tinyint NULL;
        GOTO lbcc44ba_ac75;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoErectChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMoErectChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac75;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoErectChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoErectChk') ) )
    BEGIN
        GOTO lbcc44ba_ac75;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMoErectChk] tinyint NULL;
lbcc44ba_ac75:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoNormPsyChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMoNormPsyChk] tinyint NULL;
        GOTO lbcc44ba_ac76;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoNormPsyChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMoNormPsyChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac76;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoNormPsyChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoNormPsyChk') ) )
    BEGIN
        GOTO lbcc44ba_ac76;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMoNormPsyChk] tinyint NULL;
lbcc44ba_ac76:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoCalmChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMoCalmChk] tinyint NULL;
        GOTO lbcc44ba_ac77;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoCalmChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMoCalmChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac77;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoCalmChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoCalmChk') ) )
    BEGIN
        GOTO lbcc44ba_ac77;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMoCalmChk] tinyint NULL;
lbcc44ba_ac77:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoHypoChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMoHypoChk] tinyint NULL;
        GOTO lbcc44ba_ac78;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoHypoChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMoHypoChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac78;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoHypoChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoHypoChk') ) )
    BEGIN
        GOTO lbcc44ba_ac78;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMoHypoChk] tinyint NULL;
lbcc44ba_ac78:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoRestlessChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMoRestlessChk] tinyint NULL;
        GOTO lbcc44ba_ac79;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoRestlessChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMoRestlessChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac79;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoRestlessChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoRestlessChk') ) )
    BEGIN
        GOTO lbcc44ba_ac79;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMoRestlessChk] tinyint NULL;
lbcc44ba_ac79:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoHyperChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMoHyperChk] tinyint NULL;
        GOTO lbcc44ba_ac80;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoHyperChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMoHyperChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac80;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoHyperChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoHyperChk') ) )
    BEGIN
        GOTO lbcc44ba_ac80;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMoHyperChk] tinyint NULL;
lbcc44ba_ac80:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoAgitChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMoAgitChk] tinyint NULL;
        GOTO lbcc44ba_ac81;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoAgitChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMoAgitChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac81;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoAgitChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMoAgitChk') ) )
    BEGIN
        GOTO lbcc44ba_ac81;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMoAgitChk] tinyint NULL;
lbcc44ba_ac81:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaNoneChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMaNoneChk] tinyint NULL;
        GOTO lbcc44ba_ac82;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaNoneChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMaNoneChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac82;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaNoneChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaNoneChk') ) )
    BEGIN
        GOTO lbcc44ba_ac82;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMaNoneChk] tinyint NULL;
lbcc44ba_ac82:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaTicsChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMaTicsChk] tinyint NULL;
        GOTO lbcc44ba_ac83;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaTicsChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMaTicsChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac83;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaTicsChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaTicsChk') ) )
    BEGIN
        GOTO lbcc44ba_ac83;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMaTicsChk] tinyint NULL;
lbcc44ba_ac83:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaTremChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMaTremChk] tinyint NULL;
        GOTO lbcc44ba_ac84;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaTremChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMaTremChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac84;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaTremChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaTremChk') ) )
    BEGIN
        GOTO lbcc44ba_ac84;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMaTremChk] tinyint NULL;
lbcc44ba_ac84:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaRockChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMaRockChk] tinyint NULL;
        GOTO lbcc44ba_ac85;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaRockChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMaRockChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac85;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaRockChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaRockChk') ) )
    BEGIN
        GOTO lbcc44ba_ac85;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMaRockChk] tinyint NULL;
lbcc44ba_ac85:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaPickChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMaPickChk] tinyint NULL;
        GOTO lbcc44ba_ac86;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaPickChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMaPickChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac86;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaPickChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaPickChk') ) )
    BEGIN
        GOTO lbcc44ba_ac86;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMaPickChk] tinyint NULL;
lbcc44ba_ac86:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaGrimChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMaGrimChk] tinyint NULL;
        GOTO lbcc44ba_ac87;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaGrimChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMaGrimChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac87;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaGrimChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMaGrimChk') ) )
    BEGIN
        GOTO lbcc44ba_ac87;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMaGrimChk] tinyint NULL;
lbcc44ba_ac87:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSPersonYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMSPersonYNKey] char(1) NULL;
        GOTO lbcc44ba_ac88;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSPersonYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column BMSPersonYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac88;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSPersonYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSPersonYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column BMSPersonYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac88;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSPersonYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSPersonYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac88;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMSPersonYNKey] char(1) NULL;
lbcc44ba_ac88:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSPlaceYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMSPlaceYNKey] char(1) NULL;
        GOTO lbcc44ba_ac89;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSPlaceYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column BMSPlaceYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac89;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSPlaceYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSPlaceYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column BMSPlaceYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac89;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSPlaceYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSPlaceYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac89;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMSPlaceYNKey] char(1) NULL;
lbcc44ba_ac89:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSTimeYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMSTimeYNKey] char(1) NULL;
        GOTO lbcc44ba_ac90;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSTimeYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column BMSTimeYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac90;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSTimeYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSTimeYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column BMSTimeYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac90;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSTimeYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSTimeYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac90;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMSTimeYNKey] char(1) NULL;
lbcc44ba_ac90:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSSituationYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMSSituationYNKey] char(1) NULL;
        GOTO lbcc44ba_ac91;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSSituationYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column BMSSituationYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac91;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSSituationYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSSituationYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column BMSSituationYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac91;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSSituationYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSSituationYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac91;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMSSituationYNKey] char(1) NULL;
lbcc44ba_ac91:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSImmedYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMSImmedYNKey] char(1) NULL;
        GOTO lbcc44ba_ac92;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSImmedYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column BMSImmedYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac92;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSImmedYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSImmedYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column BMSImmedYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac92;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSImmedYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSImmedYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac92;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMSImmedYNKey] char(1) NULL;
lbcc44ba_ac92:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSRecentYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMSRecentYNKey] char(1) NULL;
        GOTO lbcc44ba_ac93;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSRecentYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column BMSRecentYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac93;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSRecentYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSRecentYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column BMSRecentYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac93;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSRecentYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSRecentYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac93;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMSRecentYNKey] char(1) NULL;
lbcc44ba_ac93:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSRemoteYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMSRemoteYNKey] char(1) NULL;
        GOTO lbcc44ba_ac94;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSRemoteYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column BMSRemoteYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac94;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSRemoteYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSRemoteYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column BMSRemoteYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac94;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSRemoteYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSRemoteYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac94;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMSRemoteYNKey] char(1) NULL;
lbcc44ba_ac94:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSConcKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMSConcKey] int NULL;
        GOTO lbcc44ba_ac95;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSConcKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMSConcKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac95;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSConcKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSConcKey') ) )
    BEGIN
        GOTO lbcc44ba_ac95;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMSConcKey] int NULL;
lbcc44ba_ac95:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSIntelKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMSIntelKey] int NULL;
        GOTO lbcc44ba_ac96;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSIntelKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMSIntelKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac96;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSIntelKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSIntelKey') ) )
    BEGIN
        GOTO lbcc44ba_ac96;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMSIntelKey] int NULL;
lbcc44ba_ac96:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSJudgKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMSJudgKey] int NULL;
        GOTO lbcc44ba_ac97;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSJudgKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMSJudgKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac97;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSJudgKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSJudgKey') ) )
    BEGIN
        GOTO lbcc44ba_ac97;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMSJudgKey] int NULL;
lbcc44ba_ac97:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSInsightKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMSInsightKey] int NULL;
        GOTO lbcc44ba_ac98;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSInsightKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMSInsightKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac98;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSInsightKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSInsightKey') ) )
    BEGIN
        GOTO lbcc44ba_ac98;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMSInsightKey] int NULL;
lbcc44ba_ac98:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSAbsKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BMSAbsKey] int NULL;
        GOTO lbcc44ba_ac99;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSAbsKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BMSAbsKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac99;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSAbsKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BMSAbsKey') ) )
    BEGIN
        GOTO lbcc44ba_ac99;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BMSAbsKey] int NULL;
lbcc44ba_ac99:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RACurSuicideYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RACurSuicideYNKey] char(1) NULL;
        GOTO lbcc44ba_ac100;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RACurSuicideYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RACurSuicideYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac100;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RACurSuicideYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RACurSuicideYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RACurSuicideYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac100;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RACurSuicideYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RACurSuicideYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac100;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RACurSuicideYNKey] char(1) NULL;
lbcc44ba_ac100:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAFleetChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAFleetChk] tinyint NULL;
        GOTO lbcc44ba_ac101;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAFleetChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column RAFleetChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac101;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAFleetChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAFleetChk') ) )
    BEGIN
        GOTO lbcc44ba_ac101;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAFleetChk] tinyint NULL;
lbcc44ba_ac101:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAPeriodChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAPeriodChk] tinyint NULL;
        GOTO lbcc44ba_ac102;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAPeriodChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column RAPeriodChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac102;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAPeriodChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAPeriodChk') ) )
    BEGIN
        GOTO lbcc44ba_ac102;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAPeriodChk] tinyint NULL;
lbcc44ba_ac102:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAConsChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAConsChk] tinyint NULL;
        GOTO lbcc44ba_ac103;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAConsChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column RAConsChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac103;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAConsChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAConsChk') ) )
    BEGIN
        GOTO lbcc44ba_ac103;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAConsChk] tinyint NULL;
lbcc44ba_ac103:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAUrgChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAUrgChk] tinyint NULL;
        GOTO lbcc44ba_ac104;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAUrgChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column RAUrgChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac104;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAUrgChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAUrgChk') ) )
    BEGIN
        GOTO lbcc44ba_ac104;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAUrgChk] tinyint NULL;
lbcc44ba_ac104:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RANAChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RANAChk] tinyint NULL;
        GOTO lbcc44ba_ac105;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RANAChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column RANAChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac105;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RANAChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RANAChk') ) )
    BEGIN
        GOTO lbcc44ba_ac105;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RANAChk] tinyint NULL;
lbcc44ba_ac105:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFPriorSuicYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFPriorSuicYNKey] char(1) NULL;
        GOTO lbcc44ba_ac106;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFPriorSuicYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFPriorSuicYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac106;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFPriorSuicYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFPriorSuicYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFPriorSuicYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac106;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFPriorSuicYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFPriorSuicYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac106;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFPriorSuicYNKey] char(1) NULL;
lbcc44ba_ac106:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRepSuicYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFRepSuicYNKey] char(1) NULL;
        GOTO lbcc44ba_ac107;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRepSuicYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFRepSuicYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac107;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRepSuicYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRepSuicYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFRepSuicYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac107;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRepSuicYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRepSuicYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac107;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFRepSuicYNKey] char(1) NULL;
lbcc44ba_ac107:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFPlanSuicideKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFPlanSuicideKey] char(1) NULL;
        GOTO lbcc44ba_ac108;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFPlanSuicideKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFPlanSuicideKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac108;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFPlanSuicideKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFPlanSuicideKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFPlanSuicideKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac108;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFPlanSuicideKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFPlanSuicideKey') ) )
    BEGIN
        GOTO lbcc44ba_ac108;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFPlanSuicideKey] char(1) NULL;
lbcc44ba_ac108:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFAccessYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFAccessYNKey] char(1) NULL;
        GOTO lbcc44ba_ac109;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFAccessYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFAccessYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac109;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFAccessYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFAccessYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFAccessYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac109;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFAccessYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFAccessYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac109;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFAccessYNKey] char(1) NULL;
lbcc44ba_ac109:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSubAbuseYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFSubAbuseYNKey] char(1) NULL;
        GOTO lbcc44ba_ac110;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSubAbuseYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFSubAbuseYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac110;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSubAbuseYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSubAbuseYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFSubAbuseYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac110;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSubAbuseYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSubAbuseYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac110;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFSubAbuseYNKey] char(1) NULL;
lbcc44ba_ac110:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSelfAbYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFSelfAbYNKey] char(1) NULL;
        GOTO lbcc44ba_ac111;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSelfAbYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFSelfAbYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac111;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSelfAbYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSelfAbYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFSelfAbYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac111;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSelfAbYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSelfAbYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac111;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFSelfAbYNKey] char(1) NULL;
lbcc44ba_ac111:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFLossesYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFLossesYNKey] char(1) NULL;
        GOTO lbcc44ba_ac112;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFLossesYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFLossesYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac112;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFLossesYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFLossesYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFLossesYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac112;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFLossesYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFLossesYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac112;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFLossesYNKey] char(1) NULL;
lbcc44ba_ac112:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFBehavYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFBehavYNKey] char(1) NULL;
        GOTO lbcc44ba_ac113;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFBehavYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFBehavYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac113;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFBehavYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFBehavYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFBehavYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac113;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFBehavYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFBehavYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac113;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFBehavYNKey] char(1) NULL;
lbcc44ba_ac113:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFPsychosisYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFPsychosisYNKey] char(1) NULL;
        GOTO lbcc44ba_ac114;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFPsychosisYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFPsychosisYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac114;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFPsychosisYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFPsychosisYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFPsychosisYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac114;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFPsychosisYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFPsychosisYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac114;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFPsychosisYNKey] char(1) NULL;
lbcc44ba_ac114:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFFamSuicYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFFamSuicYNKey] char(1) NULL;
        GOTO lbcc44ba_ac115;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFFamSuicYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFFamSuicYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac115;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFFamSuicYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFFamSuicYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFFamSuicYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac115;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFFamSuicYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFFamSuicYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac115;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFFamSuicYNKey] char(1) NULL;
lbcc44ba_ac115:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFFriendSuicYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFFriendSuicYNKey] char(1) NULL;
        GOTO lbcc44ba_ac116;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFFriendSuicYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFFriendSuicYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac116;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFFriendSuicYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFFriendSuicYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFFriendSuicYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac116;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFFriendSuicYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFFriendSuicYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac116;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFFriendSuicYNKey] char(1) NULL;
lbcc44ba_ac116:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFTerminalYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFTerminalYNKey] char(1) NULL;
        GOTO lbcc44ba_ac117;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFTerminalYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFTerminalYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac117;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFTerminalYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFTerminalYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFTerminalYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac117;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFTerminalYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFTerminalYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac117;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFTerminalYNKey] char(1) NULL;
lbcc44ba_ac117:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFStressorsYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFStressorsYNKey] char(1) NULL;
        GOTO lbcc44ba_ac118;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFStressorsYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFStressorsYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac118;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFStressorsYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFStressorsYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFStressorsYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac118;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFStressorsYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFStressorsYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac118;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFStressorsYNKey] char(1) NULL;
lbcc44ba_ac118:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFStressorsDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFStressorsDesc] varchar(50) NULL;
        GOTO lbcc44ba_ac119;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFStressorsDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column RFStressorsDesc on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac119;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFStressorsDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFStressorsDesc') ) )
    BEGIN
        RAISERROR( N'The extant column RFStressorsDesc on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac119;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFStressorsDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFStressorsDesc') ) )
    BEGIN
        GOTO lbcc44ba_ac119;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFStressorsDesc] varchar(50) NULL;
lbcc44ba_ac119:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRescueYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFRescueYNKey] char(1) NULL;
        GOTO lbcc44ba_ac120;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRescueYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFRescueYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac120;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRescueYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRescueYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFRescueYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac120;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRescueYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRescueYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac120;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFRescueYNKey] char(1) NULL;
lbcc44ba_ac120:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFNoSubAbYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFNoSubAbYNKey] char(1) NULL;
        GOTO lbcc44ba_ac121;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFNoSubAbYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFNoSubAbYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac121;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFNoSubAbYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFNoSubAbYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFNoSubAbYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac121;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFNoSubAbYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFNoSubAbYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac121;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFNoSubAbYNKey] char(1) NULL;
lbcc44ba_ac121:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRepAttYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFRepAttYNKey] char(1) NULL;
        GOTO lbcc44ba_ac122;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRepAttYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFRepAttYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac122;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRepAttYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRepAttYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFRepAttYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac122;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRepAttYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRepAttYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac122;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFRepAttYNKey] char(1) NULL;
lbcc44ba_ac122:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFLowRiskYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFLowRiskYNKey] char(1) NULL;
        GOTO lbcc44ba_ac123;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFLowRiskYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFLowRiskYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac123;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFLowRiskYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFLowRiskYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFLowRiskYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac123;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFLowRiskYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFLowRiskYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac123;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFLowRiskYNKey] char(1) NULL;
lbcc44ba_ac123:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSupportsYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFSupportsYNKey] char(1) NULL;
        GOTO lbcc44ba_ac124;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSupportsYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFSupportsYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac124;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSupportsYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSupportsYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFSupportsYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac124;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSupportsYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSupportsYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac124;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFSupportsYNKey] char(1) NULL;
lbcc44ba_ac124:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSupportsDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFSupportsDesc] varchar(50) NULL;
        GOTO lbcc44ba_ac125;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSupportsDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column RFSupportsDesc on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac125;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSupportsDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSupportsDesc') ) )
    BEGIN
        RAISERROR( N'The extant column RFSupportsDesc on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac125;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSupportsDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSupportsDesc') ) )
    BEGIN
        GOTO lbcc44ba_ac125;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFSupportsDesc] varchar(50) NULL;
lbcc44ba_ac125:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSpiritYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFSpiritYNKey] char(1) NULL;
        GOTO lbcc44ba_ac126;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSpiritYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFSpiritYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac126;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSpiritYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSpiritYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFSpiritYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac126;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSpiritYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSpiritYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac126;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFSpiritYNKey] char(1) NULL;
lbcc44ba_ac126:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSpiritDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFSpiritDesc] varchar(50) NULL;
        GOTO lbcc44ba_ac127;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSpiritDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column RFSpiritDesc on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac127;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSpiritDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSpiritDesc') ) )
    BEGIN
        RAISERROR( N'The extant column RFSpiritDesc on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac127;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSpiritDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFSpiritDesc') ) )
    BEGIN
        GOTO lbcc44ba_ac127;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFSpiritDesc] varchar(50) NULL;
lbcc44ba_ac127:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFprohibYNkey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFprohibYNkey] char(1) NULL;
        GOTO lbcc44ba_ac128;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFprohibYNkey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFprohibYNkey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac128;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFprohibYNkey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFprohibYNkey') ) )
    BEGIN
        RAISERROR( N'The extant column RFprohibYNkey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac128;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFprohibYNkey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFprohibYNkey') ) )
    BEGIN
        GOTO lbcc44ba_ac128;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFprohibYNkey] char(1) NULL;
lbcc44ba_ac128:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFFearConsYNey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFFearConsYNey] char(1) NULL;
        GOTO lbcc44ba_ac129;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFFearConsYNey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFFearConsYNey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac129;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFFearConsYNey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFFearConsYNey') ) )
    BEGIN
        RAISERROR( N'The extant column RFFearConsYNey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac129;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFFearConsYNey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFFearConsYNey') ) )
    BEGIN
        GOTO lbcc44ba_ac129;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFFearConsYNey] char(1) NULL;
lbcc44ba_ac129:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFEngIntYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFEngIntYNKey] char(1) NULL;
        GOTO lbcc44ba_ac130;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFEngIntYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFEngIntYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac130;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFEngIntYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFEngIntYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFEngIntYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac130;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFEngIntYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFEngIntYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac130;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFEngIntYNKey] char(1) NULL;
lbcc44ba_ac130:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFKeepSafeYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFKeepSafeYNKey] char(1) NULL;
        GOTO lbcc44ba_ac131;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFKeepSafeYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFKeepSafeYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac131;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFKeepSafeYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFKeepSafeYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFKeepSafeYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac131;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFKeepSafeYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFKeepSafeYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac131;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFKeepSafeYNKey] char(1) NULL;
lbcc44ba_ac131:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFChronicYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFChronicYNKey] char(1) NULL;
        GOTO lbcc44ba_ac132;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFChronicYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RFChronicYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac132;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFChronicYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFChronicYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RFChronicYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac132;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFChronicYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFChronicYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac132;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFChronicYNKey] char(1) NULL;
lbcc44ba_ac132:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFDangerKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFDangerKey] int NULL;
        GOTO lbcc44ba_ac133;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFDangerKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column RFDangerKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac133;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFDangerKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFDangerKey') ) )
    BEGIN
        GOTO lbcc44ba_ac133;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFDangerKey] int NULL;
lbcc44ba_ac133:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAKillingYNKey] char(1) NULL;
        GOTO lbcc44ba_ac134;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RAKillingYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac134;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RAKillingYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac134;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac134;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAKillingYNKey] char(1) NULL;
lbcc44ba_ac134:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillFleetChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAKillFleetChk] tinyint NULL;
        GOTO lbcc44ba_ac135;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillFleetChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column RAKillFleetChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac135;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillFleetChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillFleetChk') ) )
    BEGIN
        GOTO lbcc44ba_ac135;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAKillFleetChk] tinyint NULL;
lbcc44ba_ac135:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillPeriodChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAKillPeriodChk] tinyint NULL;
        GOTO lbcc44ba_ac136;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillPeriodChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column RAKillPeriodChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac136;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillPeriodChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillPeriodChk') ) )
    BEGIN
        GOTO lbcc44ba_ac136;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAKillPeriodChk] tinyint NULL;
lbcc44ba_ac136:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillConstChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAKillConstChk] tinyint NULL;
        GOTO lbcc44ba_ac137;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillConstChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column RAKillConstChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac137;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillConstChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillConstChk') ) )
    BEGIN
        GOTO lbcc44ba_ac137;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAKillConstChk] tinyint NULL;
lbcc44ba_ac137:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillSevereChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAKillSevereChk] tinyint NULL;
        GOTO lbcc44ba_ac138;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillSevereChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column RAKillSevereChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac138;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillSevereChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillSevereChk') ) )
    BEGIN
        GOTO lbcc44ba_ac138;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAKillSevereChk] tinyint NULL;
lbcc44ba_ac138:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillNAChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAKillNAChk] tinyint NULL;
        GOTO lbcc44ba_ac139;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillNAChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column RAKillNAChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac139;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillNAChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillNAChk') ) )
    BEGIN
        GOTO lbcc44ba_ac139;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAKillNAChk] tinyint NULL;
lbcc44ba_ac139:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAFireYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAFireYNKey] char(1) NULL;
        GOTO lbcc44ba_ac140;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAFireYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RAFireYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac140;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAFireYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAFireYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RAFireYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac140;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAFireYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAFireYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac140;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAFireYNKey] char(1) NULL;
lbcc44ba_ac140:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAAngryYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAAngryYNKey] char(1) NULL;
        GOTO lbcc44ba_ac141;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAAngryYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RAAngryYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac141;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAAngryYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAAngryYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RAAngryYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac141;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAAngryYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAAngryYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac141;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAAngryYNKey] char(1) NULL;
lbcc44ba_ac141:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAArrestsYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAArrestsYNKey] char(1) NULL;
        GOTO lbcc44ba_ac142;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAArrestsYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RAArrestsYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac142;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAArrestsYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAArrestsYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RAArrestsYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac142;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAArrestsYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAArrestsYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac142;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAArrestsYNKey] char(1) NULL;
lbcc44ba_ac142:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAHospYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAHospYNKey] char(1) NULL;
        GOTO lbcc44ba_ac143;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAHospYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RAHospYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac143;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAHospYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAHospYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RAHospYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac143;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAHospYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAHospYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac143;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAHospYNKey] char(1) NULL;
lbcc44ba_ac143:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAWeaponYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAWeaponYNKey] char(1) NULL;
        GOTO lbcc44ba_ac144;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAWeaponYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RAWeaponYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac144;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAWeaponYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAWeaponYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RAWeaponYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac144;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAWeaponYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAWeaponYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac144;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAWeaponYNKey] char(1) NULL;
lbcc44ba_ac144:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RASubstanceYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RASubstanceYNKey] char(1) NULL;
        GOTO lbcc44ba_ac145;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RASubstanceYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RASubstanceYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac145;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RASubstanceYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RASubstanceYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RASubstanceYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac145;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RASubstanceYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RASubstanceYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac145;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RASubstanceYNKey] char(1) NULL;
lbcc44ba_ac145:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAPsychYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAPsychYNKey] char(1) NULL;
        GOTO lbcc44ba_ac146;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAPsychYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RAPsychYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac146;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAPsychYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAPsychYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RAPsychYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac146;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAPsychYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAPsychYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac146;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAPsychYNKey] char(1) NULL;
lbcc44ba_ac146:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAAbusedYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAAbusedYNKey] char(1) NULL;
        GOTO lbcc44ba_ac147;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAAbusedYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RAAbusedYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac147;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAAbusedYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAAbusedYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RAAbusedYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac147;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAAbusedYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAAbusedYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac147;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAAbusedYNKey] char(1) NULL;
lbcc44ba_ac147:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RABulliedYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RABulliedYNKey] char(1) NULL;
        GOTO lbcc44ba_ac148;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RABulliedYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RABulliedYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac148;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RABulliedYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RABulliedYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RABulliedYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac148;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RABulliedYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RABulliedYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac148;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RABulliedYNKey] char(1) NULL;
lbcc44ba_ac148:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAMistreatYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAMistreatYNKey] char(1) NULL;
        GOTO lbcc44ba_ac149;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAMistreatYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RAMistreatYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac149;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAMistreatYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAMistreatYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RAMistreatYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac149;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAMistreatYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAMistreatYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac149;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAMistreatYNKey] char(1) NULL;
lbcc44ba_ac149:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RARevengeYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RARevengeYNKey] char(1) NULL;
        GOTO lbcc44ba_ac150;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RARevengeYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RARevengeYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac150;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RARevengeYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RARevengeYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RARevengeYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac150;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RARevengeYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RARevengeYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac150;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RARevengeYNKey] char(1) NULL;
lbcc44ba_ac150:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAStressorsYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAStressorsYNKey] char(1) NULL;
        GOTO lbcc44ba_ac151;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAStressorsYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RAStressorsYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac151;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAStressorsYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAStressorsYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RAStressorsYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac151;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAStressorsYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAStressorsYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac151;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAStressorsYNKey] char(1) NULL;
lbcc44ba_ac151:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RACPainYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RACPainYNKey] char(1) NULL;
        GOTO lbcc44ba_ac152;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RACPainYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RACPainYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac152;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RACPainYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RACPainYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RACPainYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac152;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RACPainYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RACPainYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac152;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RACPainYNKey] char(1) NULL;
lbcc44ba_ac152:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RANoViolentYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RANoViolentYNKey] char(1) NULL;
        GOTO lbcc44ba_ac153;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RANoViolentYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RANoViolentYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac153;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RANoViolentYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RANoViolentYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RANoViolentYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac153;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RANoViolentYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RANoViolentYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac153;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RANoViolentYNKey] char(1) NULL;
lbcc44ba_ac153:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RASTabilizedYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RASTabilizedYNKey] char(1) NULL;
        GOTO lbcc44ba_ac154;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RASTabilizedYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RASTabilizedYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac154;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RASTabilizedYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RASTabilizedYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RASTabilizedYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac154;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RASTabilizedYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RASTabilizedYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac154;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RASTabilizedYNKey] char(1) NULL;
lbcc44ba_ac154:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAImpulseYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAImpulseYNKey] char(1) NULL;
        GOTO lbcc44ba_ac155;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAImpulseYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RAImpulseYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac155;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAImpulseYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAImpulseYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RAImpulseYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac155;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAImpulseYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAImpulseYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac155;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAImpulseYNKey] char(1) NULL;
lbcc44ba_ac155:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAEmpathyYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAEmpathyYNKey] char(1) NULL;
        GOTO lbcc44ba_ac156;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAEmpathyYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RAEmpathyYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac156;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAEmpathyYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAEmpathyYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RAEmpathyYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac156;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAEmpathyYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAEmpathyYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac156;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAEmpathyYNKey] char(1) NULL;
lbcc44ba_ac156:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RARemorseYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RARemorseYNKey] char(1) NULL;
        GOTO lbcc44ba_ac157;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RARemorseYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RARemorseYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac157;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RARemorseYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RARemorseYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RARemorseYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac157;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RARemorseYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RARemorseYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac157;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RARemorseYNKey] char(1) NULL;
lbcc44ba_ac157:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAEnvironYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAEnvironYNKey] char(1) NULL;
        GOTO lbcc44ba_ac158;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAEnvironYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RAEnvironYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac158;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAEnvironYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAEnvironYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RAEnvironYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac158;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAEnvironYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAEnvironYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac158;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAEnvironYNKey] char(1) NULL;
lbcc44ba_ac158:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAConsequencesYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAConsequencesYNKey] char(1) NULL;
        GOTO lbcc44ba_ac159;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAConsequencesYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RAConsequencesYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac159;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAConsequencesYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAConsequencesYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RAConsequencesYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac159;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAConsequencesYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAConsequencesYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac159;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAConsequencesYNKey] char(1) NULL;
lbcc44ba_ac159:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAProhibYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAProhibYNKey] char(1) NULL;
        GOTO lbcc44ba_ac160;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAProhibYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RAProhibYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac160;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAProhibYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAProhibYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RAProhibYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac160;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAProhibYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAProhibYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac160;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAProhibYNKey] char(1) NULL;
lbcc44ba_ac160:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RADangerKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RADangerKey] int NULL;
        GOTO lbcc44ba_ac161;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RADangerKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column RADangerKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac161;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RADangerKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RADangerKey') ) )
    BEGIN
        GOTO lbcc44ba_ac161;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RADangerKey] int NULL;
lbcc44ba_ac161:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RADangerExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RADangerExp] text NULL;
        GOTO lbcc44ba_ac162;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RADangerExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column RADangerExp on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac162;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RADangerExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RADangerExp') ) )
    BEGIN
        GOTO lbcc44ba_ac162;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RADangerExp] text NULL;
lbcc44ba_ac162:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RADutyExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RADutyExp] text NULL;
        GOTO lbcc44ba_ac163;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RADutyExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column RADutyExp on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac163;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RADutyExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RADutyExp') ) )
    BEGIN
        GOTO lbcc44ba_ac163;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RADutyExp] text NULL;
lbcc44ba_ac163:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BAddBeObExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BAddBeObExp] text NULL;
        GOTO lbcc44ba_ac164;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BAddBeObExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column BAddBeObExp on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac164;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BAddBeObExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BAddBeObExp') ) )
    BEGIN
        GOTO lbcc44ba_ac164;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BAddBeObExp] text NULL;
lbcc44ba_ac164:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RACStressDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RACStressDesc] varchar(50) NULL;
        GOTO lbcc44ba_ac165;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RACStressDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column RACStressDesc on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac165;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RACStressDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RACStressDesc') ) )
    BEGIN
        RAISERROR( N'The extant column RACStressDesc on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac165;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RACStressDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RACStressDesc') ) )
    BEGIN
        GOTO lbcc44ba_ac165;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RACStressDesc] varchar(50) NULL;
lbcc44ba_ac165:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'MasterKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [MasterKey] int NULL;
        GOTO lbcc44ba_ac166;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'MasterKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column MasterKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac166;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'MasterKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'MasterKey') ) )
    BEGIN
        GOTO lbcc44ba_ac166;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [MasterKey] int NULL;
lbcc44ba_ac166:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'MSECommentExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [MSECommentExp] text NULL;
        GOTO lbcc44ba_ac167;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'MSECommentExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column MSECommentExp on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac167;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'MSECommentExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'MSECommentExp') ) )
    BEGIN
        GOTO lbcc44ba_ac167;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [MSECommentExp] text NULL;
lbcc44ba_ac167:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRatingExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RFRatingExp] text NULL;
        GOTO lbcc44ba_ac168;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRatingExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column RFRatingExp on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac168;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRatingExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RFRatingExp') ) )
    BEGIN
        GOTO lbcc44ba_ac168;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RFRatingExp] text NULL;
lbcc44ba_ac168:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpClearChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [BSpClearChk] tinyint NULL;
        GOTO lbcc44ba_ac169;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpClearChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BSpClearChk on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac169;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpClearChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'BSpClearChk') ) )
    BEGIN
        GOTO lbcc44ba_ac169;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [BSpClearChk] tinyint NULL;
lbcc44ba_ac169:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'DelusionsDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [DelusionsDesc] varchar(50) NULL;
        GOTO lbcc44ba_ac170;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'DelusionsDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column DelusionsDesc on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac170;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'DelusionsDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'DelusionsDesc') ) )
    BEGIN
        RAISERROR( N'The extant column DelusionsDesc on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac170;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'DelusionsDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'DelusionsDesc') ) )
    BEGIN
        GOTO lbcc44ba_ac170;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [DelusionsDesc] varchar(50) NULL;
lbcc44ba_ac170:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAIdeationKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAIdeationKey] int NULL;
        GOTO lbcc44ba_ac171;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAIdeationKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column RAIdeationKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac171;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAIdeationKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAIdeationKey') ) )
    BEGIN
        GOTO lbcc44ba_ac171;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAIdeationKey] int NULL;
lbcc44ba_ac171:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAIdeationUrgencyYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAIdeationUrgencyYNKey] char(1) NULL;
        GOTO lbcc44ba_ac172;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAIdeationUrgencyYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RAIdeationUrgencyYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac172;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAIdeationUrgencyYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAIdeationUrgencyYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RAIdeationUrgencyYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac172;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAIdeationUrgencyYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAIdeationUrgencyYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac172;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAIdeationUrgencyYNKey] char(1) NULL;
lbcc44ba_ac172:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAIdeationSeverityYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAIdeationSeverityYNKey] char(1) NULL;
        GOTO lbcc44ba_ac173;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAIdeationSeverityYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RAIdeationSeverityYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac173;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAIdeationSeverityYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAIdeationSeverityYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RAIdeationSeverityYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac173;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAIdeationSeverityYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAIdeationSeverityYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac173;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAIdeationSeverityYNKey] char(1) NULL;
lbcc44ba_ac173:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingIdeationKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAKillingIdeationKey] int NULL;
        GOTO lbcc44ba_ac174;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingIdeationKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column RAKillingIdeationKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac174;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingIdeationKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingIdeationKey') ) )
    BEGIN
        GOTO lbcc44ba_ac174;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAKillingIdeationKey] int NULL;
lbcc44ba_ac174:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingUrgencyYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAKillingUrgencyYNKey] char(1) NULL;
        GOTO lbcc44ba_ac175;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingUrgencyYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RAKillingUrgencyYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac175;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingUrgencyYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingUrgencyYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RAKillingUrgencyYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac175;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingUrgencyYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingUrgencyYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac175;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAKillingUrgencyYNKey] char(1) NULL;
lbcc44ba_ac175:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingSeverityYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RAKillingSeverityYNKey] char(1) NULL;
        GOTO lbcc44ba_ac176;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingSeverityYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column RAKillingSeverityYNKey on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac176;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingSeverityYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingSeverityYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column RAKillingSeverityYNKey on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac176;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingSeverityYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RAKillingSeverityYNKey') ) )
    BEGIN
        GOTO lbcc44ba_ac176;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RAKillingSeverityYNKey] char(1) NULL;
lbcc44ba_ac176:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RASubstanceDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RASubstanceDesc] varchar(50) NULL;
        GOTO lbcc44ba_ac177;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RASubstanceDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column RASubstanceDesc on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac177;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RASubstanceDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RASubstanceDesc') ) )
    BEGIN
        RAISERROR( N'The extant column RASubstanceDesc on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac177;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RASubstanceDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RASubstanceDesc') ) )
    BEGIN
        GOTO lbcc44ba_ac177;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RASubstanceDesc] varchar(50) NULL;
lbcc44ba_ac177:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'PersonsPresentExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [PersonsPresentExp] text NULL;
        GOTO lbcc44ba_ac178;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'PersonsPresentExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column PersonsPresentExp on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac178;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'PersonsPresentExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'PersonsPresentExp') ) )
    BEGIN
        GOTO lbcc44ba_ac178;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [PersonsPresentExp] text NULL;
lbcc44ba_ac178:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RefSourceOtherDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [RefSourceOtherDesc] varchar(50) NULL;
        GOTO lbcc44ba_ac179;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RefSourceOtherDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column RefSourceOtherDesc on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac179;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RefSourceOtherDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RefSourceOtherDesc') ) )
    BEGIN
        RAISERROR( N'The extant column RefSourceOtherDesc on table CCSNAZ.TCompAssmt2 is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac179;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RefSourceOtherDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'RefSourceOtherDesc') ) )
    BEGIN
        GOTO lbcc44ba_ac179;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [RefSourceOtherDesc] varchar(50) NULL;
lbcc44ba_ac179:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'ClinFormExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [ClinFormExp] text NULL;
        GOTO lbcc44ba_ac180;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'ClinFormExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column ClinFormExp on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac180;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'ClinFormExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'ClinFormExp') ) )
    BEGIN
        GOTO lbcc44ba_ac180;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [ClinFormExp] text NULL;
lbcc44ba_ac180:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'StartTime' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [StartTime] datetime NULL;
        GOTO lbcc44ba_ac181;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'StartTime') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column StartTime on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac181;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'StartTime') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'StartTime') ) )
    BEGIN
        GOTO lbcc44ba_ac181;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [StartTime] datetime NULL;
lbcc44ba_ac181:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'EndTime' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmt2] ADD [EndTime] datetime NULL;
        GOTO lbcc44ba_ac182;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'EndTime') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column EndTime on table CCSNAZ.TCompAssmt2 is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbcc44ba_ac182;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'EndTime') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmt2', N'U' ) AND [name] = N'EndTime') ) )
    BEGIN
        GOTO lbcc44ba_ac182;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmt2] ALTER COLUMN [EndTime] datetime NULL;
lbcc44ba_ac182:
    DECLARE @KeyName_cc44ba nvarchar(max), @Clustering_cc44ba nvarchar(max);
    SELECT @KeyName_cc44ba = [kc].[name], @Clustering_cc44ba = [i].[type_desc]
    FROM [sys].[key_constraints] AS [kc]
    INNER JOIN [sys].[indexes] AS [i]
        ON [kc].[parent_object_id] = [i].[object_id]
       AND [kc].[unique_index_id]  = [i].[index_id]
       AND [kc].[type]             = N'PK'
    WHERE [kc].[parent_object_id] = OBJECT_ID( N'[CCSNAZ].[TCompAssmt2]', N'U' );
    IF ( ( @KeyName_cc44ba IS NULL AND @Clustering_cc44ba IS NULL )
      OR ( @KeyName_cc44ba <> N'PK_TCompAssmt2' )
      OR ( @Clustering_cc44ba <> N'CLUSTERED' ) )
    BEGIN
        IF ( ( COALESCE( @KeyName_cc44ba, N'' ) <> N'PK_TCompAssmt2' )
          OR ( COALESCE( @Clustering_cc44ba, N'' ) <> N'CLUSTERED' ) )
        BEGIN
            SELECT @sqlCmd_cc44ba = N'ALTER TABLE [CCSNAZ].[TCompAssmt2] DROP CONSTRAINT [' + @KeyName_cc44ba + N'];'
            EXEC [sp_executesql] @sqlCmd_cc44ba;
        END
 
        ALTER TABLE [CCSNAZ].[TCompAssmt2]
        ADD CONSTRAINT [PK_TCompAssmt2]
        PRIMARY KEY CLUSTERED (
            [ID] ASC
        );
    END
    --===========================================================================================================================================================
lbQuit_cc44ba:
    RAISERROR( N'Process structure completed successfully', 0, 1 ) WITH NOWAIT;
    IF @exTranCount_cc44ba = 0
        COMMIT;
END TRY
BEGIN CATCH
    DECLARE @exXactState_cc44ba int;
    SELECT  @exXactState_cc44ba = XACT_STATE();
 
     -- Transaction Doomed
    IF @exXactState_cc44ba = -1
        ROLLBACK;
 
    -- Transaction started by this procedure
    IF @exXactState_cc44ba = 1 AND @exTranCount_cc44ba = 0 
        ROLLBACK;
 
    -- Transaction started before this procedure
    IF @exXactState_cc44ba = 1 AND @exTranCount_cc44ba > 0
        ROLLBACK TRANSACTION ScriptTableStruct_cc44ba;
 
    SELECT 
        @exErrorMessage_cc44ba  = ERROR_MESSAGE()
       ,@exErrorLine_cc44ba     = ERROR_LINE()
       ,@exErrorNumber_cc44ba   = ERROR_NUMBER()
       ,@exErrorSeverity_cc44ba = ERROR_SEVERITY()
       ,@exErrorState_cc44ba    = ERROR_STATE()
       ,@paramsXml_cc44ba = (SELECT
            'STRUCTURE SCRIPT FOR [CCSNAZ].[TCompAssmt2]' AS [Process]
        FOR XML PATH(N'Params'), ELEMENTS, TYPE);
 
    EXEC [dbo].[CTSP_Core_Common_RecordException]
        @ProcID        = @@PROCID
       ,@ErrorMessage  = @exErrorMessage_cc44ba
       ,@ErrorLine     = @exErrorLine_cc44ba
       ,@ErrorNumber   = @exErrorNumber_cc44ba
       ,@ErrorSeverity = @exErrorSeverity_cc44ba
       ,@ErrorState    = @exErrorState_cc44ba
       ,@Params        = @paramsXml_cc44ba;
    RAISERROR( N'Process [CCSNAZ].[TCompAssmt2] structure completed with errors: %d: %s', 16, 1, @exErrorNumber_cc44ba, @exErrorMessage_cc44ba);
END CATCH

----#################### End Table generate output for : CCSNAZ.TCompAssmt2 (cc44ba) ####################
GO
