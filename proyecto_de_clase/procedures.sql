drop table alerta;
drop table resultado;
drop table partido;
drop table equipo;
drop table jornada;
drop table temporada;

drop procedure insert_temporada;
drop procedure insert_alerta;
drop procedure insert_jornada;
drop procedure insert_partido;

delete from alerta;
delete from resultado;
delete from partido;
delete from equipo;
delete from jornada;
delete from temporada;
commit;

create or replace procedure insert_temporada
( v_year_ini in integer, v_year_fin in integer )
is
begin
    insert into temporada (year_ini, year_fin) values (v_year_ini, v_year_fin);
end;

create or replace procedure insert_alerta
( v_year_ini in integer, v_year_fin in integer, v_comentario in varchar )
is
begin
    insert into alerta(comentario, temporada_id)
    select v_comentario, t.id from temporada t
    where year_ini = v_year_ini and year_fin = v_year_fin;
end;

create or replace procedure insert_jornada
(
    v_nombre in varchar,
    v_numero in integer,
    v_fecha_ini in varchar,
    v_fecha_fin in varchar,
    v_year_ini in integer,
    v_year_fin in integer
)
is
begin
    insert into jornada(nombre, numero, fecha_ini, fecha_fin, temporada_id)
    select v_nombre,
            v_numero,
            to_date(v_fecha_ini, 'DD-MM-YYYY'),
            to_date(v_fecha_fin, 'DD-MM-YYYY'),
            t.id
    from temporada t
    where year_ini = v_year_ini and year_fin = v_year_fin;
end;

create or replace procedure insert_partido
(
    v_fecha in varchar,
    v_ta_local in integer,
    v_tr_local in integer,
    v_local in varchar,
    v_gol_local in integer,
    v_gol_visit in integer,
    v_visit in varchar,
    v_ta_visit in integer,
    v_tr_visit in integer,
    v_num_jornada in integer,
    v_year_ini in integer,
    v_year_fin in integer
)
is
    cont_equipo integer;
    id_local integer;
    id_visit integer;
    id_jornada integer;
    id_partido integer;
    pts_local integer;
    pts_visit integer;
    d_fecha date;
begin
    id_local := 0;
    id_visit := 0;
    id_jornada := 0;
    id_partido := 0;
    pts_local := 0;
    pts_visit := 0;
    d_fecha := to_date(v_fecha, 'DD-MM-YYYY');
    
    -- insert nombre equipo local
    cont_equipo := 0;
    select count(*) into cont_equipo from equipo
    where nombre = v_local;
    
    if (cont_equipo = 0) then
        insert into equipo (nombre) values (v_local);
    end if;
    
    -- insert nombre equipo visit
    cont_equipo := 0;
    select count(*) into cont_equipo from equipo
    where nombre = v_visit;
    
    if (cont_equipo = 0) then
        insert into equipo (nombre) values (v_visit);
    end if;
    
    -- recuperar info
    select id into id_local from equipo
    where nombre = v_local;
    
    select id into id_visit from equipo
    where nombre = v_visit;
    
    select j.id into id_jornada
    from temporada t, jornada j
    where
        t.year_ini = v_year_ini and t.year_fin = v_year_fin
        and j.temporada_id = t.id
        and j.numero = v_num_jornada;
    
    -- insert partido
    insert into partido (fecha, jornada_id, local, visita)
    values (d_fecha, id_jornada, id_local, id_visit);
    
    -- recuperar info partido
    select id into id_partido from partido
    where fecha = d_fecha and jornada_id = id_jornada and local = id_local and visita = id_visit;
    
    -- calculando puntos
    if (v_gol_local = v_gol_visit) then
        pts_local := 1;
        pts_visit := 1;
    elsif (v_gol_local > v_gol_visit) then
        pts_local := 3;
        pts_visit := 0;
    else
        pts_local := 0;
        pts_visit := 3;
    end if;
    
    -- insert resultados
    insert into resultado (no_gf, no_gc, no_puntos, no_tamarilla, no_troja, equipo_id, partido_id)
    values (v_gol_local, v_gol_visit, pts_local, v_ta_local, v_tr_local, id_local, id_partido);
    
    insert into resultado (no_gf, no_gc, no_puntos, no_tamarilla, no_troja, equipo_id, partido_id)
    values (v_gol_visit, v_gol_local, pts_visit, v_ta_visit, v_tr_visit, id_visit, id_partido);
end;
