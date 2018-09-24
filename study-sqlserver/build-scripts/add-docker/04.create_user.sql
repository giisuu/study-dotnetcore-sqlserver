IF EXISTS
   (
   SELECT name
FROM testdb.sys.sysusers
WHERE name = N'testlogin'
   )
BEGIN
    SELECT 'User Name already Exist' AS Message;
END
ELSE
BEGIN
    USE testdb;
    CREATE USER [testlogin] FOR LOGIN testlogin;
    SELECT 'New User is Created';
END

GO