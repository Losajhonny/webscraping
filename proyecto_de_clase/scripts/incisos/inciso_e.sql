create or replace view inciso_e as
select
    s1.local equipo,
    s1.visita victima,
    sum(s1.v) sv--,
    -- sum(s1.e) se,
    -- sum(s1.d) sd
from
(
    (
        select
            e1.id id_local, e2.id id_visita,
            e1.nombre local, e2.nombre visita,
            sum(case when r.no_gf > r.no_gc then 1 else 0 end) v,
            sum(case when r.no_gf = r.no_gc then 1 else 0 end) e,
            sum(case when r.no_gf < r.no_gc then 1 else 0 end) d
            --*
        from
            resultado r, partido p, equipo e1, equipo e2
        where
                r.partido_id = p.id
            and r.equipo_id = e1.id
            and p.local = e1.id
            and p.visita = e2.id
            --and (e1.nombre = 'Barcelona' or e1.nombre = 'Real Madrid') and (e2.nombre = 'Barcelona' or e2.nombre = 'Real Madrid')
        group by e1.id, e2.id, e1.nombre, e2.nombre
    )
    union
    (
        select
            e1.id id_local, e2.id id_visita,
            e1.nombre local, e2.nombre visita,
            sum(case when r.no_gf < r.no_gc then 1 else 0 end) v,
            sum(case when r.no_gf = r.no_gc then 1 else 0 end) e,
            sum(case when r.no_gf > r.no_gc then 1 else 0 end) d
            --*
        from
            resultado r, partido p, equipo e1, equipo e2
        where
                r.partido_id = p.id
            and r.equipo_id = e2.id
            and p.local = e2.id
            and p.visita = e1.id
            --and (e1.nombre = 'Barcelona' or e1.nombre = 'Real Madrid') and (e2.nombre = 'Barcelona' or e2.nombre = 'Real Madrid')
        group by e1.id, e2.id, e1.nombre, e2.nombre
    )
) s1
--where s1.local = 'Real Madrid'
group by s1.local, s1.visita
order by sv desc
;

select * from inciso_e
where equipo = 'Barcelona';