select * from temporada;
select * from jornada;
select * from partido;
select * from equipo;
select * from resultado;
select * from alerta;


select * from temporada;

select * from jornada j, temporada t
where j.temporada_id = t.id and t.year_ini = 1999 and t.year_fin = 2000;

select COUNT(*) from partido;

select --eq.nombre, r.no_puntos, r.no_gf, r.no_gc, r.no_tamarilla, r.no_troja, j.nombre, t.year_ini, t.year_fin
eq.nombre equipo,
sum(case when r.no_gf > r.no_gc then 3
         when r.no_gf = r.no_gc then 1 end) pts,
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
    r.partido_id = p.id and r.equipo_id = eq.id and p.jornada_id = j.id and j.temporada_id = t.id and t.year_ini = 2001 and t.year_fin = 2002
group by eq.nombre order by pts desc
;