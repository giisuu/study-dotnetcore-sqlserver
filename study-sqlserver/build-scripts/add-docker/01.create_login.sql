IF EXISTS
   (
   SELECT loginname
FROM sys.syslogins
WHERE dbname = N'master' AND loginname = N'testlogin'
   )
BEGIN
    SELECT 'Login Name already Exist' AS Message;
END
ELSE
BEGIN
    USE master;
    CREATE LOGIN [testlogin] WITH PASSWORD = N'ae3vi@ioaeD';
    SELECT 'New Login is Created';
END

GO