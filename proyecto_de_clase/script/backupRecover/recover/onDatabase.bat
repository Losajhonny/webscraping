@echo off

echo #### INICIO

SQLPLUS / AS SYSDBA @onDatabase.sql

echo #### FIN

pause
exit
