USE testdb;

ALTER ROLE db_datareader ADD MEMBER testlogin;
ALTER ROLE db_datawriter ADD MEMBER testlogin;
ALTER ROLE db_ddladmin   ADD MEMBER testlogin;

SELECT 'Alter Roles'

GO