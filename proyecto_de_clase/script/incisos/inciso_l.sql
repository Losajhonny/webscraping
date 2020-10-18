
-- TABLA TEMPORAL PARA EL BACKUP DE RESULTADO ----
CREATE GLOBAL  TEMPORARY TABLE TMP_RESULTADO
(
    id            INTEGER,
    no_gf         INTEGER ,
    no_gc         INTEGER ,
    no_puntos     INTEGER ,
    no_tamarilla  INTEGER ,
    no_troja      INTEGER ,
    equipo_id     INTEGER ,
    partido_id    INTEGER 
)
ON COMMIT PRESERVE ROWS -- GUARDA LOS DATOS HASTA QUE EL INICIO DE SESION SEA CERRADO

--ELIMINA LA TABLA TEMPORAL
DROP TABLE TMP_RESULTADO;
-- BORRA LOS REGISTRO DE LA TABLA TEMPORAL
TRUNCATE TABLE TMP_RESULTADO;

-- SELECCION DE DATOS DE REULTADO
SELECT * FROM TMP_RESULTADO;
SELECT COUNT(*) FROM TMP_RESULTADO;


execute BACKUP_RESUTLADO(1);


-- PROCEDIMIENTO QUE HACE UN BACKUP DE LA TABLA RESULTADO -----

create or replace PROCEDURE BACKUP_RESUTLADO(flag NUMBER)
IS
BEGIN
   EXECUTE IMMEDIATE 'TRUNCATE TABLE TMP_RESULTADO';
  INSERT INTO TMP_RESULTADO( id,no_gf,no_gc,no_puntos,no_tamarilla,no_troja,equipo_id,partido_id)
  SELECT 
    R.id,R.no_gf,R.no_gc,R.no_puntos,R.no_tamarilla,R.no_troja,R.equipo_id,R.partido_id 
  FROM RESULTADO R 
  --GROUP BY R.id,R.no_gf,R.no_gc,R.no_puntos,R.no_tamarilla,R.no_troja,R.equipo_id,R.partido_id
  ORDER BY R.ID ASC ;

  EXCEPTION
   WHEN OTHERS
   THEN
      DBMS_OUTPUT.put_line ('Truncate table TMP_RESULTADO failed.');
END;

EXEC BACKUP_RESUTLADO(1);

-- PROCEDIMIENTO QUE RESTARUA LA TABLA RESULTADO -----

create or replace PROCEDURE RESTORE_RESUTLADO(flag NUMBER)
IS
BEGIN
  EXECUTE IMMEDIATE 'TRUNCATE TABLE RESULTADO';
  INSERT INTO RESULTADO(no_gf,no_gc,no_puntos,no_tamarilla,no_troja,equipo_id,partido_id)
  SELECT
    R.no_gf,R.no_gc,R.no_puntos,R.no_tamarilla,R.no_troja,R.equipo_id,R.partido_id
  FROM TMP_RESULTADO R
  ORDER BY R.ID ASC
  ;
  EXCEPTION
   WHEN OTHERS
   THEN
      DBMS_OUTPUT.put_line ('Truncate table RESULTADO failed.');
END;

EXEC RESTORE_RESUTLADO(1);

---------------------------- PROCEDIMIENTO QUE MODIFICA TODOS LOS PARTIDOS DE UNA JORNADA Y UN ANIO DETERMINADO  CON LOS MISMO VALORES -------------

create or replace PROCEDURE MODIFICAR_RESULTADO_1
(
  YEAR_INI IN INTEGER,
  N_JORNADA IN INTEGER,
  GF IN INTEGER,
  GC IN INTEGER
)
IS
BEGIN

  UPDATE RESULTADO 
  SET NO_GF = GF, NO_GC = GC
  WHERE ID IN
  ( 
    SELECT R.ID
    FROM RESULTADO R, PARTIDO P, JORNADA J, TEMPORADA T
    WHERE 
      R.PARTIDO_ID = P.ID
    AND
      P.JORNADA_ID = J.ID
    AND 
      J.TEMPORADA_ID =T.ID
    AND
      T.YEAR_INI = YEAR_INI
    AND
      J.NUMERO = N_JORNADA
  );
  COMMIT;
END MODIFICAR_RESULTADO_2;

-- PRUEBA REALIZADA
EXEC MODIFICAR_RESULTADO_1(2019,1,15,0);
SELECT * FROM INCISO_J;
-----------------------  IMPRIME  TODAS LAS CONSULTAS PERO SE NECESITAN PEGAR  ----------------------------



VARIABLE CA VARCHAR2(100);
VARIABLE CB VARCHAR2(100);
VARIABLE CC VARCHAR2(100);
VARIABLE CD VARCHAR2(100);
VARIABLE CE VARCHAR2(100);
VARIABLE CF VARCHAR2(100);
VARIABLE CG VARCHAR2(100);
VARIABLE CH VARCHAR2(100);
VARIABLE CI VARCHAR2(100);
VARIABLE CJ VARCHAR2(100);
VARIABLE CK VARCHAR2(100);
EXEC :CA := '************************ INCISO A ****************************';
EXEC :CB := '************************ INCISO B ****************************';
EXEC :CC := '************************ INCISO C ****************************';
EXEC :CD := '************************ INCISO D ****************************';
EXEC :CE := '************************ INCISO E ****************************';
EXEC :CF := '************************ INCISO F ****************************';
EXEC :CG := '************************ INCISO G ****************************';
EXEC :CH := '************************ INCISO H ****************************';
EXEC :CI := '************************ INCISO I ****************************';
EXEC :CJ := '************************ INCISO J ****************************';
EXEC :CK := '************************ INCISO K ****************************';

--- CONSULATA A -----
PRINT CA;
set serveroutput on
exec inciso_a(1980, null, null);
--- CONSULATA B -----
PRINT CB;
select * from inciso_b;
--- CONSULATA C -----
PRINT CC;
select * from
(
    select
        s2.equipo,
        count(*) no_veces_ganadores
    from
    (
        select
            s1.id,
            s1.year_ini,
            s1.equipo,
            s1.pts,
            s1.gf,
            s1.gc,
            s1.dif,
            row_number() over (partition by s1.id order by s1.id, s1.pts desc, s1.dif desc, s1.gf desc, s1.tr asc, s1.ta asc) pos
        from
        (
            select
                t.id,
                t.year_ini,
                e.nombre equipo,
                sum(case
                        when r.no_gf > r.no_gc then
                            case
                                when t.year_ini between 1980 and 1994 then 2
                                when t.year_ini between 1995 and 2020 then 3 end
                        when r.no_gf = r.no_gc then 1
                        when r.no_gf < r.no_gc then 0 end) pts,
                sum(r.no_gf) gf,
                sum(r.no_gc) gc,
                sum(r.no_gf) - sum(r.no_gc) dif,
                sum(r.no_tamarilla) ta,
                sum(r.no_troja) tr
            from
                temporada t, jornada j, partido p, resultado r, equipo e
            where
                    j.temporada_id = t.id
                and p.jornada_id = j.id
                and r.partido_id = p.id
                and r.equipo_id = e.id
            group by t.id, t.year_ini, e.nombre
        ) s1
    ) s2
    where
            s2.pos = 1
        and s2.year_ini between 2000 and 2020
    group by s2.equipo
) s3
where rownum <= 5
order by no_veces_ganadores desc
;
--- CONSULATA D -----
PRINT CD;
set serveroutput on
exec inciso_d(1982);

--- CONSULATA E -----
PRINT CE;
select * from inciso_e
where equipo = 'Barcelona';

--- CONSULATA F -----
PRINT CF;
set serveroutput on
exec inciso_f('Barcelona');
--- CONSULATA G -----
PRINT CG;
SELECT 
  P.ID NO_PARTIDO,
  E1.NOMBRE EQ_LOCAL,
  E2.NOMBRE EQ_VISITANTE,
  R.NO_GF GOLES_LOCAL,
  R.NO_GC GOLES_VISITA
FROM EQUIPO E1, EQUIPO E2, PARTIDO P, RESULTADO R , JORNADA J, TEMPORADA T
WHERE E1.ID = P.LOCAL
AND E2.ID = P.VISITA
AND P.ID = R.PARTIDO_ID
AND P.LOCAL = R.EQUIPO_ID
AND J.ID = P.JORNADA_ID
AND T.ID = J.TEMPORADA_ID
AND T.YEAR_INI BETWEEN 1980 AND 2020
GROUP BY P.ID, E1.NOMBRE, E2.NOMBRE, R.NO_GF, R.NO_GC
ORDER BY MAX(ABS(R.NO_GF - R.NO_GC)) DESC
FETCH NEXT 10 ROWS ONLY
;
--- CONSULATA H -----
PRINT CH;
EXEC INCISO_H(2019);
--- CONSULATA I -----
PRINT CI;
exec inciso_i(2019);
--- CONSULATA J -----
PRINT CJ;
SELECT * FROM INCISO_J;
--- CONSULATA K -----
PRINT CK;  
  (
    SELECT
      'EQUIPO QUE MAS GANA' DESCRIPCION,
      E.NOMBRE EQUIPO,
      count(case when r.no_gf > r.no_gc then 1 end) PARTIDOS --PG
    FROM 
      EQUIPO E, RESULTADO R, PARTIDO P, JORNADA J, TEMPORADA T
    WHERE 
      E.ID = R.EQUIPO_ID
    AND P.ID = R.PARTIDO_ID
    AND P.JORNADA_ID = J.ID
    AND J.TEMPORADA_ID = T.ID
    GROUP BY E.NOMBRE
    ORDER BY PARTIDOS DESC
    FETCH NEXT 1 ROWS ONLY
  )
  UNION
  (
    SELECT
      'EQUIPO QUE MAS PIERDE' DESCRIPCION,E.NOMBRE EQUIPO,
      count(case when r.no_gf < r.no_gc then 1 end) PARTIDOS --PP
    FROM 
      EQUIPO E, RESULTADO R, PARTIDO P, JORNADA J, TEMPORADA T
    WHERE 
      E.ID = R.EQUIPO_ID
    AND P.ID = R.PARTIDO_ID
    AND P.JORNADA_ID = J.ID
    AND J.TEMPORADA_ID = T.ID
    GROUP BY E.NOMBRE
    ORDER BY PARTIDOS DESC
    FETCH NEXT 1 ROWS ONLY
  )
  UNION
  (
    SELECT
      'EQUIPO QUE MAS EMPATA' DESCRIPCION,E.NOMBRE EQUIPO,
      count(case when r.no_gf = r.no_gc then 1 end) PARTIDOS
    FROM 
      EQUIPO E, RESULTADO R, PARTIDO P, JORNADA J, TEMPORADA T
    WHERE 
      E.ID = R.EQUIPO_ID
    AND P.ID = R.PARTIDO_ID
    AND P.JORNADA_ID = J.ID
    AND J.TEMPORADA_ID = T.ID
    GROUP BY E.NOMBRE
    ORDER BY PARTIDOS DESC
    FETCH NEXT 1 ROWS ONLY
  )
;


-----------------------  IMPRIME  DESDE UN PROCEDIMIENTO ALMACENADO PERO  EN DESORDEN  ----------------------------

create or replace PROCEDURE PRUEBA
(
    FLAG NUMBER
)
IS
 CA VARCHAR2(100);
 CB VARCHAR2(100);
 CC VARCHAR2(100);
 CD VARCHAR2(100);
 CE VARCHAR2(100);
 CF VARCHAR2(100);
 CG VARCHAR2(100);
 CH VARCHAR2(100);
 CI VARCHAR2(100);
 CJ VARCHAR2(100);
 CK VARCHAR2(100);
 DEST      VARCHAR2(30000);
sql_stmt    VARCHAR2(200);
 incisoB    sys_refcursor;
 incisoC    sys_refcursor;
 incisoE    sys_refcursor;
 incisoG    sys_refcursor;
 incisoJ    sys_refcursor;
 incisok    sys_refcursor;
 
BEGIN
--    CA := '************************ INCISO A ****************************';
    CB := '************************ INCISO B ****************************';
    CC := '************************ INCISO C ****************************';
    CD := '************************ INCISO D ****************************';
    CE := '************************ INCISO E ****************************';
    CF := '************************ INCISO F ****************************';
    CG := '************************ INCISO G ****************************';
    CH := '************************ INCISO H ****************************';
    CI := '************************ INCISO I ****************************';
    CJ := '************************ INCISO J ****************************';
    CK := '************************ INCISO K ****************************';
    
    CB := '************************ INCISO B ****************************';
    dbms_output.put_line(CB);
    OPEN incisoB FOR select * from inciso_b;
     DBMS_SQL.RETURN_RESULT(incisoB);
     CC := '************************ INCISO C ****************************';
     dbms_output.put_line(CC);
    OPEN incisoC FOR
    select * from
    (
        select
            s2.equipo,
            count(*) no_veces_ganadores
        from
        (
            select
                s1.id,
                s1.year_ini,
                s1.equipo,
                s1.pts,
                s1.gf,
                s1.gc,
                s1.dif,
                row_number() over (partition by s1.id order by s1.id, s1.pts desc, s1.dif desc, s1.gf desc, s1.tr asc, s1.ta asc) pos
            from
            (
                select
                    t.id,
                    t.year_ini,
                    e.nombre equipo,
                    sum(case
                            when r.no_gf > r.no_gc then
                                case
                                    when t.year_ini between 1980 and 1994 then 2
                                    when t.year_ini between 1995 and 2020 then 3 end
                            when r.no_gf = r.no_gc then 1
                            when r.no_gf < r.no_gc then 0 end) pts,
                    sum(r.no_gf) gf,
                    sum(r.no_gc) gc,
                    sum(r.no_gf) - sum(r.no_gc) dif,
                    sum(r.no_tamarilla) ta,
                    sum(r.no_troja) tr
                from
                    temporada t, jornada j, partido p, resultado r, equipo e
                where
                        j.temporada_id = t.id
                    and p.jornada_id = j.id
                    and r.partido_id = p.id
                    and r.equipo_id = e.id
                group by t.id, t.year_ini, e.nombre
            ) s1
        ) s2
        where
                s2.pos = 1
            and s2.year_ini between 2000 and 2020
        group by s2.equipo
    ) s3
    where rownum <= 5
    order by no_veces_ganadores desc
    ;
    DBMS_SQL.RETURN_RESULT(incisoC);
    
    CE := '************************ INCISO E ****************************';
    dbms_output.put_line(CE);
    OPEN incisoE FOR Select * from inciso_e where equipo = 'Barcelona';
     DBMS_SQL.RETURN_RESULT(incisoE);
    CG := '************************ INCISO G ****************************'; 
    dbms_output.put_line(CG);
    OPEN incisoG FOR  
      SELECT 
        P.ID NO_PARTIDO,
        E1.NOMBRE EQ_LOCAL,
        E2.NOMBRE EQ_VISITANTE,
        R.NO_GF GOLES_LOCAL,
        R.NO_GC GOLES_VISITA
      FROM EQUIPO E1, EQUIPO E2, PARTIDO P, RESULTADO R , JORNADA J, TEMPORADA T
      WHERE E1.ID = P.LOCAL
      AND E2.ID = P.VISITA
      AND P.ID = R.PARTIDO_ID
      AND P.LOCAL = R.EQUIPO_ID
      AND J.ID = P.JORNADA_ID
      AND T.ID = J.TEMPORADA_ID
      AND T.YEAR_INI BETWEEN 1980 AND 2020
      GROUP BY P.ID, E1.NOMBRE, E2.NOMBRE, R.NO_GF, R.NO_GC
      ORDER BY MAX(ABS(R.NO_GF - R.NO_GC)) DESC
      FETCH NEXT 10 ROWS ONLY
      ; 
     DBMS_SQL.RETURN_RESULT(incisoG);
     
     
     CJ := '************************ INCISO J ****************************'; 
    dbms_output.put_line(CJ);
    OPEN incisoJ FOR 
    SELECT * FROM INCISO_J USING;
    DBMS_SQL.RETURN_RESULT(incisoJ,FALSE);
    
    
   Ck := '************************ INCISO k ****************************';    
   dbms_output.put_line(Ck);
  OPEN incisok FOR
  select * from (
  (
    SELECT
      'EQUIPO QUE MAS GANA' DESCRIPCION,
      E.NOMBRE EQUIPO,
      count(case when r.no_gf > r.no_gc then 1 end) PARTIDOS --PG
    FROM 
      EQUIPO E, RESULTADO R, PARTIDO P, JORNADA J, TEMPORADA T
    WHERE 
      E.ID = R.EQUIPO_ID
    AND P.ID = R.PARTIDO_ID
    AND P.JORNADA_ID = J.ID
    AND J.TEMPORADA_ID = T.ID
    GROUP BY E.NOMBRE
    ORDER BY PARTIDOS DESC
    FETCH NEXT 1 ROWS ONLY
  )
  UNION
  (
    SELECT
      'EQUIPO QUE MAS PIERDE' DESCRIPCION,E.NOMBRE EQUIPO,
      count(case when r.no_gf < r.no_gc then 1 end) PARTIDOS --PP
    FROM 
      EQUIPO E, RESULTADO R, PARTIDO P, JORNADA J, TEMPORADA T
    WHERE 
      E.ID = R.EQUIPO_ID
    AND P.ID = R.PARTIDO_ID
    AND P.JORNADA_ID = J.ID
    AND J.TEMPORADA_ID = T.ID
    GROUP BY E.NOMBRE
    ORDER BY PARTIDOS DESC
    FETCH NEXT 1 ROWS ONLY
  )
  UNION
  (
    SELECT
      'EQUIPO QUE MAS EMPATA' DESCRIPCION,E.NOMBRE EQUIPO,
      count(case when r.no_gf = r.no_gc then 1 end) PARTIDOS
    FROM 
      EQUIPO E, RESULTADO R, PARTIDO P, JORNADA J, TEMPORADA T
    WHERE 
      E.ID = R.EQUIPO_ID
    AND P.ID = R.PARTIDO_ID
    AND P.JORNADA_ID = J.ID
    AND J.TEMPORADA_ID = T.ID
    GROUP BY E.NOMBRE
    ORDER BY PARTIDOS DESC
    FETCH NEXT 1 ROWS ONLY
  )
  );
    DBMS_SQL.RETURN_RESULT(incisok);
    
    
    CA := '************************ INCISO A ****************************';
    dbms_output.put_line(CA);
    inciso_a(1980, null, null);
    CD := '************************ INCISO D ****************************';
    dbms_output.put_line(CD);
     inciso_d(1982);
    CF := '************************ INCISO F ****************************';
    dbms_output.put_line(CF);
    inciso_f('Barcelona');
    CH := '************************ INCISO H ****************************';
    dbms_output.put_line(CH);
    INCISO_H(2019);
    CI := '************************ INCISO I ****************************';
    dbms_output.put_line(CI);
    inciso_i(2019);
--  inciso_a(1980, null, null);
--  sql_stmt := 'SELECT * FROM RESULTADO';
--  EXECUTE IMMEDIATE sql_stmt
--  INTO tmp;
 -- print dest;
--  dbms_output.put_line(dest.no_gf);
END;