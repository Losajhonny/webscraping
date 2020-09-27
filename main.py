from bs4 import BeautifulSoup
import requests

url = 'https://www.bdfutbol.com/es/t/t.html'
page = requests.get(url)
soup = BeautifulSoup(page.content, 'html.parser')

# it = item temporadas
it = soup.find_all('div', class_='item_temporada')

# lista temporadas
seasons = list()

cont = 0
for i in it:
    for a in i.find_all('a'):
        if 0 < cont <= 40:
            seasons.append(a.get('href'))
        if cont > 40:
            break
        cont += 1

# navegacion temporadas
for season in seasons:
    url = 'https://www.bdfutbol.com/es/t/' + season
    page = requests.get(url)
    soup = BeautifulSoup(page.content, 'html.parser')

    it = soup.find_all('div', class_='jornada p-2')

    for jornadas in it:
        jornada = jornadas.find_all('tr', class_='border-0')

        for partido in jornada:
            datos = partido.find_all('td', class_='border-0')
            fecha = datos[0].find_all('a')[0].text
            e1 = datos[1].find_all('a')[0].text
            e2 = datos[3].find_all('a')[1].text
            res = datos[2].find_all('a')[0].text.split('—')
            r1 = res[0]
            r2 = res[1]
            print(fecha + ', ' + e1 + ', ' + r1 + ', ' + r2 + ', ' + e2)
