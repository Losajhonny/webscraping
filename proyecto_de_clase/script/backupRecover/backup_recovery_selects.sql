ALTER SYSTEM SWITCH LOGFILE;

SELECT * FROM user_tablespaces;

SELECT USERNAME, DEFAULT_TABLESPACE, TEMPORARY_TABLESPACE
    FROM DBA_USERS
    WHERE DEFAULT_TABLESPACE='PRACTICA2';
    
    
select log_mode from v$database;


alter session set "_ORACLE_SCRIPT"=true;
-- revisar archive log o no
select log_mode from v$database;

-- ubicacion de los archivos de control
select file_name from dba_data_files;
select name from v$controlfile;
select member from v$logfile;

-- ubicacion del archivo de parametros
show parameters spfile;

-- ubicacion zona fra
select * from v$parameter
where name = 'db_recovery_file_dest';

select * from v$RECOVERY_AREA_USAGE;

-- grabar en memoria y spfile
alter system set DB_RECOVERY_FILE_DEST = 'D:\FRA' SCOPE = BOTH;

-- forzar que se registre en zona fra
alter system switch logfile;


SELECT * FROM USER_TABLES;
SELECT * FROM user_tablespaces;