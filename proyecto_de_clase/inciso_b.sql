select 
    --s3.year_ini
    *
from (
    select
        s2.year_ini, s2.pos, s2.equipo, s2.pts
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
            row_number() over (partition by s1.id order by s1.id, s1.pts desc) pos
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
                sum(r.no_gf) - sum(r.no_gc) dif
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
    where pos between 1 and 4
) s3
--group by s3.year_ini
;