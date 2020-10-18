/*
    a) Realizar un stored procedure que devuelva la tabla de posiciones en cualquier
    momento. Como parámetro debe recibir la temporada (id o año) y tener dos
    parámetros excluyentes, el número de jornada y la fecha. Si recibe la fecha calcula
    la tabla a la fecha indicada aun así no haya terminado la jornada, y si recibe la
    jornada debe traer las posiciones hasta esa jornada. Si ambos están vacíos toma
    como si fuera el final de temporada. 
*/

create or replace procedure inciso_a
(
    -- parameros in / out
    param_year in integer,
    param_jorn in integer default -1,
    param_date in varchar default null
)
is
-- variable locales
begin
    dbms_output.put_line('');
    dbms_output.put_line(  '  |   ' || rpad('equipo', 50)
                            || '  |   ' || lpad('pts', 5)
                            || '  |   ' || lpad('pj', 5)
                            || '  |   ' || lpad('pg', 5)
                            || '  |   ' || lpad('pe', 5)
                            || '  |   ' || lpad('pp', 5)
                            || '  |   ' || lpad('gf', 5)
                            || '  |   ' || lpad('gc', 5)
                            || '  |   ' || lpad('df', 5)
                            || '  |   ' || lpad('ta', 5)
                            || '  |   ' || lpad('tr', 5));
    dbms_output.put_line(  '  |   ' || rpad('=', 50, '=')
                            || '  |   ' || lpad('=', 5, '=')
                            || '  |   ' || lpad('=', 5, '=')
                            || '  |   ' || lpad('=', 5, '=')
                            || '  |   ' || lpad('=', 5, '=')
                            || '  |   ' || lpad('=', 5, '=')
                            || '  |   ' || lpad('=', 5, '=')
                            || '  |   ' || lpad('=', 5, '=')
                            || '  |   ' || lpad('=', 5, '=')
                            || '  |   ' || lpad('=', 5, '=')
                            || '  |   ' || lpad('=', 5, '='));
    
    if param_date is not null then
        for tabla in
            (
                select
                    e.nombre equipo,
                    sum(case    when r.no_gf > r.no_gc then
                                    case
                                        when t.year_ini between 1980 and 1994 then 2
                                        when t.year_ini between 1995 and 2020 then 3 end
                                when r.no_gf = r.no_gc then 1
                                when r.no_gf < r.no_gc then 0 end) pts,
                    count(r.id) pj,
                    count(case when r.no_gf > r.no_gc then 1 end) pg,
                    count(case when r.no_gf = r.no_gc then 1 end) pe,
                    count(case when r.no_gf < r.no_gc then 1 end) pp,
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
                    and t.year_ini = param_year
                    and p.fecha <= to_date(param_date, 'DD-MM-YYYY')
                group by e.nombre
                order by pts desc, dif desc, gf desc, tr asc, ta asc
            )
        loop
            dbms_output.put_line(  '  |   ' || rpad(tabla.equipo, 50)
                                || '  |   ' || lpad(tabla.pts, 5)
                                || '  |   ' || lpad(tabla.pj, 5)
                                || '  |   ' || lpad(tabla.pg, 5)
                                || '  |   ' || lpad(tabla.pe, 5)
                                || '  |   ' || lpad(tabla.pp, 5)
                                || '  |   ' || lpad(tabla.gf, 5)
                                || '  |   ' || lpad(tabla.gc, 5)
                                || '  |   ' || lpad(tabla.dif, 5)
                                || '  |   ' || lpad(tabla.ta, 5)
                                || '  |   ' || lpad(tabla.tr, 5));
        end loop;
    elsif param_jorn != -1 then
        for tabla in
            (
                select
                    e.nombre equipo,
                    sum(case    when r.no_gf > r.no_gc then
                                    case
                                        when t.year_ini between 1980 and 1994 then 2
                                        when t.year_ini between 1995 and 2020 then 3 end
                                when r.no_gf = r.no_gc then 1
                                when r.no_gf < r.no_gc then 0 end) pts,
                    count(r.id) pj,
                    count(case when r.no_gf > r.no_gc then 1 end) pg,
                    count(case when r.no_gf = r.no_gc then 1 end) pe,
                    count(case when r.no_gf < r.no_gc then 1 end) pp,
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
                    and t.year_ini = param_year
                    and j.numero <= param_jorn
                group by e.nombre
                order by pts desc, dif desc, gf desc, tr asc, ta asc
            )
        loop
            dbms_output.put_line(  '  |   ' || rpad(tabla.equipo, 50)
                                || '  |   ' || lpad(tabla.pts, 5)
                                || '  |   ' || lpad(tabla.pj, 5)
                                || '  |   ' || lpad(tabla.pg, 5)
                                || '  |   ' || lpad(tabla.pe, 5)
                                || '  |   ' || lpad(tabla.pp, 5)
                                || '  |   ' || lpad(tabla.gf, 5)
                                || '  |   ' || lpad(tabla.gc, 5)
                                || '  |   ' || lpad(tabla.dif, 5)
                                || '  |   ' || lpad(tabla.ta, 5)
                                || '  |   ' || lpad(tabla.tr, 5));
        end loop;
    else
        for tabla in
            (
                select
                    e.nombre equipo,
                    sum(case    when r.no_gf > r.no_gc then
                                    case
                                        when t.year_ini between 1980 and 1994 then 2
                                        when t.year_ini between 1995 and 2020 then 3 end
                                when r.no_gf = r.no_gc then 1
                                when r.no_gf < r.no_gc then 0 end) pts,
                    count(r.id) pj,
                    count(case when r.no_gf > r.no_gc then 1 end) pg,
                    count(case when r.no_gf = r.no_gc then 1 end) pe,
                    count(case when r.no_gf < r.no_gc then 1 end) pp,
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
                    and t.year_ini = param_year
                group by e.nombre
                order by pts desc, dif desc, gf desc, tr asc, ta asc
            )
        loop
            dbms_output.put_line(  '  |   ' || rpad(tabla.equipo, 50)
                                || '  |   ' || lpad(tabla.pts, 5)
                                || '  |   ' || lpad(tabla.pj, 5)
                                || '  |   ' || lpad(tabla.pg, 5)
                                || '  |   ' || lpad(tabla.pe, 5)
                                || '  |   ' || lpad(tabla.pp, 5)
                                || '  |   ' || lpad(tabla.gf, 5)
                                || '  |   ' || lpad(tabla.gc, 5)
                                || '  |   ' || lpad(tabla.dif, 5)
                                || '  |   ' || lpad(tabla.ta, 5)
                                || '  |   ' || lpad(tabla.tr, 5));
        end loop;
    end if;
exception
    when others then dbms_output.put_line('error');
end;

set serveroutput on
exec inciso_a(1980, null, null);
--102, '06/09/1980');
