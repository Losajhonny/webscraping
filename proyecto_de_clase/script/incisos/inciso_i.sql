--Realizar un stored procedure que la temporada (id o año) y que devuelva el historial
--de los equipos que han ocupado el último puesto de la liga de inicio a fin de
--temporada, con fechas y puntos.

create or replace PROCEDURE inciso_i
 (
    param_year in INTEGER default -1,
    param_id in INTEGER default -1
  )
  IS
  BEGIN
    dbms_output.put_line('');
    dbms_output.put_line(  '  |   ' || rpad('equipo', 50)
                            || '  |   ' || lpad('pts', 5)
                            || '  |   ' || lpad('fecha_ini', 10)
                            || '  |   ' || lpad('fecha_fin', 10)
                            || '  |   ' || lpad('jornada', 15));
    dbms_output.put_line(  '  |   ' || rpad('=', 50, '=')
                            || '  |   ' || lpad('=', 5, '=')
                            || '  |   ' || lpad('=', 10, '=')
                            || '  |   ' || lpad('=', 10, '=')
                            || '  |   ' || lpad('=', 15, '='));
    IF param_year <> -1 THEN
    
      DECLARE 
        CURSOR CF_JOR IS
          SELECT J.FECHA_INI, J.FECHA_FIN
          FROM JORNADA J , TEMPORADA T
          WHERE J.TEMPORADA_ID = T.ID 
          AND T.YEAR_INI = param_year;
          F_INI DATE;
          F_INI_J DATE;
          F_FIN_J DATE;
          NJ VARCHAR(40);
          NE VARCHAR(80);
          PTS INTEGER ;
          CONT NUMBER := 0;
        BEGIN
          OPEN CF_JOR;
          LOOP
            FETCH CF_JOR INTO F_INI_J,F_FIN_J;
            -- EMPIEZO A OBTENER LOS DATOS 
            IF CONT = 0 THEN 
              F_INI := F_INI_J;
              CONT := CONT + 1;
            END IF;
            
            SELECT TMP.NE, TMP.PTS, TMP.NJ
            INTO NE,PTS, NJ
            FROM 
              (
                SELECT 
                  E.NOMBRE NE,
                  SUM( 
                      CASE 
                        WHEN R.NO_GF > R.NO_GC THEN 
                          CASE
                            WHEN T.YEAR_INI BETWEEN 1980 AND 1994 THEN 2
                            WHEN T.YEAR_INI BETWEEN 1995 AND 2020 THEN 3
                          END
                        WHEN R.NO_GF = R.NO_GC THEN 1
                        WHEN R.NO_GF < R.NO_GC THEN 0
                      END
                    ) PTS,
                  SUM(R.NO_GF) GF,
                  SUM(R.NO_GC) GC,
                  SUM(R.NO_TAMARILLA) TA,
                  SUM(R.NO_TROJA) TR,
                  sum(r.no_gf) - sum(r.no_gc) dif,
                  (SELECT J2.NOMBRE FROM JORNADA J2 WHERE J2.FECHA_INI = F_INI_J) NJ
                FROM 
                  EQUIPO E, RESULTADO R, PARTIDO P, JORNADA J, TEMPORADA T
                WHERE 
                  E.ID = R.EQUIPO_ID
                AND P.ID = R.PARTIDO_ID
                AND P.JORNADA_ID = J.ID
                AND J.TEMPORADA_ID = T.ID
                AND J.FECHA_INI  BETWEEN F_INI AND F_FIN_J 
                GROUP BY E.NOMBRE
                ORDER BY PTS ASC, dif asc,GF asc, TR desc,TA desc 
                FETCH NEXT 1 ROWS ONLY
              ) TMP
              ;
            EXIT WHEN CF_JOR%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE(
                                  '  |   ' || rpad(NE,50) 
                               || '  |   ' || lpad(PTS,5) 
                               || '  |   ' || lpad(F_INI_J,10)
                               || '  |   ' || lpad(F_FIN_J,10)
                               || '  |   ' || lpad(NJ,15)
                                );
          END LOOP;
          CLOSE CF_JOR;
          --DBMS_OUTPUT.PUT_LINE(TO_CHAR(F_INI,'DD-MM-YYYY'));
        END;
    ELSIF param_id <> -1 THEN
      DECLARE 
        CURSOR CF_JOR IS
          SELECT J.FECHA_INI, J.FECHA_FIN
          FROM JORNADA J , TEMPORADA T
          WHERE J.TEMPORADA_ID = T.ID 
          AND T.ID = param_id;
          F_INI DATE;
          F_INI_J DATE;
          F_FIN_J DATE;
          NJ VARCHAR(40);
          NE VARCHAR(80);
          PTS INTEGER ;
          CONT NUMBER := 0;
        BEGIN
          OPEN CF_JOR;
          LOOP
            FETCH CF_JOR INTO F_INI_J,F_FIN_J;
            -- EMPIEZO A OBTENER LOS DATOS 
            IF CONT = 0 THEN 
              F_INI := F_INI_J;
              CONT := CONT + 1;
            END IF;
            
            SELECT TMP.NE, TMP.PTS, TMP.NJ
            INTO NE,PTS, NJ
            FROM 
              (
                SELECT 
                  E.NOMBRE NE,
                  SUM( 
                      CASE 
                        WHEN R.NO_GF > R.NO_GC THEN 
                          CASE
                            WHEN T.YEAR_INI BETWEEN 1980 AND 1994 THEN 2
                            WHEN T.YEAR_INI BETWEEN 1995 AND 2020 THEN 3
                          END
                        WHEN R.NO_GF = R.NO_GC THEN 1
                        WHEN R.NO_GF < R.NO_GC THEN 0
                      END
                    ) PTS,
                  SUM(R.NO_GF) GF,
                  SUM(R.NO_GC) GC,
                  SUM(R.NO_TAMARILLA) TA,
                  SUM(R.NO_TROJA) TR,
                  sum(r.no_gf) - sum(r.no_gc) dif,
                  (SELECT J2.NOMBRE FROM JORNADA J2 WHERE J2.FECHA_INI = F_INI_J) NJ
                FROM 
                  EQUIPO E, RESULTADO R, PARTIDO P, JORNADA J, TEMPORADA T
                WHERE 
                  E.ID = R.EQUIPO_ID
                AND P.ID = R.PARTIDO_ID
                AND P.JORNADA_ID = J.ID
                AND J.TEMPORADA_ID = T.ID
                AND J.FECHA_INI  BETWEEN F_INI AND F_FIN_J 
                GROUP BY E.NOMBRE
                ORDER BY PTS ASC, dif asc,GF asc, TR desc,TA desc 
                FETCH NEXT 1 ROWS ONLY
              ) TMP
              ;
            EXIT WHEN CF_JOR%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE(
                                  '  |   ' || rpad(NE,50) 
                               || '  |   ' || lpad(PTS,5) 
                               || '  |   ' || lpad(F_INI_J,10)
                               || '  |   ' || lpad(F_FIN_J,10)
                               || '  |   ' || lpad(NJ,15)
                                );
          END LOOP;
          CLOSE CF_JOR;
          --DBMS_OUTPUT.PUT_LINE(TO_CHAR(F_INI,'DD-MM-YYYY'));
        END;
    END IF;
  END;


exec inciso_i(2019);