--  Vista que muestre, cuántos goles se anotaron en cada temporada, que equipo anoto
-- más, que equipo anoto menos.



create or replace FUNCTION get_equipos
( t_year_ini NUMBER,t_year_fin NUMBER)
RETURN VARCHAR
IS
   EQ VARCHAR2(200) := '-';
BEGIN
   SELECT  LISTAGG(TMP2.EQ,' , ') WITHIN GROUP (ORDER BY TMP2.EQ) INTO EQ
    FROM
      TEMPORADA T2,
      (
      SELECT TMP.ID TID, CONCAT(CONCAT(TMP.NE,' ' ),TMP.GF) EQ
      FROM
      (
          (     
            SELECT 
              T.ID,
              E.NOMBRE NE,
              SUM(R.NO_GF) GF
            FROM 
              EQUIPO E, RESULTADO R, PARTIDO P, JORNADA J, TEMPORADA T
            WHERE 
              E.ID = R.EQUIPO_ID
            AND P.ID = R.PARTIDO_ID
            AND P.JORNADA_ID = J.ID
            AND J.TEMPORADA_ID = T.ID
            AND T.YEAR_INI = t_year_ini
            AND T.YEAR_FIN = t_year_fin
            GROUP BY T.ID,E.NOMBRE
            ORDER BY GF DESC
            FETCH NEXT 1 ROWS ONLY
          )
          UNION
          (
            SELECT
              T.ID,
              E.NOMBRE NE,
              SUM(R.NO_GF) GF
            FROM 
              EQUIPO E, RESULTADO R, PARTIDO P, JORNADA J, TEMPORADA T
            WHERE 
              E.ID = R.EQUIPO_ID
            AND P.ID = R.PARTIDO_ID
            AND P.JORNADA_ID = J.ID
            AND J.TEMPORADA_ID = T.ID
            AND T.YEAR_INI = t_year_ini
            AND T.YEAR_FIN = t_year_fin
            GROUP BY T.ID,E.NOMBRE
            ORDER BY GF ASC
            FETCH NEXT 1 ROWS ONLY
          )
        )TMP
      )TMP2
      WHERE T2.ID = TMP2.TID;
   RETURN (EQ);
END get_equipos;
  


-- PARA PROBAR LA FUNCION
SELECT GET_EQUIPOS(2019,2020) FROM DUAL;


-- VISTA
CREATE VIEW INCISO_J AS
SELECT 
  T.YEAR_INI TEMPORADA_INICIO,
  T.YEAR_FIN TEMPORADA_FIN,
  GET_EQUIPOS(T.YEAR_INI,T.YEAR_FIN) EQUIPOS
FROM
  TEMPORADA T
ORDER BY T.YEAR_INI ASC
;

SELECT * FROM INCISO_J
  