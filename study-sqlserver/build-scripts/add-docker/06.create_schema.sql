IF EXISTS
   (
   SELECT DISTINCT table_schema
FROM INFORMATION_SCHEMA.TABLES
WHERE table_catalog = N'testdb' AND table_schema = N'test'
   )
BEGIN
    SELECT 'Schema Name already Exist' AS Message;
END
ELSE
BEGIN
    USE testdb;
    EXEC ('CREATE SCHEMA [test] AUTHORIZATION [dbo]');
    SELECT 'New Schema is Created';
END

GO