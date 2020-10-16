@echo off

echo #### INICIO

rman target / @deleteBackup.sql

echo #### FIN

pause
exit
