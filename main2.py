from bs4 import BeautifulSoup
import requests

url = 'https://www.bdfutbol.com/es/t/t.html'
page = requests.get(url)
soup = BeautifulSoup(page.content, 'html.parser')

# buscar temporadas
it = soup.find_all('div', class_='item_temporada')

# datos
cadena_temporadas = ""

# lista temporadas
seasons = list()
cont = 0
for i in it:
    for a in i.find_all('a'):
        if 25 < cont <= 40:
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
    if year_ini == '1999' and year_fin == '1900':
        year_fin = '2000'
    cadena_temporadas += "EXEC INSERT_TEMPORADA ("
    cadena_temporadas += str(year_ini) + ", "
    cadena_temporadas += str(year_fin) + ");\n"
    print("Temporada: " + str(year_fin) + "-" + str(year_ini))

    # obtener datos temporada
    url = 'https://www.bdfutbol.com/es/t/' + season.get('href')
    page = requests.get(url)
    soup = BeautifulSoup(page.content, 'html.parser')
    cadena_jornada_temporada = ""
    cadena_partidos = ""
    cadena_alertas = ""

    # buscar alertas de juegos
    aj = soup.find_all('div', class_='alert alert-warning mt-3 f14 text-justify')
    for alerta in aj:
        cadena_alertas += "EXEC INSERT_ALERTA(" + str(year_ini) + ", " + str(year_fin) + ", '" + alerta.text + "');\n"
    cadena_alertas += "COMMIT;\n";

    # buscar jornadas
    it = soup.find_all('div', class_='jornada p-2')
    for jornada in it:
        info = jornada.find_all('tr')

        # obtener informacion de jornada
        nombre_jornada = info[0].find_all('th')[0].text
        numero_jornada = nombre_jornada.split(' ')[1]
        fecha_ini = ""
        fecha_fin = ""
        cadena_partido_jornada = ""
        cont = 0

        print("Jornada: " + nombre_jornada)
        info.pop(0)

        # navegacion info partido
        for partido in info:
            datos = partido.find_all('td', class_='border-0')

            # fecha del partido
            fecha = datos[0].find_all('a')[0].text
            if cont == 0:
                fecha_ini = fecha
            fecha_fin = fecha
            cont += 1

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

            # print('ta ' + str(local_ta) + ', ' + str(visit_ta))
            # print('tr ' + str(local_tr) + ', ' + str(visit_tr))
            print(fecha + ", " + str(local_ta) + "-" + str(
                local_tr) + ', ' + local + ', ' + local_gol + ', ' + visit_gol + ', ' + visit + ', ' + str(
                visit_ta) + "-" + str(visit_tr))
            cadena_partido_jornada += "EXEC INSERT_PARTIDO ("
            cadena_partido_jornada += "'" + fecha + "', "
            cadena_partido_jornada += str(local_ta) + ", "
            cadena_partido_jornada += str(local_tr) + ", "
            cadena_partido_jornada += "'" + local + "', "
            cadena_partido_jornada += str(local_gol) + ", "
            cadena_partido_jornada += str(visit_gol) + ", "
            cadena_partido_jornada += "'" + visit + "', "
            cadena_partido_jornada += str(visit_ta) + ", "
            cadena_partido_jornada += str(visit_tr) + ", "
            cadena_partido_jornada += str(numero_jornada) + ", "
            cadena_partido_jornada += str(year_ini) + ", "
            cadena_partido_jornada += str(year_fin) + ");\n"

        cadena_jornada_temporada += "EXEC INSERT_JORNADA ("
        cadena_jornada_temporada += "'" + nombre_jornada + "', "
        cadena_jornada_temporada += str(numero_jornada) + ", "
        cadena_jornada_temporada += "'" + fecha_ini + "', "
        cadena_jornada_temporada += "'" + fecha_fin + "', "
        cadena_jornada_temporada += str(year_ini) + ", "
        cadena_jornada_temporada += str(year_fin) + ");\n"

        cadena_partidos += "-- " + nombre_jornada + "\n" + cadena_partido_jornada + "COMMIT;" + "\n"

    cadena_tmp = "-- Temporada " + str(year_fin) + "-" + str(
        year_ini) + "\n\n" + cadena_alertas + "\n" + cadena_jornada_temporada + "COMMIT;\n" + cadena_partidos
    f = open("Temporada_" + str(year_fin) + "_" + str(year_ini) + ".sql", 'w')
    f.write(cadena_tmp)
    f.close()

f = open('Temporadas.sql', 'w')
f.write(cadena_temporadas)
f.close()
