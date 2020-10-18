/*
    c) Consulta que muestre los equipos que ha ganado la liga más veces en los últimos 20
    años (TOP 5)
*/

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