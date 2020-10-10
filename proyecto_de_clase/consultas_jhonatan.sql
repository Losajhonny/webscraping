/*
    parametros obligatorios
        -   id o a�o de temporada   (T)
        
    parametros excluyentes
        -   numero de jornada       (J)
        -   fecha                   (F)
        
    J       F
    no      si      calcular tabla hasta esa fecha indicada aunque no se haya terminado la jornada
    si      no      calcular tabla hasta el numero de jornada
    no      no      calcular tabla total
*/
select * from resultado;
select * from resultado
pivot
( sum(id) pts for id in ('puesto1', 'pts'));


select (
select  from
(
    select
        eq.nombre equipo,
        sum(case when r.no_gf > r.no_gc then 3
                 when r.no_gf = r.no_gc then 1
                 when r.no_gf < r.no_gc then 0 end) pts,
        sum(r.no_gf) gf,
        sum(r.no_gc) gc,
        sum(r.no_gf) - sum(r.no_gc) dif
    from
        resultado r, partido p, equipo eq, jornada j--, temporada t
    where
            r.partido_id = p.id
        and r.equipo_id = eq.id
        and p.jornada_id = j.id
        and j.temporada_id = t.id
        and t.year_ini = 2001
    group by eq.nombre order by pts desc
)
where rownum <= 1
) from temporada t
;

select
    eq.nombre equipo,
    sum(case when r.no_gf > r.no_gc then 3
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
    resultado r, partido p, equipo eq, jornada j, temporada t
where
    r.partido_id = p.id
and r.equipo_id = eq.id
and p.jornada_id = j.id
and j.temporada_id = t.id
and t.year_ini = 1980
and (j.numero <= 42 /*p.fecha <= TO_DATE('03/09/1995', 'DD-MM-YYYY')*/)
group by eq.nombre
order by pts desc, dif asc
;

select
    (
        select eq.nombre
        from
            resultado r, partido p, jornada j
        where
            r.
        and rownum <= 1
    )
from
    temporada t
where rownum <= 10
order by t.year_ini desc
;

select
(
    select
        eq.nombre
    from
        resultado r, partido p, equipo eq, jornada j
    where
        r.equipo_id = eq.id
    and r.partido_id = p.id
    and p.jornada_id = j.id
    and j.temporada_id = t.id
    and rownum = 1
    group by eq.nombre
) puesto1
from temporada t
where rownum <= 10
;

select * from RESULTADO;


SELECT
    COUNT (*),
    SUM(CASE WHEN R.NO_GF > R.nO_GC THEN 3
             WHEN R.NO_GF = R.nO_GC THEN 1
             WHEN R.NO_GF < R.nO_GC THEN 0 END) PTS
FROM
    RESULTADO R, EQUIPO E, PARTIDO P, JORNADA J, TEMPORADA T
WHERE
        R.EQUIPO_ID = E.ID
    AND R.PARTIDO_ID = P.ID
    AND P.JORNADA_ID = J.ID
    AND J.TEMPORADA_ID = T.ID
GROUP BY T.ID, E.NOMBRE
;



select
    count(*),
    eq.nombre equipo,
    sum(case when r.no_gf > r.no_gc then 3
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
    resultado r, partido p, equipo eq, jornada j, temporada t
where
    r.partido_id = p.id
and r.equipo_id = eq.id
and p.jornada_id = j.id
and j.temporada_id = t.id
and t.year_ini = 1980
and (j.numero <= 42 /*p.fecha <= TO_DATE('03/09/1995', 'DD-MM-YYYY')*/)
group by eq.nombre
order by pts desc, dif asc
;



select
    t.id,
    t.year_ini,
    eq.nombre equipo,
    sum(case when r.no_gf > r.no_gc then 3
             when r.no_gf = r.no_gc then 1
             when r.no_gf < r.no_gc then 0 end) pts,
    count(r.id) pj,
    sum(r.no_gf) gf,
    sum(r.no_gc) gc,
    sum(r.no_gf) - sum(r.no_gc) dif
from
    resultado r, partido p, equipo eq, jornada j, temporada t
where
    r.partido_id = p.id
and r.equipo_id = eq.id
and p.jornada_id = j.id
and j.temporada_id = t.id
group by t.year_ini, t.id, eq.nombre
order by t.id, pts desc, dif asc
;


select
    team,
    count(*) MP,
    count(case when fthg > ftag then 1 end) W,
    count(case when fthg = ftag then 1 end) D,
    count(case when fthg < ftag then 1 end) L,
    sum(fthg) GF,
    sum(ftag) GA,
    sum(fthg) - sum(ftag) GD,
    sum(case when fthg > ftag then 3 else 0 end + case when fthg = ftag then 1 else 0 end) Pts
from
(
    select
        Div,
        hometeam team,
        fthg,
        ftag,
        hthg,
        htag
    from
        Matches
    union all
    select
        Div,
        awayteam team,
        ftag,
        fthg,
        htag,
        hthg
    from
        Matches
) a
where
    div='E0'
group by team
order by Pts desc
















create or replace procedure inciso_f
(
    nombre in varchar,
    consulta out sys_refcursor
)
as
begin
   open consulta for
    select
    *
    from
        temporada
    ;
end;

select * from (
    select
        count(e.nombre),
        e.nombre,
        sum(case when r.no_gf > r.no_gc then 3
                when r.no_gf = r.no_gc then 1
                when r.no_gf < r.no_gc then 0 end) pts,
        sum(r.no_gf) gf,
        sum(r.no_gc) gc
    from
        temporada t, jornada j, partido p, resultado r, equipo e
    where
            j.temporada_id = t.id
        and p.jornada_id = j.id
        and r.partido_id = p.id
        and r.equipo_id = e.id
        and t.nombre = 'Real Madrid'
    group by t.id, e.nombre
    order by t.id, pts desc
) tt

;

select
    *
from (
    select
        t.id,
        e.nombre,
        sum(case when r.no_gf > r.no_gc then 3
                when r.no_gf = r.no_gc then 1
                when r.no_gf < r.no_gc then 0 end) pts,
        sum(r.no_gf) gf,
        sum(r.no_gc) gc,
        row_number() over (partition by t.id order by t.id, sum(case when r.no_gf > r.no_gc then 3
                when r.no_gf = r.no_gc then 1
                when r.no_gf < r.no_gc then 0 end)desc) posicion
    from
        temporada t, jornada j, partido p, resultado r, equipo e
    where
            j.temporada_id = t.id
        and p.jornada_id = j.id
        and r.partido_id = p.id
        and r.equipo_id = e.id
        --and e.nombre = 'Real Madrid'
   group by t.id, e.nombre
    --order by t.id, pts desc;

) s
where
    s.nombre = 'Real Madrid'
;














select
    s2.year_ini,
    s2.nombre,
    s2.pts,
    s2.gf,
    s2.gc,
    s2.dif,
    s2.pos
from (
    select
        s1.year_ini,
        s1.nombre,
        s1.pts,
        s1.gf,
        s1.gc,
        s1.dif,
        row_number() over (partition by s1.year_ini order by pts desc) pos
    from
    (
        (
            select
                t.id id,
                t.year_ini year_ini,
                e.nombre nombre,
                sum(case
                        when r.no_gf > r.no_gc then 2
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
                and t.year_ini between 1980 and 1994
            group by t.id, t.year_ini, e.nombre
        )
        union
        (
            select
                t.id id,
                t.year_ini year_ini,
                e.nombre nombre,
                sum(case
                        when r.no_gf > r.no_gc then 3
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
                and t.year_ini between 1995 and 2000
            group by t.id, t.year_ini, e.nombre
        )
    ) s1
) s2
where
    s2.nombre = 'Real Madrid'
;










select
    s2.year_ini,
    s2.nombre,
    s2.pts,
    s2.gf,
    s2.gc,
    s2.dif,
    s2.pos
from (
    select
        s1.id,
        s1.year_ini,
        s1.nombre,
        s1.pts,
        s1.gf,
        s1.gc,
        s1.dif,
        row_number() over (partition by s1.year_ini order by s1.id, pts desc) pos
    from
    (
        (
            select
                t.id,
                t.year_ini,
                e.nombre,
                sum(case
                        when r.no_gf > r.no_gc then 3
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
                and t.year_ini between 1980 and 1994
            group by t.year_ini, t.id, e.nombre
        )
        union
        (
            select
                t.id,
                t.year_ini,
                e.nombre,
                sum(case
                        when r.no_gf > r.no_gc then 3
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
                and t.year_ini between 1995 and 2000
            group by t.year_ini, t.id, e.nombre
        )
    ) s1
) s2
where
    s2.nombre = 'Real Madrid'
;








-- esto pofria ayudar para orden por año desc
select
    s2.id,
    s2.year_ini,
    s2.nombre,
    s2.pts,
    s2.gf,
    s2.gc,
    s2.dif--,
    --s2.pos
from (
    select
        s1.id,
        s1.year_ini,
        s1.nombre,
        s1.pts,
        s1.gf,
        s1.gc,
        s1.dif--,
        --row_number() over (partition by s1.id order by s1.pts desc) pos
    from
    (
        (
            select
                t.id,
                t.year_ini,
                t.year_fin,
                e.nombre,
                sum(case
                        when r.no_gf > r.no_gc then 3
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
                and t.year_ini between 1980 and 1994
            group by t.id, t.year_ini, t.year_fin, e.nombre
        )
        union
        (
            select
                t.id,
                t.year_ini,
                t.year_fin,
                e.nombre,
                sum(case
                        when r.no_gf > r.no_gc then 3
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
                and t.year_ini between 1995 and 2000
            group by t.id, t.year_ini, t.year_fin, e.nombre
        )
        --order by pts desc
    ) s1
) s2
order by s2.year_ini asc
/*where
    s2.nombre = 'Real Madrid'*/
;




-- inciso f
select
    s2.year_ini,
    s2.nombre,
    s2.pts,
    s2.gf,
    s2.gc,
    s2.dif,
    s2.pos
from (
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
        (
            select
                t.id,
                t.year_ini,
                e.nombre,
                sum(case
                        when r.no_gf > r.no_gc then 2
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
                and t.year_ini between 1980 and 1994
            group by t.id, t.year_ini, e.nombre
        )
        union
        (
            select
                t.id,
                t.year_ini,
                e.nombre,
                sum(case
                        when r.no_gf > r.no_gc then 3
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
                and t.year_ini between 1995 and 2020
            group by t.id, t.year_ini, e.nombre
        )
    ) s1
) s2
where
    s2.nombre = 'Barcelona'
;


select
    *
from (
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
                    when r.no_gf > r.no_gc then 2
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




            select
                count(*) no,
                t.year_ini,
                e1.nombre local,
                e2.nombre visita,
                sum (case when r1.no_gf > r1.no_gc then 1 else 0 end) no_victorias,
                sum (case when r1.no_gc > r1.no_gf then 1 else 0 end) no_derrotas
                --*
            from
                temporada t, jornada j, partido p, equipo e1, equipo e2, resultado r1, resultado r2
            where
                    j.temporada_id = t.id
                and p.local = e1.id
                and p.visita = e2.id
                and p.jornada_id = j.id
                and r1.partido_id = p.id
                and r2.partido_id = p.id
                and r1.equipo_id = p.local
                and r2.equipo_id = p.visita
                and t.year_ini between 1980 and 1983
                and ((e1.nombre = 'Barcelona' or e1.nombre = 'Real Madrid') and (e2.nombre = 'Barcelona' or e2.nombre = 'Real Madrid'))
            group by t.id, t.year_ini, e1.nombre, e2.nombre
            order by t.id


        select
            *
        from
        (
            select
                count(*) no,
                e1.nombre local,
                e2.nombre visita,
                sum (case when r.no_gf > r.no_gc then 1 else 0 end) v,
                sum (case when r.no_gf < r.no_gc then 1 else 0 end) d,
                sum (case when r.no_gf = r.no_gc then 1 else 0 end) e
                --*
            from
                temporada t, jornada j, partido p, equipo e1, equipo e2, resultado r
            where
                    j.temporada_id = t.id
                and p.local = e1.id
                and p.visita = e2.id
                and p.jornada_id = j.id
                and r.partido_id = p.id
                and r.equipo_id = p.local
                --and ((e1.nombre = 'Cádiz' or e1.nombre = 'Athletic Club') and (e2.nombre = 'Cádiz' or e2.nombre = 'Athletic Club'))
            group by e1.nombre, e2.nombre
        ) s1





                select
            *
        from
        (
            select
                count(*) no,
                e1.nombre local,
                e2.nombre visita,
                sum (case when r1.no_gf > r1.no_gc then 1 else 0 end) v,
                sum (case when r1.no_gf < r1.no_gc then 1 else 0 end) d,
                sum (case when r1.no_gf = r1.no_gc then 1 else 0 end) e
                --*
            from
                temporada t, jornada j, partido p, equipo e1, equipo e2, resultado r1, resultado r2
            where
                    j.temporada_id = t.id
                and p.jornada_id = j.id
                and p.local = e1.id
                and p.visita = e2.id
                and r1.partido_id = p.id
                and r1.equipo_id = p.local
                and r2.partido_id = p.id
                and r2.equipo_id = p.visita
                --and ((e1.nombre = 'Cádiz' or e1.nombre = 'Athletic Club') and (e2.nombre = 'Cádiz' or e2.nombre = 'Athletic Club'))
            group by e1.nombre, e2.nombre
        ) s1



            select
                count(*) no,
                e1.nombre local,
                e2.nombre visita,
                sum (case when r.no_gf > r.no_gc then 1 else 0 end) v,
                sum (case when r.no_gf < r.no_gc then 1 else 0 end) d,
                sum (case when r.no_gf = r.no_gc then 1 else 0 end) e
                --*
            from
                temporada t, jornada j, partido p, equipo e1, equipo e2, resultado r
            where
                    j.temporada_id = t.id
                and p.jornada_id = j.id
                and p.local = e1.id
                and p.visita = e2.id
                and r.partido_id = p.id
                and r.equipo_id = p.local
                and ((e1.nombre = 'Cádiz' or e1.nombre = 'Athletic Club') and (e2.nombre = 'Cádiz' or e2.nombre = 'Athletic Club'))
            group by e1.nombre, e2.nombre




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