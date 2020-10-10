
select
*
from
    (
        select
            t1.id, e.nombre
        from
            resultado r, partido p, equipo e, jornada j, temporada t1
        where
                r.partido_id = p.id
            and r.equipo_id = e.id
            and p.jornada_id = j.id
            and j.temporada_id = t1.id
            and rownum <= 3
        group by t1.id, e.nombre
    ) q1,
    temporada t2
where
    q1.id = t2.id
;


select
    t1.id,
    e.nombre
from
    resultado r, partido p, equipo e, jornada j, temporada t1
where
        r.partido_id = p.id
    and r.equipo_id = e.id
    and p.jornada_id = j.id
    and j.temporada_id = t1.id
group by t1.id, e.nombre
;

select
    *
from
    jornada j, temporada t1
where
        j.temporada_id = t1.id
    and rownum < 4


select rownum
from 
  temporada
;