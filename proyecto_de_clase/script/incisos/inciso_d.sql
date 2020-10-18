/*
    d) Realizar una stored procedure que muestre que equipos descendieron y no
    aparecen en la temporada que se envíe por parámetro.
*/

create or replace procedure inciso_d
(
    -- parameros in / out
    param_year in integer
)
is
-- variable locales
begin
    dbms_output.put_line('');
    dbms_output.put_line(  '  |   ' || rpad('year', 5)
                        || '  |   ' || rpad('equipo', 50));
    dbms_output.put_line(  '  |   ' || rpad('=', 5, '=')
                        || '  |   ' || rpad('=', 50, '='));

    for tabla in
        (
            select
                s4.year_sum year,
                s4.equipo
            from
            (
                select
                    s3.equipo,
                    count(s3.equipo) cont_equipo,
                    sum(s3.year_ini) year_sum
                from
                (
                    (
                        select
                            *
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
                                    and t.year_ini = param_year
                                group by t.id, t.year_ini, e.nombre
                            ) s1
                        ) s2
                    )
                    union
                    (
                        select
                            *
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
                                    and t.year_ini = (param_year-1)
                                group by t.id, t.year_ini, e.nombre
                            ) s1
                        ) s2
                    )
                ) s3
                group by s3.equipo
            ) s4
            where s4.year_sum = (param_year-1)
        )
    loop
        dbms_output.put_line(  '  |   ' || rpad(tabla.year, 5)
                            || '  |   ' || rpad(tabla.equipo, 50));
    end loop;
end;

set serveroutput on
exec inciso_d(1982);
