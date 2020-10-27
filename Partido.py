class Partido:
    yearIni = ''
    yearFin = ''
    
    jornadaNombre = ''
    jornadaNumero = ''
    fecha = ''
    
    local_ta = ''
    local_tr = ''
    local_gl = ''
    local = ''

    visit_ta = ''
    visit_tr = ''
    visit_gl = ''
    visit = ''
    
    def toString(self):
        return self.yearIni + ', ' + self.local + ' ' + self.local_gl + ' vs ' + self.visit_gl + ' ' + self.visit
    
    def toStringLocal(self):
        cad = '"temporada": ' + self.yearIni + ', '
        cad += '"yearIni": ' + self.yearIni + ', '
        cad += '"yearFin": ' + self.yearFin + ', '
        cad += '"nombreJornada": "' + self.jornadaNombre + '", '
        cad += '"numeroJornada": ' + self.jornadaNumero + ', '
        cad += '"fecha": "' + self.fecha + '", '
        
        cad += '"juegoDe": "local", '
        
        cad += '"equipo1": "' + self.local + '", '
        cad += '"ta": ' + str(self.local_ta) + ', '
        cad += '"tr": ' + str(self.local_tr) + ', '
        cad += '"gf": ' + str(self.local_gl) + ', '

        cad += '"equipo2": "' + self.visit + '", '
        cad += '"gc": ' + str(self.visit_gl)
        return cad
    
    def toStringVisit(self):
        cad = '"temporada": ' + self.yearIni + ', '
        cad += '"yearIni": ' + self.yearIni + ', '
        cad += '"yearFin": ' + self.yearFin + ', '
        cad += '"nombreJornada": "' + self.jornadaNombre + '", '
        cad += '"numeroJornada": ' + self.jornadaNumero + ', '
        cad += '"fecha": "' + self.fecha + '", '

        cad += '"juegoDe": "visita", '

        cad += '"equipo1": "' + self.visit + '", '
        cad += '"ta": ' + str(self.visit_ta) + ', '
        cad += '"tr": ' + str(self.visit_tr) + ', '
        cad += '"gf": ' + str(self.visit_gl) + ', '

        cad += '"equipo2": "' + self.local + '", '
        cad += '"gc": ' + str(self.local_gl)
        return cad
    
    def toStringAll(self):
        cad1 = self.toStringLocal()
        cad2 = self.toStringVisit()
        cad = 'db.partido.insert({ ' + cad1 + ' });\n'
        cad += 'db.partido.insert({ ' + cad2 + ' });\n'
        return cad
