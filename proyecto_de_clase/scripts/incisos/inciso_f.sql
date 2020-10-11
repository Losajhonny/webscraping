create or replace procedure inciso_f
(
    -- parameros in / out
    param_equipo in varchar
)
is
-- variable locales
begin
    dbms_output.put_line('');
    dbms_output.put_line(  '  |   ' || rpad('id', 5)
                            || '  |   ' || lpad('year', 5)
                            || '  |   ' || lpad('nombre', 50)
                            || '  |   ' || lpad('pts', 5)
                            || '  |   ' || lpad('gf', 5)
                            || '  |   ' || lpad('gc', 5)
                            || '  |   ' || lpad('dif', 5)
                            || '  |   ' || lpad('pos', 5));
    dbms_output.put_line(  '  |   ' || rpad('=', 5, '=')
                            || '  |   ' || lpad('=', 5, '=')
                            || '  |   ' || lpad('=', 50, '=')
                            || '  |   ' || lpad('=', 5, '=')
                            || '  |   ' || lpad('=', 5, '=')
                            || '  |   ' || lpad('=', 5, '=')
                            || '  |   ' || lpad('=', 5, '=')
                            || '  |   ' || lpad('=', 5, '='));

    for tabla in
        (
            select * from (
                select
                    s1.id,
                    s1.year_ini,
                    s1.nombre,
                    s1.pts,
                    s1.gf,
                    s1.gc,
                    s1.dif,
                    row_number() over (partition by s1.id order by s1.id, s1.pts desc) pos
                from
                (
                    select
                        t.id,
                        t.year_ini,
                        e.nombre,
                        sum(case
                                when r.no_gf > r.no_gc then
                                    case
                                        when t.year_ini between 1980 and 1994 then 2
                                        when t.year_ini between 1995 and 2020 then 3 end
                                when r.no_gf = r.no_gc then 1
                                when r.no_gf < r.no_gc then 0 end) pts,
                        sum(r.no_gf) gf,
                        sum(r.no_gc) gc,
                        sum(r.no_gf) - sum(r.no_gc) dif
                    from
                        temporada t, jornada j, partido p, resultado r, equipo e
                    where
                            j.temporada_id = t.id
                        and p.jornada_id = j.id
                        and r.partido_id = p.id
                        and r.equipo_id = e.id
                        -- and t.year_ini between 1980 and 1994
                    group by t.id, t.year_ini, e.nombre
                ) s1
            ) s2
            where
                s2.nombre = param_equipo
            order by s2.year_ini desc
        )
    loop
        dbms_output.put_line(  '  |   ' || rpad(tabla.id, 5)
                                || '  |   ' || lpad(tabla.year_ini, 5)
                                || '  |   ' || lpad(tabla.nombre, 50)
                                || '  |   ' || lpad(tabla.pts, 5)
                                || '  |   ' || lpad(tabla.gf, 5)
                                || '  |   ' || lpad(tabla.gc, 5)
                                || '  |   ' || lpad(tabla.dif, 5)
                                || '  |   ' || lpad(tabla.pos, 5));
    end loop;
end;

set serveroutput on
exec inciso_f('Barcelona');