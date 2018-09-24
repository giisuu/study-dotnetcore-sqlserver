FROM microsoft/mssql-server-linux:2017-latest
EXPOSE 1433

ENV ACCEPT_EULA="Y" \
	SA_PASSWORD="Password@2018" \
	ACCEPT_EULA="Y" \
	MSSQL_PID="Developer" \
	MSSQL_LCID=1041 \
	MSSQL_COLLATION="Japanese_CI_AS"

ADD study-sqlserver/build-scripts/add-docker/remove_init_files.sh		/remove_init_files.sh
ADD study-sqlserver/build-scripts/add-docker/01.create_login.sql		/01.create_login.sql
ADD study-sqlserver/build-scripts/add-docker/02.create_database.sql		/02.create_database.sql
ADD study-sqlserver/build-scripts/add-docker/03.alter_database.sql		/03.alter_database.sql
ADD study-sqlserver/build-scripts/add-docker/04.create_user.sql			/04.create_user.sql
ADD study-sqlserver/build-scripts/add-docker/05.grant_user.sql			/05.grant_user.sql
ADD study-sqlserver/build-scripts/add-docker/06.create_schema.sql	    /06.create_schema.sql

RUN set -x && \
	chmod u+x /remove_init_files.sh && \
	chmod u+x /01.create_login.sql && \
	chmod u+x /02.create_database.sql && \
	chmod u+x /03.alter_database.sql && \
	chmod u+x /04.create_user.sql && \
	chmod u+x /05.grant_user.sql && \
	chmod u+x /06.create_schema.sql && \
	ln -s /remove_init_files.sh /root/remove_init_files.sh && \
	ln -s /01.create_login.sql /root/01.create_login.sql && \
	ln -s /02.create_database.sql /root/02.create_database.sql && \
	ln -s /03.alter_database.sql /root/03.alter_database.sql && \
	ln -s /04.create_user.sql /root/04.create_user.sql && \
	ln -s /05.grant_user.sql /root/05.grant_user.sql && \
	ln -s /06.create_schema.sql /root/06.create_schema.sql