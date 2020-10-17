@echo off

::montar
SQLPLUS / AS SYSDBA @databaseMount.sql

::recuperar
RMAN TARGET / @recover.sql

::iniciar
SQLPLUS / AS SYSDBA @onDatabase.sql

pause
exit
