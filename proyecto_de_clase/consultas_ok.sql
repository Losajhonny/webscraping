-- inciso a
select
    e.nombre equipo,
    sum(case 
                when r.no_gf > r.no_gc then
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
    r.partido_id = p.id
and r.equipo_id = e.id
and p.jornada_id = j.id
and j.temporada_id = t.id
and t.year_ini = 1980
and (j.numero <= 42 /*p.fecha <= TO_DATE('03/09/1995', 'DD-MM-YYYY')*/)
group by e.nombre
order by pts desc, dif asc
;

-- inciso b
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
;

-- inciso c
select * from
(
    select
        s2.equipo,
        count(*) no
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
    where
            s2.pos = 1
        and s2.year_ini between 2000 and 2020
    group by s2.equipo
) s3
where rownum <= 5
order by no desc
;

-- inciso d
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
    where
        s1.year_ini = 1900
    order by s1.pts
) s2
where rownum <= 3
order by s2.pts desc
;

-- inciso f
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
    s2.nombre = 'Barcelona'
order by s2.year_ini desc
;