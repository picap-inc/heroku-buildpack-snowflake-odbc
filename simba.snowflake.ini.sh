#!/bin/bash
echo "" > /usr/lib/snowflake/odbc/lib/simba.snowflake.ini
echo "[Driver]
DriverManagerEncoding=UTF-16
DriverLocale=en-US
ErrorMessagesPath=${SNOWFLAKE_ODBC_FOLDER}/ErrorMessages/
LogNamespace=
LogPath=/tmp
ODBCInstLib=libodbcinst.so
#LogLevel=6
UseNssdb=true
CABundleFile=${SNOWFLAKE_ODBC_FOLDER}/lib/cacert.pem
" > /usr/lib/snowflake/odbc/lib/simba.snowflake.ini
