@echo off

echo #### INICIO

SQLPLUS / AS SYSDBA @activeArchivelog.sql

echo #### FIN

pause
exit
