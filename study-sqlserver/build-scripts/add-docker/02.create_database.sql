IF EXISTS
   (
   SELECT name
FROM master.dbo.sysdatabases
WHERE name = N'testdb'
    )
BEGIN
    SELECT 'Database Name already Exist' AS Message;
END
ELSE
BEGIN
    USE master;

    CREATE DATABASE [testdb]
    ON PRIMARY (
        NAME = N'testdb',
        FILENAME = N'/var/opt/mssql/data/testdb.mdf',
        SIZE = 500MB )
    LOG ON (
        NAME = N'testdb_log',
        FILENAME = N'/var/opt/mssql/data/testdb_log.ldf',
        SIZE = 500MB );

    SELECT 'New Database is Created';

END

GO