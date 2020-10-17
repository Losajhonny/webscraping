@echo off

rman target / @deleteBackup.sql

pause
exit
