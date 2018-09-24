docker exec -it study-sqlserver /opt/mssql-tools/bin/sqlcmd -U sa -P 'Password@2018' -i /01.create_login.sql
docker exec -it study-sqlserver /opt/mssql-tools/bin/sqlcmd -U sa -P 'Password@2018' -i /02.create_database.sql
docker exec -it study-sqlserver /opt/mssql-tools/bin/sqlcmd -U sa -P 'Password@2018' -i /03.alter_database.sql
docker exec -it study-sqlserver /opt/mssql-tools/bin/sqlcmd -U sa -P 'Password@2018' -i /04.create_user.sql
docker exec -it study-sqlserver /opt/mssql-tools/bin/sqlcmd -U sa -P 'Password@2018' -i /05.grant_user.sql
docker exec -it study-sqlserver /opt/mssql-tools/bin/sqlcmd -U sa -P 'Password@2018' -i /06.create_schema.sql

# Œã•Ð‚Ã‚¯—p
docker exec -it  study-sqlserver bash -c '/remove_init_files.sh'
docker exec -it  study-sqlserver bash -c 'rm -f /remove_init_files.sh'