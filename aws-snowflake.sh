#!/bin/bash
echo "" > /etc/odbc.ini
echo "[snowflake]
[ODBC Data Sources]
picapodbc1 = Snowflake

[picapodbc1]
Driver      = SnowflakeDSIIDriver
Description = Picap ODBC
uid         = ${SNOWFLAKE_UID}
server      = ${SNOWFLAKE_ACCOUNT}.snowflakecomputing.com
database    = ${SNOWFLAKE_DATABASE}
schema      = ${SNOWFLAKE_SCHEMA}
warehouse   = ${SNOWFLAKE_WAREHOUSE}
role        = ${SNOWFLAKE_ROLE}
PORT=443
SSL=on
CLIENT_SESSION_KEEP_ALIVE=true
" > /etc/odbc.ini
