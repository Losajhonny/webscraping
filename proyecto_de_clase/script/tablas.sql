-- Generado por Oracle SQL Developer Data Modeler 20.2.0.167.1538
--   en:        2020-10-03 16:57:25 CST
--   sitio:      Oracle Database 12c
--   tipo:      Oracle Database 12c



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE alerta (
    temporada_id  INTEGER NOT NULL,
    id            INTEGER GENERATED ALWAYS AS IDENTITY NOT NULL,
    comentario    VARCHAR2(1000) NOT NULL
);

--alter table alerta modify comentario VARCHAR2(1000);

ALTER TABLE alerta ADD CONSTRAINT alerta_pk PRIMARY KEY ( id );

CREATE TABLE equipo (
    id      INTEGER GENERATED ALWAYS AS IDENTITY NOT NULL,
    nombre  VARCHAR2(50) NOT NULL
);

ALTER TABLE equipo ADD CONSTRAINT equipo_pk PRIMARY KEY ( id );

CREATE TABLE jornada (
    id            INTEGER GENERATED ALWAYS AS IDENTITY NOT NULL,
    nombre        VARCHAR2(50) NOT NULL,
    numero        INTEGER NOT NULL,
    fecha_ini     DATE NOT NULL,
    fecha_fin     DATE NOT NULL,
    temporada_id  INTEGER NOT NULL
);

ALTER TABLE jornada ADD CONSTRAINT jornada_pk PRIMARY KEY ( id );

CREATE TABLE partido (
    id          INTEGER GENERATED ALWAYS AS IDENTITY NOT NULL,
    fecha       DATE NOT NULL,
    jornada_id  INTEGER NOT NULL,
    local   INTEGER NOT NULL,
    visita  INTEGER NOT NULL
);

ALTER TABLE partido ADD CONSTRAINT partido_pk PRIMARY KEY ( id );

CREATE TABLE resultado (
    id            INTEGER GENERATED ALWAYS AS IDENTITY NOT NULL,
    no_gf         INTEGER NOT NULL,
    no_gc         INTEGER NOT NULL,
    no_puntos     INTEGER NOT NULL,
    no_tamarilla  INTEGER NOT NULL,
    no_troja      INTEGER NOT NULL,
    equipo_id     INTEGER NOT NULL,
    partido_id    INTEGER NOT NULL
);

ALTER TABLE resultado ADD CONSTRAINT resultado_pk PRIMARY KEY ( id );

CREATE TABLE temporada (
    id        INTEGER GENERATED ALWAYS AS IDENTITY NOT NULL,
    year_ini  INTEGER NOT NULL,
    year_fin  INTEGER NOT NULL
);

ALTER TABLE temporada ADD CONSTRAINT temporada_pk PRIMARY KEY ( id );

ALTER TABLE alerta
    ADD CONSTRAINT alerta_temporada_fk FOREIGN KEY ( temporada_id )
        REFERENCES temporada ( id )
            ON DELETE CASCADE;

ALTER TABLE jornada
    ADD CONSTRAINT jornada_temporada_fk FOREIGN KEY ( temporada_id )
        REFERENCES temporada ( id )
            ON DELETE CASCADE;

ALTER TABLE partido
    ADD CONSTRAINT partido_equipo_fk FOREIGN KEY ( local )
        REFERENCES equipo ( id )
            ON DELETE CASCADE;

ALTER TABLE partido
    ADD CONSTRAINT partido_equipo_fkv2 FOREIGN KEY ( visita )
        REFERENCES equipo ( id )
            ON DELETE CASCADE;

ALTER TABLE partido
    ADD CONSTRAINT partido_jornada_fk FOREIGN KEY ( jornada_id )
        REFERENCES jornada ( id )
            ON DELETE CASCADE;

ALTER TABLE resultado
    ADD CONSTRAINT resultado_equipo_fk FOREIGN KEY ( equipo_id )
        REFERENCES equipo ( id )
            ON DELETE CASCADE;

ALTER TABLE resultado
    ADD CONSTRAINT resultado_partido_fk FOREIGN KEY ( partido_id )
        REFERENCES partido ( id )
            ON DELETE CASCADE;



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             6
-- CREATE INDEX                             0
-- ALTER TABLE                             13
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- TSDP POLICY                              0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
