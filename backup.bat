@echo off

echo ##### Backup - Proyecto de clase
echo ##### Activar modo ARCHIVELOG

::sqlplus / as sysdba @backup.sql

pause
exit
