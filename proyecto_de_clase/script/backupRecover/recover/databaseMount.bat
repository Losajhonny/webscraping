@echo off

echo #### INICIO

SQLPLUS / AS SYSDBA @databaseMount.sql

echo #### FIN

pause
exit
