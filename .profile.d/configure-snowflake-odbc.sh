#!/bin/bash

export ODBCSYSINI=${HOME}/.apt/usr/lib/snowflake/odbc/conf/

mkdir -p /etc
echo "[snowflake]
Description=SnowflakeDB
Driver=SnowflakeDSIIDriver
Locale=en-US
SERVER=${SNOWFLAKE_ACCOUNT}.snowflakecomputing.com
database=${SNOWFLAKE_DATABASE}
uid=${SNOWFLAKE_UID}
schema=${SNOWFLAKE_SCHEMA}
warehouse=${SNOWFLAKE_WHAREHOUSE}
role=${SNOWFLAKE_ROLE}
PORT=443
SSL=on
CLIENT_SESSION_KEEP_ALIVE=true
" > ${ODBCSYSINI}/odbc.ini
