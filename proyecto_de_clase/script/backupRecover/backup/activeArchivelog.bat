@echo off

SQLPLUS / AS SYSDBA @activeArchivelog.sql

pause
exit
