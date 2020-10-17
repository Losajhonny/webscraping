@echo off

echo #### INICIO

RMAN TARGET / @createBackup.sql

echo #### FIN

pause
exit
