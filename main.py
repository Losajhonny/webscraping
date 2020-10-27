from bs4 import BeautifulSoup
from Partido import *
import requests

url = 'https://www.bdfutbol.com/es/t/t.html'
page = requests.get(url)
soup = BeautifulSoup(page.content, 'html.parser')

# buscar temporadas
partidos = []

it = soup.find_all('div', class_='item_temporada')

# lista temporadas
seasons = list()
cont = 0
for i in it:
    for a in i.find_all('a'):
        #if 40 < cont <= 40:
        if 0 < cont <= 40:
            seasons.append(a)
        if cont > 40:
            break
        cont += 1
        
# navegacion temporadas
for season in seasons:
    cadPartidos = ''
    
    # obtener año
    year = season.text.split('-')
    year_ini = year[0]
    year_fin = year[0][0:2] + year[1]
    if year_ini == '1999' and year_fin == '1900':
            year_fin = '2000'

    # obtener datos temporada
    url = 'https://www.bdfutbol.com/es/t/' + season.get('href')
    page = requests.get(url)
    soup = BeautifulSoup(page.content, 'html.parser')

    # buscar alertas de juegos  no le intereso al ing
    #aj = soup.find_all('div', class_='alert alert-warning mt-3 f14 text-justify')
    #for alerta in aj:
        #vtemporada.alertas.append(alerta.text.strip())

    # buscar jornadas
    it = soup.find_all('div', class_='jornada p-2')
    for jornada in it:
        info = jornada.find_all('tr')
        
        # obtener informacion de jornada
        nombre_jornada = info[0].find_all('th')[0].text
        numero_jornada = nombre_jornada.split(' ')[1]
        fechaIni = ''
        fechaFin = ''
        
        cont = 0
        info.pop(0)

        # navegacion info partido
        for partido in info:
            datos = partido.find_all('td', class_='border-0')
            
            # fecha del partido
            fecha = datos[0].find_all('a')[0].text
            if cont == 0:
                fechaIni = fecha
            fechaFin = fecha
            cont += 1
            
            # goles
            res = datos[2].find_all('a')[0].text.split('—')
            
            vpartido = Partido()
            vpartido.fecha = fecha
            vpartido.jornadaNombre = nombre_jornada
            vpartido.jornadaNumero = numero_jornada
            vpartido.yearIni = year_ini
            vpartido.yearFin = year_fin
            
            # equipo local
            vpartido.local = datos[1].find_all('a')[0].text
            vpartido.local_gl = res[0]
            vpartido.local_ta = 0
            vpartido.local_tr = 0

            # equipo visita
            vpartido.visit = datos[3].find_all('a')[1].text
            vpartido.visit_gl = res[1]
            vpartido.visit_ta = 0
            vpartido.visit_tr = 0

            # obtener otros datos de partidos
            path = datos[0].find_all('a')[0].get('href')
            url = 'https://www.bdfutbol.com/es' + path[2:len(path)]
            page = requests.get(url)
            soup = BeautifulSoup(page.content, 'html.parser')

            # datos generados por titulares
            local_gen = soup.find_all('div', class_='col-6 pl-0 pl-md-2 pr-0 p2-md-2')[0]
            visit_gen = soup.find_all('div', class_='col-6 pr-0 pr-md-2 pl-0 pl-md-2')[0]
            # datos generados por suplentes y entrenadores
            local_sup = soup.find_all('div', class_='col-6 pl-0 pl-md-2')[0]
            visit_sup = soup.find_all('div', class_='col-6 pr-0 pr-md-2')[0]

            vpartido.local_ta += len(local_gen.find_all('div', class_='TG'))
            vpartido.local_ta += len(local_gen.find_all('div', class_='TG2'))
            vpartido.local_tr += len(local_gen.find_all('div', class_='TG2'))
            vpartido.local_tr += len(local_gen.find_all('div', class_='TV'))

            vpartido.local_ta += len(local_sup.find_all('div', class_='TG'))
            vpartido.local_ta += len(local_sup.find_all('div', class_='TG2'))
            vpartido.local_tr += len(local_sup.find_all('div', class_='TG2'))
            vpartido.local_tr += len(local_sup.find_all('div', class_='TV'))

            vpartido.visit_ta += len(visit_gen.find_all('div', class_='TG'))
            vpartido.visit_ta += len(visit_gen.find_all('div', class_='TG2'))
            vpartido.visit_tr += len(visit_gen.find_all('div', class_='TG2'))
            vpartido.visit_tr += len(visit_gen.find_all('div', class_='TV'))

            vpartido.visit_ta += len(visit_sup.find_all('div', class_='TG'))
            vpartido.visit_ta += len(visit_sup.find_all('div', class_='TG2'))
            vpartido.visit_tr += len(visit_sup.find_all('div', class_='TG2'))
            vpartido.visit_tr += len(visit_sup.find_all('div', class_='TV'))

            infoPartido = vpartido.toStringAll()
            cadPartidos += infoPartido
            print(infoPartido)
            
            partidos.append(vpartido)
            
    with open("Temporada_" + str(year_fin) + "_" + str(year_ini) + ".js", 'w', encoding='utf-8') as f:
        f.write(cadPartidos)
        f.close()