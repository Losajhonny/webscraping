from bs4 import BeautifulSoup
import requests

url = 'https://www.bdfutbol.com/es/t/t.html'
page = requests.get(url)
soup = BeautifulSoup(page.content, 'html.parser')

# buscar temporadas
it = soup.find_all('div', class_='item_temporada')

# lista temporadas
seasons = list()
cont = 0
for i in it:
    for a in i.find_all('a'):
        if 0 < cont <= 40:
            seasons.append(a)
        if cont > 40:
            break
        cont += 1

# navegacion temporadas
for season in seasons:
    # obtener año
    year = season.text.split('-')
    year_ini = year[0]
    year_fin = year[0][0:2] + year[1]

    # obtener datos temporada
    url = 'https://www.bdfutbol.com/es/t/' + season.get('href')
    page = requests.get(url)
    soup = BeautifulSoup(page.content, 'html.parser')

    # buscar jornadas
    it = soup.find_all('div', class_='jornada p-2')
    for jornada in it:
        info = jornada.find_all('tr')
        
        # obtener informacion de jornada
        nombre_jornada = info[0].find_all('th')[0].text
        numero_jornada = nombre_jornada.split(' ')[1]
        info.pop(0)

        # navegacion info partido
        for partido in info:
            datos = partido.find_all('td', class_='border-0')
            
            # fecha del partido
            fecha = datos[0].find_all('a')[0].text
            
            # goles
            res = datos[2].find_all('a')[0].text.split('—')
            
            # equipo local
            local = datos[1].find_all('a')[0].text
            local_gol = res[0]
            local_ta = 0
            local_tr = 0

            # equipo visita
            visit = datos[3].find_all('a')[1].text
            visit_gol = res[1]
            visit_ta = 0
            visit_tr = 0

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

            local_ta += len(local_gen.find_all('div', class_='TG'))
            local_ta += len(local_gen.find_all('div', class_='TG2'))
            local_tr += len(local_gen.find_all('div', class_='TG2'))
            local_tr += len(local_gen.find_all('div', class_='TV'))

            local_ta += len(local_sup.find_all('div', class_='TG'))
            local_ta += len(local_sup.find_all('div', class_='TG2'))
            local_tr += len(local_sup.find_all('div', class_='TG2'))
            local_tr += len(local_sup.find_all('div', class_='TV'))

            visit_ta += len(visit_gen.find_all('div', class_='TG'))
            visit_ta += len(visit_gen.find_all('div', class_='TG2'))
            visit_tr += len(visit_gen.find_all('div', class_='TG2'))
            visit_tr += len(visit_gen.find_all('div', class_='TV'))

            visit_ta += len(visit_sup.find_all('div', class_='TG'))
            visit_ta += len(visit_sup.find_all('div', class_='TG2'))
            visit_tr += len(visit_sup.find_all('div', class_='TG2'))
            visit_tr += len(visit_sup.find_all('div', class_='TV'))

            print('ta ' + str(local_ta) + ', ' + str(visit_ta))
            print('tr ' + str(local_tr) + ', ' + str(visit_tr))
            print(fecha + ', ' + local + ', ' + local_gol + ', ' + visit_gol + ', ' + visit)
            print(url)
