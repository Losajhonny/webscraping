@echo off

echo #### INICIO

RMAN TARGET / @recover.sql

echo #### FIN

pause
exit
