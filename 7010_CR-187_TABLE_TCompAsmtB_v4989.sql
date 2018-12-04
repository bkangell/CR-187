----#################### Start table generate output for : CCSNAZ.TCompAsmtB (a01a02) - 7010_CR-187_TABLE_TCompAsmtB_v4989 ####################
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'CCSNAZ')

	BEGIN

		EXEC ('CREATE SCHEMA [CCSNAZ] AUTHORIZATION [dbo]')

	END
----#################### Start table generate output for : CCSNAZ.TCompAssmtB (d4b3f2) ####################
SET NOCOUNT ON;
DECLARE @sqlCmd_d4b3f2 nvarchar(max);
DECLARE @exTranCount_d4b3f2 int;
DECLARE @paramsXml_d4b3f2 xml, @exErrorNumber_d4b3f2 int, @exErrorLine_d4b3f2 int, @exErrorSeverity_d4b3f2 int, @exErrorState_d4b3f2 int, @exErrorMessage_d4b3f2 nvarchar(max);
SET @exTranCount_d4b3f2 = @@TRANCOUNT;
BEGIN TRY
    IF @exTranCount_d4b3f2 = 0
        BEGIN TRANSACTION;
    ELSE
        SAVE TRANSACTION ScriptTableStruct_d4b3f2;
    --===========================================================================================================================================================
    --===========================================================================================================================================================
    IF NOT EXISTS ( SELECT 1 FROM [sys].[tables] WHERE [name] = N'TCompAssmtB' AND [schema_id] = SCHEMA_ID( N'CCSNAZ' ) )
    BEGIN
        CREATE TABLE [CCSNAZ].[TCompAssmtB] ( [ID] int NOT NULL IDENTITY(1,1) );
    END
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'ClientKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [ClientKey] int NULL;
        GOTO lbd4b3f2_ac2;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'ClientKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ClientKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac2;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'ClientKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'ClientKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac2;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [ClientKey] int NULL;
lbd4b3f2_ac2:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'EnrollmentKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [EnrollmentKey] int NULL;
        GOTO lbd4b3f2_ac3;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'EnrollmentKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column EnrollmentKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac3;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'EnrollmentKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'EnrollmentKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac3;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [EnrollmentKey] int NULL;
lbd4b3f2_ac3:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'PacketKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [PacketKey] int NULL;
        GOTO lbd4b3f2_ac4;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'PacketKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column PacketKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac4;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'PacketKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'PacketKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac4;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [PacketKey] int NULL;
lbd4b3f2_ac4:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'SavedDate' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [SavedDate] datetime NULL;
        GOTO lbd4b3f2_ac5;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'SavedDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column SavedDate on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac5;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'SavedDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'SavedDate') ) )
    BEGIN
        GOTO lbd4b3f2_ac5;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [SavedDate] datetime NULL;
lbd4b3f2_ac5:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'HistoryChangeDate' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [HistoryChangeDate] datetime NULL;
        GOTO lbd4b3f2_ac6;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'HistoryChangeDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column HistoryChangeDate on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac6;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'HistoryChangeDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'HistoryChangeDate') ) )
    BEGIN
        GOTO lbd4b3f2_ac6;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [HistoryChangeDate] datetime NULL;
lbd4b3f2_ac6:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BClientStateExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BClientStateExp] text NULL;
        GOTO lbd4b3f2_ac7;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BClientStateExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column BClientStateExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac7;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BClientStateExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BClientStateExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac7;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BClientStateExp] text NULL;
lbd4b3f2_ac7:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BPrecEventsExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BPrecEventsExp] text NULL;
        GOTO lbd4b3f2_ac8;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BPrecEventsExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column BPrecEventsExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac8;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BPrecEventsExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BPrecEventsExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac8;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BPrecEventsExp] text NULL;
lbd4b3f2_ac8:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSpecificsExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BSpecificsExp] text NULL;
        GOTO lbd4b3f2_ac9;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSpecificsExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column BSpecificsExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac9;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSpecificsExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSpecificsExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac9;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BSpecificsExp] text NULL;
lbd4b3f2_ac9:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BCultureExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BCultureExp] text NULL;
        GOTO lbd4b3f2_ac10;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BCultureExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column BCultureExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac10;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BCultureExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BCultureExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac10;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BCultureExp] text NULL;
lbd4b3f2_ac10:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterpretYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BInterpretYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac11;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterpretYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column BInterpretYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac11;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterpretYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterpretYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column BInterpretYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac11;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterpretYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterpretYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac11;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BInterpretYNKey] varchar(1) NULL;
lbd4b3f2_ac11:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterpretDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BInterpretDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac12;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterpretDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column BInterpretDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac12;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterpretDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterpretDesc') ) )
    BEGIN
        RAISERROR( N'The extant column BInterpretDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac12;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterpretDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterpretDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac12;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BInterpretDesc] varchar(50) NULL;
lbd4b3f2_ac12:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGenderKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGenderKey] int NULL;
        GOTO lbd4b3f2_ac13;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGenderKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGenderKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac13;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGenderKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGenderKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac13;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGenderKey] int NULL;
lbd4b3f2_ac13:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BOrientationKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BOrientationKey] int NULL;
        GOTO lbd4b3f2_ac14;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BOrientationKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BOrientationKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac14;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BOrientationKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BOrientationKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac14;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BOrientationKey] int NULL;
lbd4b3f2_ac14:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BMentHealthCGYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BMentHealthCGYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac15;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BMentHealthCGYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column BMentHealthCGYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac15;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BMentHealthCGYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BMentHealthCGYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column BMentHealthCGYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac15;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BMentHealthCGYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BMentHealthCGYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac15;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BMentHealthCGYNKey] varchar(1) NULL;
lbd4b3f2_ac15:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BMentHealthExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BMentHealthExp] text NULL;
        GOTO lbd4b3f2_ac16;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BMentHealthExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column BMentHealthExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac16;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BMentHealthExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BMentHealthExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac16;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BMentHealthExp] text NULL;
lbd4b3f2_ac16:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSubAbuseCGYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BSubAbuseCGYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac17;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSubAbuseCGYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column BSubAbuseCGYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac17;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSubAbuseCGYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSubAbuseCGYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column BSubAbuseCGYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac17;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSubAbuseCGYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSubAbuseCGYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac17;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BSubAbuseCGYNKey] varchar(1) NULL;
lbd4b3f2_ac17:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BDrugChoiceYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BDrugChoiceYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac18;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BDrugChoiceYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column BDrugChoiceYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac18;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BDrugChoiceYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BDrugChoiceYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column BDrugChoiceYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac18;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BDrugChoiceYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BDrugChoiceYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac18;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BDrugChoiceYNKey] varchar(1) NULL;
lbd4b3f2_ac18:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BDrugChoiceDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BDrugChoiceDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac19;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BDrugChoiceDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column BDrugChoiceDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac19;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BDrugChoiceDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BDrugChoiceDesc') ) )
    BEGIN
        RAISERROR( N'The extant column BDrugChoiceDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac19;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BDrugChoiceDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BDrugChoiceDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac19;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BDrugChoiceDesc] varchar(50) NULL;
lbd4b3f2_ac19:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSobrietyExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BSobrietyExp] text NULL;
        GOTO lbd4b3f2_ac20;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSobrietyExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column BSobrietyExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac20;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSobrietyExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSobrietyExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac20;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BSobrietyExp] text NULL;
lbd4b3f2_ac20:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BCigaretteYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BCigaretteYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac21;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BCigaretteYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column BCigaretteYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac21;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BCigaretteYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BCigaretteYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column BCigaretteYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac21;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BCigaretteYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BCigaretteYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac21;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BCigaretteYNKey] varchar(1) NULL;
lbd4b3f2_ac21:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BCigaretteDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BCigaretteDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac22;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BCigaretteDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column BCigaretteDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac22;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BCigaretteDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BCigaretteDesc') ) )
    BEGIN
        RAISERROR( N'The extant column BCigaretteDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac22;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BCigaretteDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BCigaretteDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac22;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BCigaretteDesc] varchar(50) NULL;
lbd4b3f2_ac22:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSubHistExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BSubHistExp] text NULL;
        GOTO lbd4b3f2_ac23;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSubHistExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column BSubHistExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac23;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSubHistExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSubHistExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac23;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BSubHistExp] text NULL;
lbd4b3f2_ac23:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSubOtherExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BSubOtherExp] text NULL;
        GOTO lbd4b3f2_ac24;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSubOtherExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column BSubOtherExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac24;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSubOtherExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BSubOtherExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac24;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BSubOtherExp] text NULL;
lbd4b3f2_ac24:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterventionYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BInterventionYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac25;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterventionYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column BInterventionYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac25;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterventionYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterventionYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column BInterventionYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac25;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterventionYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterventionYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac25;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BInterventionYNKey] varchar(1) NULL;
lbd4b3f2_ac25:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterventionDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BInterventionDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac26;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterventionDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column BInterventionDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac26;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterventionDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterventionDesc') ) )
    BEGIN
        RAISERROR( N'The extant column BInterventionDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac26;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterventionDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BInterventionDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac26;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BInterventionDesc] varchar(50) NULL;
lbd4b3f2_ac26:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CArrestsYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CArrestsYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac27;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CArrestsYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CArrestsYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac27;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CArrestsYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CArrestsYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CArrestsYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac27;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CArrestsYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CArrestsYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac27;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CArrestsYNKey] varchar(1) NULL;
lbd4b3f2_ac27:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CArrestsDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CArrestsDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac28;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CArrestsDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CArrestsDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac28;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CArrestsDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CArrestsDesc') ) )
    BEGIN
        RAISERROR( N'The extant column CArrestsDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac28;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CArrestsDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CArrestsDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac28;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CArrestsDesc] varchar(50) NULL;
lbd4b3f2_ac28:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CParoleYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CParoleYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac29;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CParoleYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CParoleYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac29;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CParoleYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CParoleYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CParoleYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac29;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CParoleYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CParoleYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac29;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CParoleYNKey] varchar(1) NULL;
lbd4b3f2_ac29:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CParoleDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CParoleDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac30;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CParoleDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CParoleDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac30;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CParoleDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CParoleDesc') ) )
    BEGIN
        RAISERROR( N'The extant column CParoleDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac30;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CParoleDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CParoleDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac30;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CParoleDesc] varchar(50) NULL;
lbd4b3f2_ac30:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSentencingYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CSentencingYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac31;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSentencingYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CSentencingYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac31;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSentencingYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSentencingYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CSentencingYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac31;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSentencingYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSentencingYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac31;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CSentencingYNKey] varchar(1) NULL;
lbd4b3f2_ac31:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSentencingDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CSentencingDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac32;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSentencingDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CSentencingDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac32;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSentencingDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSentencingDesc') ) )
    BEGIN
        RAISERROR( N'The extant column CSentencingDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac32;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSentencingDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSentencingDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac32;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CSentencingDesc] varchar(50) NULL;
lbd4b3f2_ac32:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncarYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CIncarYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac33;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncarYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CIncarYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac33;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncarYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncarYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CIncarYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac33;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncarYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncarYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac33;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CIncarYNKey] varchar(1) NULL;
lbd4b3f2_ac33:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncarExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CIncarExp] text NULL;
        GOTO lbd4b3f2_ac34;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncarExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column CIncarExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac34;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncarExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncarExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac34;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CIncarExp] text NULL;
lbd4b3f2_ac34:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEvalYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CEvalYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac35;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEvalYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CEvalYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac35;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEvalYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEvalYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CEvalYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac35;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEvalYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEvalYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac35;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CEvalYNKey] varchar(1) NULL;
lbd4b3f2_ac35:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSexOffendYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CSexOffendYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac36;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSexOffendYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CSexOffendYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac36;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSexOffendYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSexOffendYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CSexOffendYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac36;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSexOffendYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSexOffendYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac36;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CSexOffendYNKey] varchar(1) NULL;
lbd4b3f2_ac36:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSexOffendDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CSexOffendDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac37;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSexOffendDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CSexOffendDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac37;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSexOffendDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSexOffendDesc') ) )
    BEGIN
        RAISERROR( N'The extant column CSexOffendDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac37;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSexOffendDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSexOffendDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac37;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CSexOffendDesc] varchar(50) NULL;
lbd4b3f2_ac37:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEducationDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CEducationDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac38;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEducationDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CEducationDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac38;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEducationDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEducationDesc') ) )
    BEGIN
        RAISERROR( N'The extant column CEducationDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac38;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEducationDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEducationDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac38;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CEducationDesc] varchar(50) NULL;
lbd4b3f2_ac38:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CStudentYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CStudentYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac39;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CStudentYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CStudentYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac39;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CStudentYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CStudentYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CStudentYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac39;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CStudentYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CStudentYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac39;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CStudentYNKey] varchar(1) NULL;
lbd4b3f2_ac39:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CStudentExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CStudentExp] text NULL;
        GOTO lbd4b3f2_ac40;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CStudentExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column CStudentExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac40;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CStudentExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CStudentExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac40;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CStudentExp] text NULL;
lbd4b3f2_ac40:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSpecEdYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CSpecEdYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac41;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSpecEdYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CSpecEdYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac41;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSpecEdYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSpecEdYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CSpecEdYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac41;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSpecEdYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSpecEdYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac41;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CSpecEdYNKey] varchar(1) NULL;
lbd4b3f2_ac41:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSpecEdExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CSpecEdExp] text NULL;
        GOTO lbd4b3f2_ac42;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSpecEdExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column CSpecEdExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac42;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSpecEdExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CSpecEdExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac42;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CSpecEdExp] text NULL;
lbd4b3f2_ac42:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEduStatExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CEduStatExp] text NULL;
        GOTO lbd4b3f2_ac43;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEduStatExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column CEduStatExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac43;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEduStatExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEduStatExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac43;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CEduStatExp] text NULL;
lbd4b3f2_ac43:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEmployYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CEmployYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac44;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEmployYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CEmployYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac44;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEmployYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEmployYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CEmployYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac44;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEmployYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEmployYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac44;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CEmployYNKey] varchar(1) NULL;
lbd4b3f2_ac44:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEmployDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CEmployDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac45;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEmployDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CEmployDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac45;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEmployDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEmployDesc') ) )
    BEGIN
        RAISERROR( N'The extant column CEmployDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac45;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEmployDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CEmployDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac45;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CEmployDesc] varchar(50) NULL;
lbd4b3f2_ac45:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CFullTChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CFullTChk] tinyint NULL;
        GOTO lbd4b3f2_ac46;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CFullTChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column CFullTChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac46;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CFullTChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CFullTChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac46;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CFullTChk] tinyint NULL;
lbd4b3f2_ac46:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CPartTChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CPartTChk] tinyint NULL;
        GOTO lbd4b3f2_ac47;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CPartTChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column CPartTChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac47;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CPartTChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CPartTChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac47;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CPartTChk] tinyint NULL;
lbd4b3f2_ac47:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CWorkHExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CWorkHExp] text NULL;
        GOTO lbd4b3f2_ac48;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CWorkHExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column CWorkHExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac48;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CWorkHExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CWorkHExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac48;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CWorkHExp] text NULL;
lbd4b3f2_ac48:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CWorkBarrExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CWorkBarrExp] text NULL;
        GOTO lbd4b3f2_ac49;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CWorkBarrExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column CWorkBarrExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac49;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CWorkBarrExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CWorkBarrExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac49;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CWorkBarrExp] text NULL;
lbd4b3f2_ac49:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncMonDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CIncMonDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac50;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncMonDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CIncMonDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac50;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncMonDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncMonDesc') ) )
    BEGIN
        RAISERROR( N'The extant column CIncMonDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac50;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncMonDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncMonDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac50;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CIncMonDesc] varchar(50) NULL;
lbd4b3f2_ac50:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncSourceDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CIncSourceDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac51;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncSourceDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CIncSourceDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac51;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncSourceDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncSourceDesc') ) )
    BEGIN
        RAISERROR( N'The extant column CIncSourceDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac51;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncSourceDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CIncSourceDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac51;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CIncSourceDesc] varchar(50) NULL;
lbd4b3f2_ac51:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMilitaryYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CMilitaryYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac52;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMilitaryYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CMilitaryYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac52;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMilitaryYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMilitaryYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CMilitaryYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac52;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMilitaryYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMilitaryYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac52;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CMilitaryYNKey] varchar(1) NULL;
lbd4b3f2_ac52:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMilDischDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CMilDischDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac53;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMilDischDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CMilDischDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac53;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMilDischDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMilDischDesc') ) )
    BEGIN
        RAISERROR( N'The extant column CMilDischDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac53;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMilDischDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMilDischDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac53;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CMilDischDesc] varchar(50) NULL;
lbd4b3f2_ac53:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CCombatYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CCombatYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac54;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CCombatYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CCombatYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac54;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CCombatYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CCombatYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CCombatYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac54;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CCombatYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CCombatYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac54;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CCombatYNKey] varchar(1) NULL;
lbd4b3f2_ac54:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMilCompExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CMilCompExp] text NULL;
        GOTO lbd4b3f2_ac55;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMilCompExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column CMilCompExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac55;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMilCompExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMilCompExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac55;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CMilCompExp] text NULL;
lbd4b3f2_ac55:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CDevelopExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CDevelopExp] text NULL;
        GOTO lbd4b3f2_ac56;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CDevelopExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column CDevelopExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac56;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CDevelopExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CDevelopExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac56;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CDevelopExp] text NULL;
lbd4b3f2_ac56:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CAbuseExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CAbuseExp] text NULL;
        GOTO lbd4b3f2_ac57;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CAbuseExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column CAbuseExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac57;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CAbuseExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CAbuseExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac57;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CAbuseExp] text NULL;
lbd4b3f2_ac57:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CRelatKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CRelatKey] int NULL;
        GOTO lbd4b3f2_ac58;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CRelatKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column CRelatKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac58;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CRelatKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CRelatKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac58;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CRelatKey] int NULL;
lbd4b3f2_ac58:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CRelatHistExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CRelatHistExp] text NULL;
        GOTO lbd4b3f2_ac59;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CRelatHistExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column CRelatHistExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac59;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CRelatHistExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CRelatHistExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac59;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CRelatHistExp] text NULL;
lbd4b3f2_ac59:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CFriendsExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CFriendsExp] text NULL;
        GOTO lbd4b3f2_ac60;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CFriendsExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column CFriendsExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac60;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CFriendsExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CFriendsExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac60;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CFriendsExp] text NULL;
lbd4b3f2_ac60:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CNatSupExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CNatSupExp] text NULL;
        GOTO lbd4b3f2_ac61;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CNatSupExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column CNatSupExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac61;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CNatSupExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CNatSupExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac61;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CNatSupExp] text NULL;
lbd4b3f2_ac61:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CLivingExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CLivingExp] text NULL;
        GOTO lbd4b3f2_ac62;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CLivingExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column CLivingExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac62;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CLivingExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CLivingExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac62;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CLivingExp] text NULL;
lbd4b3f2_ac62:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CBathingKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CBathingKey] int NULL;
        GOTO lbd4b3f2_ac63;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CBathingKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column CBathingKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac63;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CBathingKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CBathingKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac63;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CBathingKey] int NULL;
lbd4b3f2_ac63:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CBathingYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CBathingYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac64;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CBathingYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CBathingYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac64;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CBathingYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CBathingYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CBathingYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac64;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CBathingYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CBathingYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac64;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CBathingYNKey] varchar(1) NULL;
lbd4b3f2_ac64:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CBathingDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CBathingDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac65;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CBathingDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CBathingDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac65;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CBathingDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CBathingDesc') ) )
    BEGIN
        RAISERROR( N'The extant column CBathingDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac65;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CBathingDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CBathingDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac65;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CBathingDesc] varchar(50) NULL;
lbd4b3f2_ac65:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGroomingKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CGroomingKey] int NULL;
        GOTO lbd4b3f2_ac66;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGroomingKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column CGroomingKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac66;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGroomingKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGroomingKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac66;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CGroomingKey] int NULL;
lbd4b3f2_ac66:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGroomingYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CGroomingYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac67;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGroomingYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CGroomingYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac67;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGroomingYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGroomingYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CGroomingYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac67;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGroomingYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGroomingYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac67;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CGroomingYNKey] varchar(1) NULL;
lbd4b3f2_ac67:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGroomingDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CGroomingDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac68;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGroomingDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CGroomingDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac68;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGroomingDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGroomingDesc') ) )
    BEGIN
        RAISERROR( N'The extant column CGroomingDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac68;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGroomingDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGroomingDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac68;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CGroomingDesc] varchar(50) NULL;
lbd4b3f2_ac68:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CPreparingKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CPreparingKey] int NULL;
        GOTO lbd4b3f2_ac69;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CPreparingKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column CPreparingKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac69;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CPreparingKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CPreparingKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac69;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CPreparingKey] int NULL;
lbd4b3f2_ac69:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CPreparingYNey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CPreparingYNey] varchar(1) NULL;
        GOTO lbd4b3f2_ac70;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CPreparingYNey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CPreparingYNey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac70;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CPreparingYNey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CPreparingYNey') ) )
    BEGIN
        RAISERROR( N'The extant column CPreparingYNey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac70;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CPreparingYNey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CPreparingYNey') ) )
    BEGIN
        GOTO lbd4b3f2_ac70;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CPreparingYNey] varchar(1) NULL;
lbd4b3f2_ac70:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CPreparingDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CPreparingDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac71;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CPreparingDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CPreparingDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac71;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CPreparingDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CPreparingDesc') ) )
    BEGIN
        RAISERROR( N'The extant column CPreparingDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac71;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CPreparingDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CPreparingDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac71;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CPreparingDesc] varchar(50) NULL;
lbd4b3f2_ac71:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMobilityKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CMobilityKey] int NULL;
        GOTO lbd4b3f2_ac72;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMobilityKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column CMobilityKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac72;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMobilityKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMobilityKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac72;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CMobilityKey] int NULL;
lbd4b3f2_ac72:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMobilityYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CMobilityYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac73;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMobilityYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CMobilityYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac73;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMobilityYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMobilityYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CMobilityYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac73;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMobilityYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMobilityYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac73;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CMobilityYNKey] varchar(1) NULL;
lbd4b3f2_ac73:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMobilityDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CMobilityDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac74;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMobilityDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CMobilityDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac74;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMobilityDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMobilityDesc') ) )
    BEGIN
        RAISERROR( N'The extant column CMobilityDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac74;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMobilityDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMobilityDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac74;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CMobilityDesc] varchar(50) NULL;
lbd4b3f2_ac74:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CHouseworkKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CHouseworkKey] int NULL;
        GOTO lbd4b3f2_ac75;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CHouseworkKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column CHouseworkKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac75;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CHouseworkKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CHouseworkKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac75;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CHouseworkKey] int NULL;
lbd4b3f2_ac75:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CHouseworkYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CHouseworkYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac76;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CHouseworkYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CHouseworkYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac76;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CHouseworkYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CHouseworkYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CHouseworkYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac76;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CHouseworkYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CHouseworkYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac76;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CHouseworkYNKey] varchar(1) NULL;
lbd4b3f2_ac76:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CHouseworkDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CHouseworkDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac77;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CHouseworkDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CHouseworkDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac77;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CHouseworkDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CHouseworkDesc') ) )
    BEGIN
        RAISERROR( N'The extant column CHouseworkDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac77;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CHouseworkDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CHouseworkDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac77;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CHouseworkDesc] varchar(50) NULL;
lbd4b3f2_ac77:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CShoppingKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CShoppingKey] int NULL;
        GOTO lbd4b3f2_ac78;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CShoppingKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column CShoppingKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac78;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CShoppingKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CShoppingKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac78;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CShoppingKey] int NULL;
lbd4b3f2_ac78:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CShoppingYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CShoppingYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac79;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CShoppingYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CShoppingYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac79;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CShoppingYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CShoppingYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CShoppingYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac79;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CShoppingYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CShoppingYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac79;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CShoppingYNKey] varchar(1) NULL;
lbd4b3f2_ac79:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CShoppingDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CShoppingDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac80;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CShoppingDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CShoppingDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac80;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CShoppingDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CShoppingDesc') ) )
    BEGIN
        RAISERROR( N'The extant column CShoppingDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac80;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CShoppingDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CShoppingDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac80;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CShoppingDesc] varchar(50) NULL;
lbd4b3f2_ac80:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMoneyKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CMoneyKey] int NULL;
        GOTO lbd4b3f2_ac81;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMoneyKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column CMoneyKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac81;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMoneyKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMoneyKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac81;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CMoneyKey] int NULL;
lbd4b3f2_ac81:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMoneyYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CMoneyYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac82;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMoneyYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CMoneyYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac82;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMoneyYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMoneyYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CMoneyYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac82;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMoneyYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMoneyYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac82;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CMoneyYNKey] varchar(1) NULL;
lbd4b3f2_ac82:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMoneyDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CMoneyDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac83;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMoneyDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CMoneyDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac83;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMoneyDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMoneyDesc') ) )
    BEGIN
        RAISERROR( N'The extant column CMoneyDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac83;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMoneyDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CMoneyDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac83;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CMoneyDesc] varchar(50) NULL;
lbd4b3f2_ac83:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTMedsKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CTMedsKey] int NULL;
        GOTO lbd4b3f2_ac84;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTMedsKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column CTMedsKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac84;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTMedsKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTMedsKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac84;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CTMedsKey] int NULL;
lbd4b3f2_ac84:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTMedsYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CTMedsYNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac85;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTMedsYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CTMedsYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac85;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTMedsYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTMedsYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CTMedsYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac85;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTMedsYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTMedsYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac85;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CTMedsYNKey] varchar(1) NULL;
lbd4b3f2_ac85:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTMedsDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CTMedsDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac86;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTMedsDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CTMedsDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac86;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTMedsDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTMedsDesc') ) )
    BEGIN
        RAISERROR( N'The extant column CTMedsDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac86;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTMedsDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTMedsDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac86;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CTMedsDesc] varchar(50) NULL;
lbd4b3f2_ac86:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTransportDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CTransportDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac87;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTransportDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CTransportDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac87;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTransportDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTransportDesc') ) )
    BEGIN
        RAISERROR( N'The extant column CTransportDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac87;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTransportDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTransportDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac87;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CTransportDesc] varchar(50) NULL;
lbd4b3f2_ac87:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTypicalDayExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CTypicalDayExp] text NULL;
        GOTO lbd4b3f2_ac88;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTypicalDayExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column CTypicalDayExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac88;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTypicalDayExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CTypicalDayExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac88;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CTypicalDayExp] text NULL;
lbd4b3f2_ac88:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CLeisureExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CLeisureExp] text NULL;
        GOTO lbd4b3f2_ac89;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CLeisureExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column CLeisureExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac89;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CLeisureExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CLeisureExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac89;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CLeisureExp] text NULL;
lbd4b3f2_ac89:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAConsistentChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGAConsistentChk] tinyint NULL;
        GOTO lbd4b3f2_ac90;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAConsistentChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGAConsistentChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac90;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAConsistentChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAConsistentChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac90;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGAConsistentChk] tinyint NULL;
lbd4b3f2_ac90:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAYoungerChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGAYoungerChk] tinyint NULL;
        GOTO lbd4b3f2_ac91;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAYoungerChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGAYoungerChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac91;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAYoungerChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAYoungerChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac91;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGAYoungerChk] tinyint NULL;
lbd4b3f2_ac91:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAOlderChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGAOlderChk] tinyint NULL;
        GOTO lbd4b3f2_ac92;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAOlderChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGAOlderChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac92;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAOlderChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAOlderChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac92;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGAOlderChk] tinyint NULL;
lbd4b3f2_ac92:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAAvgHeightChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGAAvgHeightChk] tinyint NULL;
        GOTO lbd4b3f2_ac93;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAAvgHeightChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGAAvgHeightChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac93;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAAvgHeightChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAAvgHeightChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac93;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGAAvgHeightChk] tinyint NULL;
lbd4b3f2_ac93:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAShortChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGAShortChk] tinyint NULL;
        GOTO lbd4b3f2_ac94;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAShortChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGAShortChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac94;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAShortChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAShortChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac94;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGAShortChk] tinyint NULL;
lbd4b3f2_ac94:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGATallChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGATallChk] tinyint NULL;
        GOTO lbd4b3f2_ac95;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGATallChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGATallChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac95;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGATallChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGATallChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac95;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGATallChk] tinyint NULL;
lbd4b3f2_ac95:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAAvgWeightChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGAAvgWeightChk] tinyint NULL;
        GOTO lbd4b3f2_ac96;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAAvgWeightChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGAAvgWeightChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac96;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAAvgWeightChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAAvgWeightChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac96;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGAAvgWeightChk] tinyint NULL;
lbd4b3f2_ac96:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAObeseChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGAObeseChk] tinyint NULL;
        GOTO lbd4b3f2_ac97;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAObeseChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGAObeseChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac97;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAObeseChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAObeseChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac97;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGAObeseChk] tinyint NULL;
lbd4b3f2_ac97:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAOverweightChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGAOverweightChk] tinyint NULL;
        GOTO lbd4b3f2_ac98;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAOverweightChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGAOverweightChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac98;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAOverweightChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAOverweightChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac98;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGAOverweightChk] tinyint NULL;
lbd4b3f2_ac98:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAThinChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGAThinChk] tinyint NULL;
        GOTO lbd4b3f2_ac99;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAThinChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGAThinChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac99;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAThinChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAThinChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac99;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGAThinChk] tinyint NULL;
lbd4b3f2_ac99:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAEmacChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGAEmacChk] tinyint NULL;
        GOTO lbd4b3f2_ac100;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAEmacChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGAEmacChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac100;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAEmacChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAEmacChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac100;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGAEmacChk] tinyint NULL;
lbd4b3f2_ac100:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGACasualChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGACasualChk] tinyint NULL;
        GOTO lbd4b3f2_ac101;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGACasualChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGACasualChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac101;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGACasualChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGACasualChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac101;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGACasualChk] tinyint NULL;
lbd4b3f2_ac101:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGANeatChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGANeatChk] tinyint NULL;
        GOTO lbd4b3f2_ac102;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGANeatChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGANeatChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac102;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGANeatChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGANeatChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac102;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGANeatChk] tinyint NULL;
lbd4b3f2_ac102:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGATatteredChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGATatteredChk] tinyint NULL;
        GOTO lbd4b3f2_ac103;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGATatteredChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGATatteredChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac103;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGATatteredChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGATatteredChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac103;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGATatteredChk] tinyint NULL;
lbd4b3f2_ac103:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGADirtyChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGADirtyChk] tinyint NULL;
        GOTO lbd4b3f2_ac104;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGADirtyChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGADirtyChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac104;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGADirtyChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGADirtyChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac104;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGADirtyChk] tinyint NULL;
lbd4b3f2_ac104:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAWellChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGAWellChk] tinyint NULL;
        GOTO lbd4b3f2_ac105;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAWellChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGAWellChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac105;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAWellChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAWellChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac105;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGAWellChk] tinyint NULL;
lbd4b3f2_ac105:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGADishevChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGADishevChk] tinyint NULL;
        GOTO lbd4b3f2_ac106;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGADishevChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGADishevChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac106;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGADishevChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGADishevChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac106;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGADishevChk] tinyint NULL;
lbd4b3f2_ac106:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAUnkemptChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGAUnkemptChk] tinyint NULL;
        GOTO lbd4b3f2_ac107;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAUnkemptChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGAUnkemptChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac107;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAUnkemptChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAUnkemptChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac107;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGAUnkemptChk] tinyint NULL;
lbd4b3f2_ac107:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAAdeqChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGAAdeqChk] tinyint NULL;
        GOTO lbd4b3f2_ac108;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAAdeqChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGAAdeqChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac108;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAAdeqChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAAdeqChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac108;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGAAdeqChk] tinyint NULL;
lbd4b3f2_ac108:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAImmacChk' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BGAImmacChk] tinyint NULL;
        GOTO lbd4b3f2_ac109;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAImmacChk') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column BGAImmacChk on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac109;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAImmacChk') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BGAImmacChk') ) )
    BEGIN
        GOTO lbd4b3f2_ac109;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BGAImmacChk] tinyint NULL;
lbd4b3f2_ac109:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'AHeartDDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [AHeartDDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac110;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'AHeartDDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column AHeartDDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac110;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'AHeartDDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'AHeartDDesc') ) )
    BEGIN
        RAISERROR( N'The extant column AHeartDDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac110;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'AHeartDDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'AHeartDDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac110;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [AHeartDDesc] varchar(50) NULL;
lbd4b3f2_ac110:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'ASideEffectsExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [ASideEffectsExp] text NULL;
        GOTO lbd4b3f2_ac111;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'ASideEffectsExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column ASideEffectsExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac111;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'ASideEffectsExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'ASideEffectsExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac111;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [ASideEffectsExp] text NULL;
lbd4b3f2_ac111:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGCurMed1YNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CGCurMed1YNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac112;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGCurMed1YNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CGCurMed1YNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac112;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGCurMed1YNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGCurMed1YNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CGCurMed1YNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac112;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGCurMed1YNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGCurMed1YNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac112;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CGCurMed1YNKey] varchar(1) NULL;
lbd4b3f2_ac112:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGCurMed2YNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CGCurMed2YNKey] varchar(1) NULL;
        GOTO lbd4b3f2_ac113;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGCurMed2YNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column CGCurMed2YNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac113;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGCurMed2YNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGCurMed2YNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CGCurMed2YNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac113;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGCurMed2YNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CGCurMed2YNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac113;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CGCurMed2YNKey] varchar(1) NULL;
lbd4b3f2_ac113:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CChildhoodExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CChildhoodExp] text NULL;
        GOTO lbd4b3f2_ac114;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CChildhoodExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column CChildhoodExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac114;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CChildhoodExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CChildhoodExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac114;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CChildhoodExp] text NULL;
lbd4b3f2_ac114:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CLegalCommExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [CLegalCommExp] text NULL;
        GOTO lbd4b3f2_ac115;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CLegalCommExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column CLegalCommExp on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac115;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CLegalCommExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'CLegalCommExp') ) )
    BEGIN
        GOTO lbd4b3f2_ac115;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [CLegalCommExp] text NULL;
lbd4b3f2_ac115:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BDrugNameDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BDrugNameDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac116;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BDrugNameDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column BDrugNameDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac116;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BDrugNameDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BDrugNameDesc') ) )
    BEGIN
        RAISERROR( N'The extant column BDrugNameDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac116;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BDrugNameDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BDrugNameDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac116;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BDrugNameDesc] varchar(50) NULL;
lbd4b3f2_ac116:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BTakeActionDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [BTakeActionDesc] varchar(50) NULL;
        GOTO lbd4b3f2_ac117;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BTakeActionDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column BTakeActionDesc on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac117;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BTakeActionDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BTakeActionDesc') ) )
    BEGIN
        RAISERROR( N'The extant column BTakeActionDesc on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac117;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BTakeActionDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'BTakeActionDesc') ) )
    BEGIN
        GOTO lbd4b3f2_ac117;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [BTakeActionDesc] varchar(50) NULL;
lbd4b3f2_ac117:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'HaveChildYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtB] ADD [HaveChildYNKey] char(1) NULL;
        GOTO lbd4b3f2_ac118;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'HaveChildYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column HaveChildYNKey on table CCSNAZ.TCompAssmtB is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac118;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'HaveChildYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'HaveChildYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column HaveChildYNKey on table CCSNAZ.TCompAssmtB is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbd4b3f2_ac118;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'HaveChildYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtB', N'U' ) AND [name] = N'HaveChildYNKey') ) )
    BEGIN
        GOTO lbd4b3f2_ac118;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtB] ALTER COLUMN [HaveChildYNKey] char(1) NULL;
lbd4b3f2_ac118:
    DECLARE @KeyName_d4b3f2 nvarchar(max), @Clustering_d4b3f2 nvarchar(max);
    SELECT @KeyName_d4b3f2 = [kc].[name], @Clustering_d4b3f2 = [i].[type_desc]
    FROM [sys].[key_constraints] AS [kc]
    INNER JOIN [sys].[indexes] AS [i]
        ON [kc].[parent_object_id] = [i].[object_id]
       AND [kc].[unique_index_id]  = [i].[index_id]
       AND [kc].[type]             = N'PK'
    WHERE [kc].[parent_object_id] = OBJECT_ID( N'[CCSNAZ].[TCompAssmtB]', N'U' );
    IF ( ( @KeyName_d4b3f2 IS NULL AND @Clustering_d4b3f2 IS NULL )
      OR ( @KeyName_d4b3f2 <> N'PK_TCompAssmtB' )
      OR ( @Clustering_d4b3f2 <> N'CLUSTERED' ) )
    BEGIN
        IF ( ( COALESCE( @KeyName_d4b3f2, N'' ) <> N'PK_TCompAssmtB' )
          OR ( COALESCE( @Clustering_d4b3f2, N'' ) <> N'CLUSTERED' ) )
        BEGIN
            SELECT @sqlCmd_d4b3f2 = N'ALTER TABLE [CCSNAZ].[TCompAssmtB] DROP CONSTRAINT [' + @KeyName_d4b3f2 + N'];'
            EXEC [sp_executesql] @sqlCmd_d4b3f2;
        END
 
        ALTER TABLE [CCSNAZ].[TCompAssmtB]
        ADD CONSTRAINT [PK_TCompAssmtB]
        PRIMARY KEY CLUSTERED (
            [ID] ASC
        );
    END
    --===========================================================================================================================================================
lbQuit_d4b3f2:
    RAISERROR( N'Process structure completed successfully', 0, 1 ) WITH NOWAIT;
    IF @exTranCount_d4b3f2 = 0
        COMMIT;
END TRY
BEGIN CATCH
    DECLARE @exXactState_d4b3f2 int;
    SELECT  @exXactState_d4b3f2 = XACT_STATE();
 
     -- Transaction Doomed
    IF @exXactState_d4b3f2 = -1
        ROLLBACK;
 
    -- Transaction started by this procedure
    IF @exXactState_d4b3f2 = 1 AND @exTranCount_d4b3f2 = 0 
        ROLLBACK;
 
    -- Transaction started before this procedure
    IF @exXactState_d4b3f2 = 1 AND @exTranCount_d4b3f2 > 0
        ROLLBACK TRANSACTION ScriptTableStruct_d4b3f2;
 
    SELECT 
        @exErrorMessage_d4b3f2  = ERROR_MESSAGE()
       ,@exErrorLine_d4b3f2     = ERROR_LINE()
       ,@exErrorNumber_d4b3f2   = ERROR_NUMBER()
       ,@exErrorSeverity_d4b3f2 = ERROR_SEVERITY()
       ,@exErrorState_d4b3f2    = ERROR_STATE()
       ,@paramsXml_d4b3f2 = (SELECT
            'STRUCTURE SCRIPT FOR [CCSNAZ].[TCompAssmtB]' AS [Process]
        FOR XML PATH(N'Params'), ELEMENTS, TYPE);
 
    EXEC [CCSNAZ].[CTSP_Core_Common_RecordException]
        @ProcID        = @@PROCID
       ,@ErrorMessage  = @exErrorMessage_d4b3f2
       ,@ErrorLine     = @exErrorLine_d4b3f2
       ,@ErrorNumber   = @exErrorNumber_d4b3f2
       ,@ErrorSeverity = @exErrorSeverity_d4b3f2
       ,@ErrorState    = @exErrorState_d4b3f2
       ,@Params        = @paramsXml_d4b3f2;
    RAISERROR( N'Process [CCSNAZ].[TCompAssmtB] structure completed with errors: %d: %s', 16, 1, @exErrorNumber_d4b3f2, @exErrorMessage_d4b3f2);
END CATCH
----#################### End Table generate output for : CCSNAZ.TCompAssmtB (d4b3f2) ####################

GO
