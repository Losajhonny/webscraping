-- Temporada 2015-2014

EXEC INSERT_ALERTA(2014, 2015, 'El Eibar fue repescado debido al descenso administrativo del Elche.');
EXEC INSERT_ALERTA(2014, 2015, '*El Almería fue sancionado con 3 puntos menos, por impago de un jugador');
COMMIT;

EXEC INSERT_JORNADA ('Jornada 1', 1, '23/08/2014', '25/08/2014', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 2', 2, '29/08/2014', '31/08/2014', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 3', 3, '12/09/2014', '15/09/2014', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 4', 4, '19/09/2014', '22/09/2014', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 5', 5, '23/09/2014', '25/09/2014', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 6', 6, '26/09/2014', '28/09/2014', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 7', 7, '03/10/2014', '05/10/2014', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 8', 8, '17/10/2014', '20/10/2014', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 9', 9, '24/10/2014', '26/10/2014', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 10', 10, '31/10/2014', '03/11/2014', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 11', 11, '07/11/2014', '09/11/2014', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 12', 12, '21/11/2014', '24/11/2014', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 13', 13, '28/11/2014', '01/12/2014', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 14', 14, '06/12/2014', '08/12/2014', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 15', 15, '12/12/2014', '15/12/2014', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 16', 16, '19/12/2014', '04/02/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 17', 17, '03/01/2015', '05/01/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 18', 18, '09/01/2015', '12/01/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 19', 19, '16/01/2015', '18/01/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 20', 20, '24/01/2015', '26/01/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 21', 21, '30/01/2015', '02/02/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 22', 22, '06/02/2015', '09/02/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 23', 23, '13/02/2015', '16/02/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 24', 24, '20/02/2015', '23/02/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 25', 25, '27/02/2015', '02/03/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 26', 26, '06/03/2015', '09/03/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 27', 27, '13/03/2015', '16/03/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 28', 28, '20/03/2015', '22/03/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 29', 29, '03/04/2015', '06/04/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 30', 30, '07/04/2015', '09/04/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 31', 31, '11/04/2015', '13/04/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 32', 32, '17/04/2015', '20/04/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 33', 33, '24/04/2015', '27/04/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 34', 34, '28/04/2015', '30/04/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 35', 35, '01/05/2015', '04/05/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 36', 36, '08/05/2015', '11/05/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 37', 37, '17/05/2015', '17/05/2015', 2014, 2015);
EXEC INSERT_JORNADA ('Jornada 38', 38, '23/05/2015', '23/05/2015', 2014, 2015);

COMMIT;
-- Jornada 1
EXEC INSERT_PARTIDO ('23/08/2014', 3, 2, 'Málaga', 1, 0, 'Athletic Club', 3, 0, 1, 2014, 2015);
EXEC INSERT_PARTIDO ('23/08/2014', 4, 0, 'Sevilla', 1, 1, 'Valencia', 2, 1, 1, 2014, 2015);
EXEC INSERT_PARTIDO ('23/08/2014', 1, 0, 'Granada', 2, 1, 'Deportivo de La Coruña', 3, 0, 1, 2014, 2015);
EXEC INSERT_PARTIDO ('23/08/2014', 3, 0, 'Almería', 1, 1, 'Espanyol', 4, 1, 1, 2014, 2015);
EXEC INSERT_PARTIDO ('24/08/2014', 4, 0, 'Eibar', 1, 0, 'Real Sociedad', 1, 0, 1, 2014, 2015);
EXEC INSERT_PARTIDO ('24/08/2014', 4, 0, 'Celta de Vigo', 3, 1, 'Getafe', 1, 0, 1, 2014, 2015);
EXEC INSERT_PARTIDO ('24/08/2014', 0, 1, 'Barcelona', 3, 0, 'Elche', 1, 0, 1, 2014, 2015);
EXEC INSERT_PARTIDO ('24/08/2014', 1, 0, 'Levante', 0, 2, 'Villarreal', 3, 0, 1, 2014, 2015);
EXEC INSERT_PARTIDO ('25/08/2014', 1, 0, 'Real Madrid', 2, 0, 'Córdoba', 2, 0, 1, 2014, 2015);
EXEC INSERT_PARTIDO ('25/08/2014', 2, 0, 'Rayo Vallecano', 0, 0, 'Atlético de Madrid', 2, 0, 1, 2014, 2015);

COMMIT;
-- Jornada 2
EXEC INSERT_PARTIDO ('29/08/2014', 3, 0, 'Getafe', 1, 0, 'Almería', 2, 0, 2, 2014, 2015);
EXEC INSERT_PARTIDO ('29/08/2014', 1, 0, 'Valencia', 3, 0, 'Málaga', 2, 1, 2, 2014, 2015);
EXEC INSERT_PARTIDO ('30/08/2014', 1, 0, 'Córdoba', 1, 1, 'Celta de Vigo', 4, 0, 2, 2014, 2015);
EXEC INSERT_PARTIDO ('30/08/2014', 1, 0, 'Athletic Club', 3, 0, 'Levante', 4, 0, 2, 2014, 2015);
EXEC INSERT_PARTIDO ('30/08/2014', 3, 0, 'Atlético de Madrid', 2, 1, 'Eibar', 0, 0, 2, 2014, 2015);
EXEC INSERT_PARTIDO ('30/08/2014', 4, 0, 'Espanyol', 1, 2, 'Sevilla', 2, 0, 2, 2014, 2015);
EXEC INSERT_PARTIDO ('31/08/2014', 0, 0, 'Villarreal', 0, 1, 'Barcelona', 2, 0, 2, 2014, 2015);
EXEC INSERT_PARTIDO ('31/08/2014', 1, 0, 'Real Sociedad', 4, 2, 'Real Madrid', 2, 0, 2, 2014, 2015);
EXEC INSERT_PARTIDO ('31/08/2014', 4, 0, 'Deportivo de La Coruña', 2, 2, 'Rayo Vallecano', 6, 0, 2, 2014, 2015);
EXEC INSERT_PARTIDO ('31/08/2014', 4, 0, 'Elche', 1, 1, 'Granada', 4, 0, 2, 2014, 2015);

COMMIT;
-- Jornada 3
EXEC INSERT_PARTIDO ('12/09/2014', 4, 0, 'Almería', 1, 1, 'Córdoba', 4, 0, 3, 2014, 2015);
EXEC INSERT_PARTIDO ('13/09/2014', 1, 0, 'Barcelona', 2, 0, 'Athletic Club', 1, 0, 3, 2014, 2015);
EXEC INSERT_PARTIDO ('13/09/2014', 1, 0, 'Celta de Vigo', 2, 2, 'Real Sociedad', 5, 0, 3, 2014, 2015);
EXEC INSERT_PARTIDO ('13/09/2014', 1, 0, 'Málaga', 0, 0, 'Levante', 2, 0, 3, 2014, 2015);
EXEC INSERT_PARTIDO ('13/09/2014', 4, 0, 'Real Madrid', 1, 2, 'Atlético de Madrid', 7, 0, 3, 2014, 2015);
EXEC INSERT_PARTIDO ('14/09/2014', 2, 0, 'Rayo Vallecano', 2, 3, 'Elche', 2, 0, 3, 2014, 2015);
EXEC INSERT_PARTIDO ('14/09/2014', 1, 0, 'Valencia', 3, 1, 'Espanyol', 1, 0, 3, 2014, 2015);
EXEC INSERT_PARTIDO ('14/09/2014', 2, 0, 'Sevilla', 2, 0, 'Getafe', 6, 0, 3, 2014, 2015);
EXEC INSERT_PARTIDO ('14/09/2014', 3, 0, 'Granada', 0, 0, 'Villarreal', 2, 0, 3, 2014, 2015);
EXEC INSERT_PARTIDO ('15/09/2014', 0, 0, 'Eibar', 0, 1, 'Deportivo de La Coruña', 6, 0, 3, 2014, 2015);

COMMIT;
-- Jornada 4
EXEC INSERT_PARTIDO ('19/09/2014', 2, 0, 'Elche', 0, 2, 'Eibar', 1, 0, 4, 2014, 2015);
EXEC INSERT_PARTIDO ('20/09/2014', 1, 0, 'Deportivo de La Coruña', 2, 8, 'Real Madrid', 1, 0, 4, 2014, 2015);
EXEC INSERT_PARTIDO ('20/09/2014', 2, 0, 'Athletic Club', 0, 1, 'Granada', 4, 0, 4, 2014, 2015);
EXEC INSERT_PARTIDO ('20/09/2014', 1, 0, 'Atlético de Madrid', 2, 2, 'Celta de Vigo', 3, 0, 4, 2014, 2015);
EXEC INSERT_PARTIDO ('20/09/2014', 3, 0, 'Espanyol', 2, 2, 'Málaga', 5, 0, 4, 2014, 2015);
EXEC INSERT_PARTIDO ('21/09/2014', 1, 0, 'Real Sociedad', 1, 2, 'Almería', 8, 1, 4, 2014, 2015);
EXEC INSERT_PARTIDO ('21/09/2014', 2, 0, 'Villarreal', 4, 2, 'Rayo Vallecano', 2, 0, 4, 2014, 2015);
EXEC INSERT_PARTIDO ('21/09/2014', 6, 0, 'Córdoba', 1, 3, 'Sevilla', 2, 0, 4, 2014, 2015);
EXEC INSERT_PARTIDO ('21/09/2014', 1, 1, 'Levante', 0, 5, 'Barcelona', 2, 0, 4, 2014, 2015);
EXEC INSERT_PARTIDO ('22/09/2014', 6, 0, 'Getafe', 0, 3, 'Valencia', 3, 1, 4, 2014, 2015);

COMMIT;
-- Jornada 5
EXEC INSERT_PARTIDO ('23/09/2014', 2, 0, 'Real Madrid', 5, 1, 'Elche', 1, 0, 5, 2014, 2015);
EXEC INSERT_PARTIDO ('23/09/2014', 3, 0, 'Celta de Vigo', 2, 1, 'Deportivo de La Coruña', 3, 0, 5, 2014, 2015);
EXEC INSERT_PARTIDO ('24/09/2014', 3, 0, 'Almería', 0, 1, 'Atlético de Madrid', 6, 0, 5, 2014, 2015);
EXEC INSERT_PARTIDO ('24/09/2014', 4, 0, 'Eibar', 1, 1, 'Villarreal', 4, 0, 5, 2014, 2015);
EXEC INSERT_PARTIDO ('24/09/2014', 2, 0, 'Rayo Vallecano', 2, 1, 'Athletic Club', 2, 0, 5, 2014, 2015);
EXEC INSERT_PARTIDO ('24/09/2014', 6, 0, 'Sevilla', 1, 0, 'Real Sociedad', 2, 0, 5, 2014, 2015);
EXEC INSERT_PARTIDO ('24/09/2014', 2, 0, 'Granada', 0, 1, 'Levante', 6, 0, 5, 2014, 2015);
EXEC INSERT_PARTIDO ('24/09/2014', 2, 0, 'Málaga', 0, 0, 'Barcelona', 2, 0, 5, 2014, 2015);
EXEC INSERT_PARTIDO ('25/09/2014', 1, 0, 'Espanyol', 2, 0, 'Getafe', 2, 0, 5, 2014, 2015);
EXEC INSERT_PARTIDO ('25/09/2014', 1, 0, 'Valencia', 3, 0, 'Córdoba', 3, 0, 5, 2014, 2015);

COMMIT;
-- Jornada 6
EXEC INSERT_PARTIDO ('26/09/2014', 4, 0, 'Elche', 0, 1, 'Celta de Vigo', 2, 0, 6, 2014, 2015);
EXEC INSERT_PARTIDO ('27/09/2014', 0, 0, 'Villarreal', 0, 2, 'Real Madrid', 1, 0, 6, 2014, 2015);
EXEC INSERT_PARTIDO ('27/09/2014', 1, 0, 'Barcelona', 6, 0, 'Granada', 3, 0, 6, 2014, 2015);
EXEC INSERT_PARTIDO ('27/09/2014', 4, 0, 'Atlético de Madrid', 4, 0, 'Sevilla', 3, 0, 6, 2014, 2015);
EXEC INSERT_PARTIDO ('27/09/2014', 5, 0, 'Athletic Club', 0, 0, 'Eibar', 6, 0, 6, 2014, 2015);
EXEC INSERT_PARTIDO ('27/09/2014', 4, 0, 'Levante', 0, 2, 'Rayo Vallecano', 3, 0, 6, 2014, 2015);
EXEC INSERT_PARTIDO ('28/09/2014', 0, 0, 'Getafe', 1, 0, 'Málaga', 5, 1, 6, 2014, 2015);
EXEC INSERT_PARTIDO ('28/09/2014', 2, 0, 'Deportivo de La Coruña', 0, 1, 'Almería', 4, 0, 6, 2014, 2015);
EXEC INSERT_PARTIDO ('28/09/2014', 2, 0, 'Real Sociedad', 1, 1, 'Valencia', 5, 0, 6, 2014, 2015);
EXEC INSERT_PARTIDO ('28/09/2014', 2, 0, 'Córdoba', 0, 0, 'Espanyol', 6, 0, 6, 2014, 2015);

COMMIT;
-- Jornada 7
EXEC INSERT_PARTIDO ('03/10/2014', 1, 0, 'Getafe', 1, 1, 'Córdoba', 2, 0, 7, 2014, 2015);
EXEC INSERT_PARTIDO ('04/10/2014', 4, 0, 'Valencia', 3, 1, 'Atlético de Madrid', 2, 1, 7, 2014, 2015);
EXEC INSERT_PARTIDO ('04/10/2014', 6, 2, 'Rayo Vallecano', 0, 2, 'Barcelona', 2, 0, 7, 2014, 2015);
EXEC INSERT_PARTIDO ('04/10/2014', 3, 0, 'Eibar', 3, 3, 'Levante', 1, 0, 7, 2014, 2015);
EXEC INSERT_PARTIDO ('04/10/2014', 2, 0, 'Almería', 2, 2, 'Elche', 6, 1, 7, 2014, 2015);
EXEC INSERT_PARTIDO ('04/10/2014', 1, 1, 'Málaga', 2, 1, 'Granada', 4, 0, 7, 2014, 2015);
EXEC INSERT_PARTIDO ('05/10/2014', 2, 0, 'Sevilla', 4, 1, 'Deportivo de La Coruña', 2, 0, 7, 2014, 2015);
EXEC INSERT_PARTIDO ('05/10/2014', 5, 1, 'Celta de Vigo', 1, 3, 'Villarreal', 4, 0, 7, 2014, 2015);
EXEC INSERT_PARTIDO ('05/10/2014', 6, 0, 'Espanyol', 2, 0, 'Real Sociedad', 2, 0, 7, 2014, 2015);
EXEC INSERT_PARTIDO ('05/10/2014', 1, 0, 'Real Madrid', 5, 0, 'Athletic Club', 2, 0, 7, 2014, 2015);

COMMIT;
-- Jornada 8
EXEC INSERT_PARTIDO ('17/10/2014', 4, 0, 'Granada', 0, 1, 'Rayo Vallecano', 5, 0, 8, 2014, 2015);
EXEC INSERT_PARTIDO ('18/10/2014', 4, 0, 'Levante', 0, 5, 'Real Madrid', 0, 0, 8, 2014, 2015);
EXEC INSERT_PARTIDO ('18/10/2014', 3, 0, 'Athletic Club', 1, 1, 'Celta de Vigo', 3, 0, 8, 2014, 2015);
EXEC INSERT_PARTIDO ('18/10/2014', 2, 0, 'Barcelona', 3, 0, 'Eibar', 2, 0, 8, 2014, 2015);
EXEC INSERT_PARTIDO ('18/10/2014', 2, 0, 'Córdoba', 1, 2, 'Málaga', 3, 0, 8, 2014, 2015);
EXEC INSERT_PARTIDO ('19/10/2014', 0, 0, 'Atlético de Madrid', 2, 0, 'Espanyol', 0, 0, 8, 2014, 2015);
EXEC INSERT_PARTIDO ('19/10/2014', 4, 0, 'Deportivo de La Coruña', 3, 0, 'Valencia', 4, 0, 8, 2014, 2015);
EXEC INSERT_PARTIDO ('19/10/2014', 5, 0, 'Elche', 0, 2, 'Sevilla', 2, 0, 8, 2014, 2015);
EXEC INSERT_PARTIDO ('19/10/2014', 5, 0, 'Villarreal', 2, 0, 'Almería', 2, 0, 8, 2014, 2015);
EXEC INSERT_PARTIDO ('20/10/2014', 1, 0, 'Real Sociedad', 1, 2, 'Getafe', 4, 0, 8, 2014, 2015);

COMMIT;
-- Jornada 9
EXEC INSERT_PARTIDO ('24/10/2014', 0, 0, 'Celta de Vigo', 3, 0, 'Levante', 3, 0, 9, 2014, 2015);
EXEC INSERT_PARTIDO ('25/10/2014', 2, 0, 'Almería', 0, 1, 'Athletic Club', 1, 0, 9, 2014, 2015);
EXEC INSERT_PARTIDO ('25/10/2014', 2, 0, 'Real Madrid', 3, 1, 'Barcelona', 4, 0, 9, 2014, 2015);
EXEC INSERT_PARTIDO ('25/10/2014', 0, 0, 'Valencia', 3, 1, 'Elche', 2, 0, 9, 2014, 2015);
EXEC INSERT_PARTIDO ('25/10/2014', 3, 0, 'Córdoba', 1, 1, 'Real Sociedad', 2, 0, 9, 2014, 2015);
EXEC INSERT_PARTIDO ('25/10/2014', 3, 0, 'Eibar', 1, 1, 'Granada', 4, 0, 9, 2014, 2015);
EXEC INSERT_PARTIDO ('26/10/2014', 1, 0, 'Málaga', 4, 0, 'Rayo Vallecano', 4, 0, 9, 2014, 2015);
EXEC INSERT_PARTIDO ('26/10/2014', 2, 0, 'Espanyol', 0, 0, 'Deportivo de La Coruña', 4, 0, 9, 2014, 2015);
EXEC INSERT_PARTIDO ('26/10/2014', 3, 0, 'Sevilla', 2, 1, 'Villarreal', 4, 0, 9, 2014, 2015);
EXEC INSERT_PARTIDO ('26/10/2014', 3, 1, 'Getafe', 0, 1, 'Atlético de Madrid', 3, 0, 9, 2014, 2015);

COMMIT;
-- Jornada 10
EXEC INSERT_PARTIDO ('31/10/2014', 2, 0, 'Deportivo de La Coruña', 1, 2, 'Getafe', 1, 0, 10, 2014, 2015);
EXEC INSERT_PARTIDO ('01/11/2014', 1, 0, 'Granada', 0, 4, 'Real Madrid', 2, 0, 10, 2014, 2015);
EXEC INSERT_PARTIDO ('01/11/2014', 0, 0, 'Atlético de Madrid', 4, 2, 'Córdoba', 2, 0, 10, 2014, 2015);
EXEC INSERT_PARTIDO ('01/11/2014', 1, 0, 'Barcelona', 0, 1, 'Celta de Vigo', 2, 0, 10, 2014, 2015);
EXEC INSERT_PARTIDO ('01/11/2014', 2, 0, 'Real Sociedad', 0, 1, 'Málaga', 5, 0, 10, 2014, 2015);
EXEC INSERT_PARTIDO ('02/11/2014', 4, 0, 'Athletic Club', 1, 0, 'Sevilla', 3, 0, 10, 2014, 2015);
EXEC INSERT_PARTIDO ('02/11/2014', 2, 0, 'Villarreal', 1, 3, 'Valencia', 3, 0, 10, 2014, 2015);
EXEC INSERT_PARTIDO ('02/11/2014', 3, 0, 'Levante', 2, 1, 'Almería', 2, 0, 10, 2014, 2015);
EXEC INSERT_PARTIDO ('02/11/2014', 6, 2, 'Elche', 2, 1, 'Espanyol', 2, 0, 10, 2014, 2015);
EXEC INSERT_PARTIDO ('03/11/2014', 1, 0, 'Rayo Vallecano', 2, 3, 'Eibar', 2, 0, 10, 2014, 2015);

COMMIT;
-- Jornada 11
EXEC INSERT_PARTIDO ('07/11/2014', 4, 0, 'Córdoba', 0, 0, 'Deportivo de La Coruña', 2, 1, 11, 2014, 2015);
EXEC INSERT_PARTIDO ('08/11/2014', 2, 0, 'Almería', 1, 2, 'Barcelona', 0, 0, 11, 2014, 2015);
EXEC INSERT_PARTIDO ('08/11/2014', 1, 0, 'Getafe', 0, 0, 'Elche', 2, 0, 11, 2014, 2015);
EXEC INSERT_PARTIDO ('08/11/2014', 0, 0, 'Real Madrid', 5, 1, 'Rayo Vallecano', 4, 0, 11, 2014, 2015);
EXEC INSERT_PARTIDO ('08/11/2014', 1, 0, 'Celta de Vigo', 0, 0, 'Granada', 5, 0, 11, 2014, 2015);
EXEC INSERT_PARTIDO ('08/11/2014', 3, 0, 'Málaga', 2, 1, 'Eibar', 4, 1, 11, 2014, 2015);
EXEC INSERT_PARTIDO ('09/11/2014', 2, 0, 'Sevilla', 1, 1, 'Levante', 6, 0, 11, 2014, 2015);
EXEC INSERT_PARTIDO ('09/11/2014', 3, 0, 'Espanyol', 1, 1, 'Villarreal', 3, 0, 11, 2014, 2015);
EXEC INSERT_PARTIDO ('09/11/2014', 0, 0, 'Valencia', 0, 0, 'Athletic Club', 2, 0, 11, 2014, 2015);
EXEC INSERT_PARTIDO ('09/11/2014', 2, 0, 'Real Sociedad', 2, 1, 'Atlético de Madrid', 8, 1, 11, 2014, 2015);

COMMIT;
-- Jornada 12
EXEC INSERT_PARTIDO ('21/11/2014', 0, 0, 'Athletic Club', 3, 1, 'Espanyol', 5, 0, 12, 2014, 2015);
EXEC INSERT_PARTIDO ('22/11/2014', 3, 1, 'Atlético de Madrid', 3, 1, 'Málaga', 5, 1, 12, 2014, 2015);
EXEC INSERT_PARTIDO ('22/11/2014', 4, 0, 'Eibar', 0, 4, 'Real Madrid', 2, 0, 12, 2014, 2015);
EXEC INSERT_PARTIDO ('22/11/2014', 1, 0, 'Barcelona', 5, 1, 'Sevilla', 2, 0, 12, 2014, 2015);
EXEC INSERT_PARTIDO ('22/11/2014', 3, 0, 'Deportivo de La Coruña', 0, 0, 'Real Sociedad', 1, 0, 12, 2014, 2015);
EXEC INSERT_PARTIDO ('23/11/2014', 6, 0, 'Rayo Vallecano', 1, 0, 'Celta de Vigo', 4, 0, 12, 2014, 2015);
EXEC INSERT_PARTIDO ('23/11/2014', 2, 0, 'Levante', 2, 1, 'Valencia', 1, 0, 12, 2014, 2015);
EXEC INSERT_PARTIDO ('23/11/2014', 3, 0, 'Elche', 2, 2, 'Córdoba', 4, 0, 12, 2014, 2015);
EXEC INSERT_PARTIDO ('23/11/2014', 3, 0, 'Villarreal', 2, 1, 'Getafe', 2, 0, 12, 2014, 2015);
EXEC INSERT_PARTIDO ('24/11/2014', 4, 0, 'Granada', 0, 0, 'Almería', 2, 1, 12, 2014, 2015);

COMMIT;
-- Jornada 13
EXEC INSERT_PARTIDO ('28/11/2014', 2, 0, 'Real Sociedad', 3, 0, 'Elche', 4, 0, 13, 2014, 2015);
EXEC INSERT_PARTIDO ('29/11/2014', 7, 0, 'Getafe', 1, 2, 'Athletic Club', 5, 0, 13, 2014, 2015);
EXEC INSERT_PARTIDO ('29/11/2014', 2, 0, 'Espanyol', 2, 1, 'Levante', 3, 0, 13, 2014, 2015);
EXEC INSERT_PARTIDO ('29/11/2014', 2, 0, 'Málaga', 1, 2, 'Real Madrid', 4, 1, 13, 2014, 2015);
EXEC INSERT_PARTIDO ('29/11/2014', 4, 0, 'Celta de Vigo', 0, 1, 'Eibar', 5, 0, 13, 2014, 2015);
EXEC INSERT_PARTIDO ('30/11/2014', 2, 0, 'Atlético de Madrid', 2, 0, 'Deportivo de La Coruña', 2, 0, 13, 2014, 2015);
EXEC INSERT_PARTIDO ('30/11/2014', 1, 0, 'Sevilla', 5, 1, 'Granada', 2, 0, 13, 2014, 2015);
EXEC INSERT_PARTIDO ('30/11/2014', 3, 0, 'Córdoba', 0, 2, 'Villarreal', 2, 0, 13, 2014, 2015);
EXEC INSERT_PARTIDO ('30/11/2014', 4, 0, 'Valencia', 0, 1, 'Barcelona', 4, 0, 13, 2014, 2015);
EXEC INSERT_PARTIDO ('01/12/2014', 4, 0, 'Almería', 0, 1, 'Rayo Vallecano', 4, 0, 13, 2014, 2015);

COMMIT;
-- Jornada 14
EXEC INSERT_PARTIDO ('06/12/2014', 2, 0, 'Elche', 0, 2, 'Atlético de Madrid', 0, 0, 14, 2014, 2015);
EXEC INSERT_PARTIDO ('06/12/2014', 4, 0, 'Athletic Club', 0, 1, 'Córdoba', 6, 0, 14, 2014, 2015);
EXEC INSERT_PARTIDO ('06/12/2014', 4, 0, 'Real Madrid', 3, 0, 'Celta de Vigo', 4, 0, 14, 2014, 2015);
EXEC INSERT_PARTIDO ('06/12/2014', 4, 0, 'Deportivo de La Coruña', 0, 1, 'Málaga', 3, 0, 14, 2014, 2015);
EXEC INSERT_PARTIDO ('07/12/2014', 4, 0, 'Rayo Vallecano', 0, 1, 'Sevilla', 8, 1, 14, 2014, 2015);
EXEC INSERT_PARTIDO ('07/12/2014', 0, 0, 'Barcelona', 5, 1, 'Espanyol', 4, 0, 14, 2014, 2015);
EXEC INSERT_PARTIDO ('07/12/2014', 2, 0, 'Villarreal', 4, 0, 'Real Sociedad', 2, 0, 14, 2014, 2015);
EXEC INSERT_PARTIDO ('07/12/2014', 4, 0, 'Granada', 1, 1, 'Valencia', 4, 1, 14, 2014, 2015);
EXEC INSERT_PARTIDO ('08/12/2014', 4, 0, 'Eibar', 5, 2, 'Almería', 3, 0, 14, 2014, 2015);
EXEC INSERT_PARTIDO ('08/12/2014', 3, 0, 'Levante', 1, 1, 'Getafe', 4, 0, 14, 2014, 2015);

COMMIT;
-- Jornada 15
EXEC INSERT_PARTIDO ('12/12/2014', 4, 0, 'Almería', 1, 4, 'Real Madrid', 4, 0, 15, 2014, 2015);
EXEC INSERT_PARTIDO ('13/12/2014', 1, 0, 'Getafe', 0, 0, 'Barcelona', 0, 0, 15, 2014, 2015);
EXEC INSERT_PARTIDO ('13/12/2014', 5, 1, 'Valencia', 3, 0, 'Rayo Vallecano', 3, 0, 15, 2014, 2015);
EXEC INSERT_PARTIDO ('13/12/2014', 0, 0, 'Córdoba', 0, 0, 'Levante', 3, 0, 15, 2014, 2015);
EXEC INSERT_PARTIDO ('13/12/2014', 5, 0, 'Málaga', 1, 0, 'Celta de Vigo', 4, 0, 15, 2014, 2015);
EXEC INSERT_PARTIDO ('14/12/2014', 2, 0, 'Espanyol', 2, 1, 'Granada', 6, 1, 15, 2014, 2015);
EXEC INSERT_PARTIDO ('14/12/2014', 3, 0, 'Sevilla', 0, 0, 'Eibar', 6, 0, 15, 2014, 2015);
EXEC INSERT_PARTIDO ('14/12/2014', 4, 0, 'Atlético de Madrid', 0, 1, 'Villarreal', 3, 0, 15, 2014, 2015);
EXEC INSERT_PARTIDO ('14/12/2014', 0, 0, 'Real Sociedad', 1, 1, 'Athletic Club', 5, 1, 15, 2014, 2015);
EXEC INSERT_PARTIDO ('15/12/2014', 5, 0, 'Deportivo de La Coruña', 1, 0, 'Elche', 2, 0, 15, 2014, 2015);

COMMIT;
-- Jornada 16
EXEC INSERT_PARTIDO ('19/12/2014', 6, 0, 'Celta de Vigo', 0, 1, 'Almería', 4, 0, 16, 2014, 2015);
EXEC INSERT_PARTIDO ('20/12/2014', 1, 0, 'Barcelona', 5, 0, 'Córdoba', 0, 0, 16, 2014, 2015);
EXEC INSERT_PARTIDO ('20/12/2014', 3, 0, 'Levante', 1, 1, 'Real Sociedad', 5, 0, 16, 2014, 2015);
EXEC INSERT_PARTIDO ('20/12/2014', 7, 0, 'Eibar', 0, 1, 'Valencia', 3, 0, 16, 2014, 2015);
EXEC INSERT_PARTIDO ('20/12/2014', 3, 0, 'Rayo Vallecano', 1, 3, 'Espanyol', 6, 1, 16, 2014, 2015);
EXEC INSERT_PARTIDO ('21/12/2014', 1, 1, 'Villarreal', 3, 0, 'Deportivo de La Coruña', 3, 0, 16, 2014, 2015);
EXEC INSERT_PARTIDO ('21/12/2014', 4, 0, 'Granada', 1, 1, 'Getafe', 3, 0, 16, 2014, 2015);
EXEC INSERT_PARTIDO ('21/12/2014', 3, 0, 'Elche', 1, 2, 'Málaga', 3, 0, 16, 2014, 2015);
EXEC INSERT_PARTIDO ('21/12/2014', 3, 0, 'Athletic Club', 1, 4, 'Atlético de Madrid', 4, 0, 16, 2014, 2015);
EXEC INSERT_PARTIDO ('04/02/2015', 3, 0, 'Real Madrid', 2, 1, 'Sevilla', 6, 0, 16, 2014, 2015);

COMMIT;
-- Jornada 17
EXEC INSERT_PARTIDO ('03/01/2015', 2, 0, 'Atlético de Madrid', 3, 1, 'Levante', 3, 0, 17, 2014, 2015);
EXEC INSERT_PARTIDO ('03/01/2015', 4, 0, 'Sevilla', 1, 0, 'Celta de Vigo', 5, 1, 17, 2014, 2015);
EXEC INSERT_PARTIDO ('03/01/2015', 4, 0, 'Elche', 2, 2, 'Villarreal', 2, 0, 17, 2014, 2015);
EXEC INSERT_PARTIDO ('03/01/2015', 1, 0, 'Deportivo de La Coruña', 1, 0, 'Athletic Club', 1, 0, 17, 2014, 2015);
EXEC INSERT_PARTIDO ('03/01/2015', 4, 0, 'Málaga', 1, 2, 'Almería', 6, 1, 17, 2014, 2015);
EXEC INSERT_PARTIDO ('04/01/2015', 3, 0, 'Getafe', 1, 2, 'Rayo Vallecano', 2, 0, 17, 2014, 2015);
EXEC INSERT_PARTIDO ('04/01/2015', 6, 0, 'Valencia', 2, 1, 'Real Madrid', 3, 0, 17, 2014, 2015);
EXEC INSERT_PARTIDO ('04/01/2015', 1, 0, 'Espanyol', 1, 2, 'Eibar', 1, 0, 17, 2014, 2015);
EXEC INSERT_PARTIDO ('04/01/2015', 5, 0, 'Real Sociedad', 1, 0, 'Barcelona', 4, 0, 17, 2014, 2015);
EXEC INSERT_PARTIDO ('05/01/2015', 2, 0, 'Córdoba', 2, 0, 'Granada', 0, 0, 17, 2014, 2015);

COMMIT;
-- Jornada 18
EXEC INSERT_PARTIDO ('09/01/2015', 4, 0, 'Levante', 0, 0, 'Deportivo de La Coruña', 3, 0, 18, 2014, 2015);
EXEC INSERT_PARTIDO ('10/01/2015', 1, 1, 'Real Madrid', 3, 0, 'Espanyol', 4, 0, 18, 2014, 2015);
EXEC INSERT_PARTIDO ('10/01/2015', 4, 0, 'Málaga', 1, 1, 'Villarreal', 4, 0, 18, 2014, 2015);
EXEC INSERT_PARTIDO ('10/01/2015', 3, 0, 'Celta de Vigo', 1, 1, 'Valencia', 3, 0, 18, 2014, 2015);
EXEC INSERT_PARTIDO ('10/01/2015', 2, 0, 'Eibar', 2, 1, 'Getafe', 1, 0, 18, 2014, 2015);
EXEC INSERT_PARTIDO ('11/01/2015', 1, 0, 'Almería', 0, 2, 'Sevilla', 2, 0, 18, 2014, 2015);
EXEC INSERT_PARTIDO ('11/01/2015', 2, 0, 'Athletic Club', 1, 2, 'Elche', 6, 0, 18, 2014, 2015);
EXEC INSERT_PARTIDO ('11/01/2015', 2, 0, 'Granada', 1, 1, 'Real Sociedad', 2, 0, 18, 2014, 2015);
EXEC INSERT_PARTIDO ('11/01/2015', 3, 0, 'Barcelona', 3, 1, 'Atlético de Madrid', 6, 0, 18, 2014, 2015);
EXEC INSERT_PARTIDO ('12/01/2015', 3, 0, 'Rayo Vallecano', 0, 1, 'Córdoba', 2, 0, 18, 2014, 2015);

COMMIT;
-- Jornada 19
EXEC INSERT_PARTIDO ('16/01/2015', 6, 1, 'Córdoba', 1, 1, 'Eibar', 3, 1, 19, 2014, 2015);
EXEC INSERT_PARTIDO ('17/01/2015', 0, 0, 'Real Sociedad', 0, 1, 'Rayo Vallecano', 4, 0, 19, 2014, 2015);
EXEC INSERT_PARTIDO ('17/01/2015', 2, 0, 'Valencia', 3, 2, 'Almería', 2, 0, 19, 2014, 2015);
EXEC INSERT_PARTIDO ('17/01/2015', 2, 0, 'Villarreal', 2, 0, 'Athletic Club', 2, 0, 19, 2014, 2015);
EXEC INSERT_PARTIDO ('17/01/2015', 3, 0, 'Espanyol', 1, 0, 'Celta de Vigo', 3, 0, 19, 2014, 2015);
EXEC INSERT_PARTIDO ('18/01/2015', 2, 0, 'Getafe', 0, 3, 'Real Madrid', 2, 0, 19, 2014, 2015);
EXEC INSERT_PARTIDO ('18/01/2015', 3, 0, 'Atlético de Madrid', 2, 0, 'Granada', 3, 0, 19, 2014, 2015);
EXEC INSERT_PARTIDO ('18/01/2015', 2, 0, 'Deportivo de La Coruña', 0, 4, 'Barcelona', 2, 0, 19, 2014, 2015);
EXEC INSERT_PARTIDO ('18/01/2015', 3, 0, 'Elche', 1, 0, 'Levante', 3, 1, 19, 2014, 2015);
EXEC INSERT_PARTIDO ('18/01/2015', 4, 0, 'Sevilla', 2, 0, 'Málaga', 1, 0, 19, 2014, 2015);

COMMIT;
-- Jornada 20
EXEC INSERT_PARTIDO ('24/01/2015', 3, 1, 'Córdoba', 1, 2, 'Real Madrid', 3, 1, 20, 2014, 2015);
EXEC INSERT_PARTIDO ('24/01/2015', 7, 1, 'Elche', 0, 6, 'Barcelona', 2, 0, 20, 2014, 2015);
EXEC INSERT_PARTIDO ('24/01/2015', 1, 0, 'Atlético de Madrid', 3, 1, 'Rayo Vallecano', 1, 0, 20, 2014, 2015);
EXEC INSERT_PARTIDO ('24/01/2015', 2, 0, 'Real Sociedad', 1, 0, 'Eibar', 2, 0, 20, 2014, 2015);
EXEC INSERT_PARTIDO ('24/01/2015', 0, 0, 'Villarreal', 1, 0, 'Levante', 3, 0, 20, 2014, 2015);
EXEC INSERT_PARTIDO ('25/01/2015', 3, 1, 'Deportivo de La Coruña', 2, 2, 'Granada', 3, 0, 20, 2014, 2015);
EXEC INSERT_PARTIDO ('25/01/2015', 0, 0, 'Athletic Club', 1, 1, 'Málaga', 1, 0, 20, 2014, 2015);
EXEC INSERT_PARTIDO ('25/01/2015', 2, 0, 'Espanyol', 3, 0, 'Almería', 1, 0, 20, 2014, 2015);
EXEC INSERT_PARTIDO ('25/01/2015', 6, 0, 'Valencia', 3, 1, 'Sevilla', 5, 0, 20, 2014, 2015);
EXEC INSERT_PARTIDO ('26/01/2015', 2, 0, 'Getafe', 2, 1, 'Celta de Vigo', 4, 0, 20, 2014, 2015);

COMMIT;
-- Jornada 21
EXEC INSERT_PARTIDO ('30/01/2015', 3, 0, 'Rayo Vallecano', 1, 2, 'Deportivo de La Coruña', 5, 0, 21, 2014, 2015);
EXEC INSERT_PARTIDO ('31/01/2015', 3, 0, 'Real Madrid', 4, 1, 'Real Sociedad', 1, 0, 21, 2014, 2015);
EXEC INSERT_PARTIDO ('31/01/2015', 3, 0, 'Eibar', 1, 3, 'Atlético de Madrid', 3, 0, 21, 2014, 2015);
EXEC INSERT_PARTIDO ('31/01/2015', 4, 0, 'Granada', 1, 0, 'Elche', 6, 1, 21, 2014, 2015);
EXEC INSERT_PARTIDO ('31/01/2015', 2, 0, 'Celta de Vigo', 1, 0, 'Córdoba', 5, 0, 21, 2014, 2015);
EXEC INSERT_PARTIDO ('01/02/2015', 2, 0, 'Levante', 0, 2, 'Athletic Club', 5, 0, 21, 2014, 2015);
EXEC INSERT_PARTIDO ('01/02/2015', 5, 1, 'Almería', 1, 0, 'Getafe', 5, 1, 21, 2014, 2015);
EXEC INSERT_PARTIDO ('01/02/2015', 8, 0, 'Sevilla', 3, 2, 'Espanyol', 2, 1, 21, 2014, 2015);
EXEC INSERT_PARTIDO ('01/02/2015', 1, 0, 'Barcelona', 3, 2, 'Villarreal', 2, 0, 21, 2014, 2015);
EXEC INSERT_PARTIDO ('02/02/2015', 5, 0, 'Málaga', 1, 0, 'Valencia', 5, 1, 21, 2014, 2015);

COMMIT;
-- Jornada 22
EXEC INSERT_PARTIDO ('06/02/2015', 2, 0, 'Deportivo de La Coruña', 2, 0, 'Eibar', 3, 0, 22, 2014, 2015);
EXEC INSERT_PARTIDO ('07/02/2015', 5, 0, 'Atlético de Madrid', 4, 0, 'Real Madrid', 2, 0, 22, 2014, 2015);
EXEC INSERT_PARTIDO ('07/02/2015', 2, 0, 'Villarreal', 2, 0, 'Granada', 1, 0, 22, 2014, 2015);
EXEC INSERT_PARTIDO ('07/02/2015', 2, 0, 'Levante', 4, 1, 'Málaga', 1, 0, 22, 2014, 2015);
EXEC INSERT_PARTIDO ('07/02/2015', 5, 0, 'Real Sociedad', 1, 1, 'Celta de Vigo', 4, 0, 22, 2014, 2015);
EXEC INSERT_PARTIDO ('08/02/2015', 2, 0, 'Córdoba', 1, 2, 'Almería', 5, 0, 22, 2014, 2015);
EXEC INSERT_PARTIDO ('08/02/2015', 1, 0, 'Getafe', 2, 1, 'Sevilla', 2, 0, 22, 2014, 2015);
EXEC INSERT_PARTIDO ('08/02/2015', 5, 0, 'Espanyol', 1, 2, 'Valencia', 4, 0, 22, 2014, 2015);
EXEC INSERT_PARTIDO ('08/02/2015', 3, 1, 'Athletic Club', 2, 5, 'Barcelona', 1, 0, 22, 2014, 2015);
EXEC INSERT_PARTIDO ('09/02/2015', 2, 0, 'Elche', 2, 0, 'Rayo Vallecano', 5, 1, 22, 2014, 2015);

COMMIT;
-- Jornada 23
EXEC INSERT_PARTIDO ('13/02/2015', 5, 0, 'Almería', 2, 2, 'Real Sociedad', 4, 0, 23, 2014, 2015);
EXEC INSERT_PARTIDO ('14/02/2015', 0, 1, 'Sevilla', 3, 0, 'Córdoba', 1, 1, 23, 2014, 2015);
EXEC INSERT_PARTIDO ('14/02/2015', 2, 0, 'Real Madrid', 2, 0, 'Deportivo de La Coruña', 4, 0, 23, 2014, 2015);
EXEC INSERT_PARTIDO ('14/02/2015', 4, 1, 'Granada', 0, 0, 'Athletic Club', 4, 0, 23, 2014, 2015);
EXEC INSERT_PARTIDO ('14/02/2015', 3, 0, 'Málaga', 0, 2, 'Espanyol', 7, 1, 23, 2014, 2015);
EXEC INSERT_PARTIDO ('15/02/2015', 3, 0, 'Valencia', 1, 0, 'Getafe', 4, 0, 23, 2014, 2015);
EXEC INSERT_PARTIDO ('15/02/2015', 1, 0, 'Barcelona', 5, 0, 'Levante', 2, 0, 23, 2014, 2015);
EXEC INSERT_PARTIDO ('15/02/2015', 2, 0, 'Rayo Vallecano', 2, 0, 'Villarreal', 2, 0, 23, 2014, 2015);
EXEC INSERT_PARTIDO ('15/02/2015', 0, 0, 'Celta de Vigo', 2, 0, 'Atlético de Madrid', 3, 0, 23, 2014, 2015);
EXEC INSERT_PARTIDO ('16/02/2015', 3, 1, 'Eibar', 0, 1, 'Elche', 1, 0, 23, 2014, 2015);

COMMIT;
-- Jornada 24
EXEC INSERT_PARTIDO ('20/02/2015', 3, 0, 'Getafe', 2, 1, 'Espanyol', 3, 0, 24, 2014, 2015);
EXEC INSERT_PARTIDO ('21/02/2015', 4, 0, 'Barcelona', 0, 1, 'Málaga', 3, 0, 24, 2014, 2015);
EXEC INSERT_PARTIDO ('21/02/2015', 1, 0, 'Córdoba', 1, 2, 'Valencia', 2, 0, 24, 2014, 2015);
EXEC INSERT_PARTIDO ('21/02/2015', 3, 1, 'Atlético de Madrid', 3, 0, 'Almería', 1, 0, 24, 2014, 2015);
EXEC INSERT_PARTIDO ('21/02/2015', 4, 1, 'Deportivo de La Coruña', 0, 2, 'Celta de Vigo', 4, 0, 24, 2014, 2015);
EXEC INSERT_PARTIDO ('22/02/2015', 5, 0, 'Real Sociedad', 4, 3, 'Sevilla', 3, 0, 24, 2014, 2015);
EXEC INSERT_PARTIDO ('22/02/2015', 3, 0, 'Athletic Club', 1, 0, 'Rayo Vallecano', 2, 0, 24, 2014, 2015);
EXEC INSERT_PARTIDO ('22/02/2015', 2, 0, 'Villarreal', 1, 0, 'Eibar', 0, 0, 24, 2014, 2015);
EXEC INSERT_PARTIDO ('22/02/2015', 4, 0, 'Elche', 0, 2, 'Real Madrid', 1, 0, 24, 2014, 2015);
EXEC INSERT_PARTIDO ('23/02/2015', 3, 1, 'Levante', 2, 1, 'Granada', 5, 2, 24, 2014, 2015);

COMMIT;
-- Jornada 25
EXEC INSERT_PARTIDO ('27/02/2015', 5, 0, 'Espanyol', 1, 0, 'Córdoba', 4, 0, 25, 2014, 2015);
EXEC INSERT_PARTIDO ('28/02/2015', 2, 0, 'Granada', 1, 3, 'Barcelona', 3, 0, 25, 2014, 2015);
EXEC INSERT_PARTIDO ('28/02/2015', 2, 0, 'Rayo Vallecano', 4, 2, 'Levante', 2, 0, 25, 2014, 2015);
EXEC INSERT_PARTIDO ('28/02/2015', 6, 2, 'Almería', 0, 0, 'Deportivo de La Coruña', 3, 0, 25, 2014, 2015);
EXEC INSERT_PARTIDO ('28/02/2015', 3, 0, 'Málaga', 3, 2, 'Getafe', 1, 0, 25, 2014, 2015);
EXEC INSERT_PARTIDO ('01/03/2015', 3, 0, 'Valencia', 2, 0, 'Real Sociedad', 3, 0, 25, 2014, 2015);
EXEC INSERT_PARTIDO ('01/03/2015', 3, 0, 'Eibar', 0, 1, 'Athletic Club', 2, 0, 25, 2014, 2015);
EXEC INSERT_PARTIDO ('01/03/2015', 4, 0, 'Sevilla', 0, 0, 'Atlético de Madrid', 7, 0, 25, 2014, 2015);
EXEC INSERT_PARTIDO ('01/03/2015', 2, 0, 'Real Madrid', 1, 1, 'Villarreal', 5, 0, 25, 2014, 2015);
EXEC INSERT_PARTIDO ('02/03/2015', 6, 0, 'Celta de Vigo', 1, 1, 'Elche', 3, 0, 25, 2014, 2015);

COMMIT;
-- Jornada 26
EXEC INSERT_PARTIDO ('06/03/2015', 4, 0, 'Levante', 2, 1, 'Eibar', 8, 1, 26, 2014, 2015);
EXEC INSERT_PARTIDO ('07/03/2015', 1, 0, 'Deportivo de La Coruña', 3, 4, 'Sevilla', 4, 0, 26, 2014, 2015);
EXEC INSERT_PARTIDO ('07/03/2015', 3, 0, 'Athletic Club', 1, 0, 'Real Madrid', 4, 0, 26, 2014, 2015);
EXEC INSERT_PARTIDO ('07/03/2015', 3, 0, 'Elche', 1, 0, 'Almería', 0, 0, 26, 2014, 2015);
EXEC INSERT_PARTIDO ('07/03/2015', 4, 0, 'Granada', 1, 0, 'Málaga', 5, 0, 26, 2014, 2015);
EXEC INSERT_PARTIDO ('08/03/2015', 3, 1, 'Barcelona', 6, 1, 'Rayo Vallecano', 4, 1, 26, 2014, 2015);
EXEC INSERT_PARTIDO ('08/03/2015', 2, 0, 'Real Sociedad', 1, 0, 'Espanyol', 3, 0, 26, 2014, 2015);
EXEC INSERT_PARTIDO ('08/03/2015', 0, 0, 'Villarreal', 4, 1, 'Celta de Vigo', 2, 0, 26, 2014, 2015);
EXEC INSERT_PARTIDO ('08/03/2015', 5, 0, 'Atlético de Madrid', 1, 1, 'Valencia', 8, 1, 26, 2014, 2015);
EXEC INSERT_PARTIDO ('09/03/2015', 3, 0, 'Córdoba', 1, 2, 'Getafe', 2, 0, 26, 2014, 2015);

COMMIT;
-- Jornada 27
EXEC INSERT_PARTIDO ('13/03/2015', 1, 0, 'Valencia', 2, 0, 'Deportivo de La Coruña', 2, 0, 27, 2014, 2015);
EXEC INSERT_PARTIDO ('14/03/2015', 3, 0, 'Espanyol', 0, 0, 'Atlético de Madrid', 3, 1, 27, 2014, 2015);
EXEC INSERT_PARTIDO ('14/03/2015', 1, 0, 'Eibar', 0, 2, 'Barcelona', 0, 0, 27, 2014, 2015);
EXEC INSERT_PARTIDO ('14/03/2015', 3, 0, 'Rayo Vallecano', 3, 1, 'Granada', 2, 0, 27, 2014, 2015);
EXEC INSERT_PARTIDO ('14/03/2015', 3, 0, 'Celta de Vigo', 1, 2, 'Athletic Club', 5, 1, 27, 2014, 2015);
EXEC INSERT_PARTIDO ('15/03/2015', 4, 1, 'Almería', 0, 0, 'Villarreal', 6, 1, 27, 2014, 2015);
EXEC INSERT_PARTIDO ('15/03/2015', 0, 0, 'Málaga', 2, 0, 'Córdoba', 2, 0, 27, 2014, 2015);
EXEC INSERT_PARTIDO ('15/03/2015', 2, 0, 'Sevilla', 3, 0, 'Elche', 3, 0, 27, 2014, 2015);
EXEC INSERT_PARTIDO ('15/03/2015', 2, 0, 'Real Madrid', 2, 0, 'Levante', 0, 0, 27, 2014, 2015);
EXEC INSERT_PARTIDO ('16/03/2015', 4, 0, 'Getafe', 0, 1, 'Real Sociedad', 1, 0, 27, 2014, 2015);

COMMIT;
-- Jornada 28
EXEC INSERT_PARTIDO ('20/03/2015', 1, 0, 'Elche', 0, 4, 'Valencia', 0, 0, 28, 2014, 2015);
EXEC INSERT_PARTIDO ('21/03/2015', 2, 0, 'Atlético de Madrid', 2, 0, 'Getafe', 2, 0, 28, 2014, 2015);
EXEC INSERT_PARTIDO ('21/03/2015', 8, 0, 'Rayo Vallecano', 1, 0, 'Málaga', 2, 1, 28, 2014, 2015);
EXEC INSERT_PARTIDO ('21/03/2015', 4, 0, 'Levante', 0, 1, 'Celta de Vigo', 3, 0, 28, 2014, 2015);
EXEC INSERT_PARTIDO ('21/03/2015', 2, 0, 'Athletic Club', 2, 1, 'Almería', 6, 1, 28, 2014, 2015);
EXEC INSERT_PARTIDO ('21/03/2015', 4, 0, 'Granada', 0, 0, 'Eibar', 1, 0, 28, 2014, 2015);
EXEC INSERT_PARTIDO ('22/03/2015', 4, 0, 'Deportivo de La Coruña', 0, 0, 'Espanyol', 4, 0, 28, 2014, 2015);
EXEC INSERT_PARTIDO ('22/03/2015', 2, 0, 'Villarreal', 0, 2, 'Sevilla', 1, 0, 28, 2014, 2015);
EXEC INSERT_PARTIDO ('22/03/2015', 1, 0, 'Real Sociedad', 3, 1, 'Córdoba', 8, 3, 28, 2014, 2015);
EXEC INSERT_PARTIDO ('22/03/2015', 5, 0, 'Barcelona', 2, 1, 'Real Madrid', 6, 0, 28, 2014, 2015);

COMMIT;
-- Jornada 29
EXEC INSERT_PARTIDO ('03/04/2015', 5, 1, 'Eibar', 1, 2, 'Rayo Vallecano', 3, 0, 29, 2014, 2015);
EXEC INSERT_PARTIDO ('04/04/2015', 3, 0, 'Sevilla', 2, 0, 'Athletic Club', 3, 0, 29, 2014, 2015);
EXEC INSERT_PARTIDO ('04/04/2015', 2, 0, 'Córdoba', 0, 2, 'Atlético de Madrid', 1, 0, 29, 2014, 2015);
EXEC INSERT_PARTIDO ('04/04/2015', 5, 1, 'Almería', 1, 4, 'Levante', 2, 0, 29, 2014, 2015);
EXEC INSERT_PARTIDO ('04/04/2015', 4, 0, 'Málaga', 1, 1, 'Real Sociedad', 5, 0, 29, 2014, 2015);
EXEC INSERT_PARTIDO ('05/04/2015', 1, 0, 'Real Madrid', 9, 1, 'Granada', 2, 0, 29, 2014, 2015);
EXEC INSERT_PARTIDO ('05/04/2015', 2, 0, 'Valencia', 0, 0, 'Villarreal', 5, 0, 29, 2014, 2015);
EXEC INSERT_PARTIDO ('05/04/2015', 1, 0, 'Getafe', 2, 1, 'Deportivo de La Coruña', 3, 0, 29, 2014, 2015);
EXEC INSERT_PARTIDO ('05/04/2015', 2, 1, 'Celta de Vigo', 0, 1, 'Barcelona', 2, 0, 29, 2014, 2015);
EXEC INSERT_PARTIDO ('06/04/2015', 3, 0, 'Espanyol', 1, 1, 'Elche', 3, 0, 29, 2014, 2015);

COMMIT;
-- Jornada 30
EXEC INSERT_PARTIDO ('07/04/2015', 1, 0, 'Atlético de Madrid', 2, 0, 'Real Sociedad', 0, 0, 30, 2014, 2015);
EXEC INSERT_PARTIDO ('07/04/2015', 4, 0, 'Levante', 1, 2, 'Sevilla', 5, 0, 30, 2014, 2015);
EXEC INSERT_PARTIDO ('07/04/2015', 3, 0, 'Eibar', 1, 0, 'Málaga', 2, 0, 30, 2014, 2015);
EXEC INSERT_PARTIDO ('08/04/2015', 5, 1, 'Deportivo de La Coruña', 1, 1, 'Córdoba', 3, 0, 30, 2014, 2015);
EXEC INSERT_PARTIDO ('08/04/2015', 1, 0, 'Barcelona', 4, 0, 'Almería', 3, 0, 30, 2014, 2015);
EXEC INSERT_PARTIDO ('08/04/2015', 5, 1, 'Granada', 1, 1, 'Celta de Vigo', 5, 0, 30, 2014, 2015);
EXEC INSERT_PARTIDO ('08/04/2015', 4, 0, 'Rayo Vallecano', 0, 2, 'Real Madrid', 5, 0, 30, 2014, 2015);
EXEC INSERT_PARTIDO ('09/04/2015', 5, 0, 'Athletic Club', 1, 1, 'Valencia', 3, 1, 30, 2014, 2015);
EXEC INSERT_PARTIDO ('09/04/2015', 2, 0, 'Elche', 0, 1, 'Getafe', 3, 0, 30, 2014, 2015);
EXEC INSERT_PARTIDO ('09/04/2015', 1, 0, 'Villarreal', 0, 3, 'Espanyol', 1, 0, 30, 2014, 2015);

COMMIT;
-- Jornada 31
EXEC INSERT_PARTIDO ('11/04/2015', 0, 0, 'Real Madrid', 3, 0, 'Eibar', 3, 0, 31, 2014, 2015);
EXEC INSERT_PARTIDO ('11/04/2015', 2, 0, 'Málaga', 2, 2, 'Atlético de Madrid', 3, 0, 31, 2014, 2015);
EXEC INSERT_PARTIDO ('11/04/2015', 5, 0, 'Sevilla', 2, 2, 'Barcelona', 2, 0, 31, 2014, 2015);
EXEC INSERT_PARTIDO ('11/04/2015', 4, 0, 'Almería', 3, 0, 'Granada', 4, 0, 31, 2014, 2015);
EXEC INSERT_PARTIDO ('11/04/2015', 1, 0, 'Celta de Vigo', 6, 1, 'Rayo Vallecano', 1, 0, 31, 2014, 2015);
EXEC INSERT_PARTIDO ('12/04/2015', 2, 0, 'Getafe', 1, 1, 'Villarreal', 6, 0, 31, 2014, 2015);
EXEC INSERT_PARTIDO ('12/04/2015', 2, 0, 'Espanyol', 1, 0, 'Athletic Club', 2, 0, 31, 2014, 2015);
EXEC INSERT_PARTIDO ('12/04/2015', 4, 0, 'Real Sociedad', 2, 2, 'Deportivo de La Coruña', 4, 0, 31, 2014, 2015);
EXEC INSERT_PARTIDO ('12/04/2015', 0, 1, 'Córdoba', 0, 2, 'Elche', 2, 0, 31, 2014, 2015);
EXEC INSERT_PARTIDO ('13/04/2015', 3, 0, 'Valencia', 3, 0, 'Levante', 3, 0, 31, 2014, 2015);

COMMIT;
-- Jornada 32
EXEC INSERT_PARTIDO ('17/04/2015', 1, 0, 'Levante', 2, 2, 'Espanyol', 3, 0, 32, 2014, 2015);
EXEC INSERT_PARTIDO ('18/04/2015', 4, 0, 'Barcelona', 2, 0, 'Valencia', 4, 0, 32, 2014, 2015);
EXEC INSERT_PARTIDO ('18/04/2015', 2, 0, 'Deportivo de La Coruña', 1, 2, 'Atlético de Madrid', 4, 0, 32, 2014, 2015);
EXEC INSERT_PARTIDO ('18/04/2015', 2, 0, 'Real Madrid', 3, 1, 'Málaga', 2, 0, 32, 2014, 2015);
EXEC INSERT_PARTIDO ('18/04/2015', 2, 0, 'Athletic Club', 4, 0, 'Getafe', 4, 1, 32, 2014, 2015);
EXEC INSERT_PARTIDO ('19/04/2015', 1, 0, 'Rayo Vallecano', 2, 0, 'Almería', 2, 0, 32, 2014, 2015);
EXEC INSERT_PARTIDO ('19/04/2015', 2, 0, 'Granada', 1, 1, 'Sevilla', 2, 0, 32, 2014, 2015);
EXEC INSERT_PARTIDO ('19/04/2015', 1, 0, 'Villarreal', 0, 0, 'Córdoba', 4, 0, 32, 2014, 2015);
EXEC INSERT_PARTIDO ('19/04/2015', 2, 0, 'Eibar', 0, 1, 'Celta de Vigo', 2, 0, 32, 2014, 2015);
EXEC INSERT_PARTIDO ('20/04/2015', 3, 0, 'Elche', 1, 0, 'Real Sociedad', 4, 0, 32, 2014, 2015);

COMMIT;
-- Jornada 33
EXEC INSERT_PARTIDO ('24/04/2015', 2, 0, 'Córdoba', 0, 1, 'Athletic Club', 3, 0, 33, 2014, 2015);
EXEC INSERT_PARTIDO ('25/04/2015', 7, 1, 'Espanyol', 0, 2, 'Barcelona', 3, 1, 33, 2014, 2015);
EXEC INSERT_PARTIDO ('25/04/2015', 3, 0, 'Atlético de Madrid', 3, 0, 'Elche', 2, 0, 33, 2014, 2015);
EXEC INSERT_PARTIDO ('25/04/2015', 4, 0, 'Getafe', 0, 1, 'Levante', 3, 0, 33, 2014, 2015);
EXEC INSERT_PARTIDO ('25/04/2015', 1, 0, 'Real Sociedad', 0, 0, 'Villarreal', 4, 0, 33, 2014, 2015);
EXEC INSERT_PARTIDO ('26/04/2015', 5, 0, 'Málaga', 1, 1, 'Deportivo de La Coruña', 1, 0, 33, 2014, 2015);
EXEC INSERT_PARTIDO ('26/04/2015', 4, 0, 'Almería', 2, 0, 'Eibar', 3, 0, 33, 2014, 2015);
EXEC INSERT_PARTIDO ('26/04/2015', 0, 0, 'Sevilla', 2, 0, 'Rayo Vallecano', 2, 0, 33, 2014, 2015);
EXEC INSERT_PARTIDO ('26/04/2015', 3, 0, 'Celta de Vigo', 2, 4, 'Real Madrid', 2, 0, 33, 2014, 2015);
EXEC INSERT_PARTIDO ('27/04/2015', 3, 0, 'Valencia', 4, 0, 'Granada', 3, 0, 33, 2014, 2015);

COMMIT;
-- Jornada 34
EXEC INSERT_PARTIDO ('28/04/2015', 0, 0, 'Barcelona', 6, 0, 'Getafe', 0, 0, 34, 2014, 2015);
EXEC INSERT_PARTIDO ('28/04/2015', 2, 0, 'Athletic Club', 1, 1, 'Real Sociedad', 2, 1, 34, 2014, 2015);
EXEC INSERT_PARTIDO ('28/04/2015', 3, 0, 'Levante', 1, 0, 'Córdoba', 3, 0, 34, 2014, 2015);
EXEC INSERT_PARTIDO ('29/04/2015', 3, 0, 'Eibar', 1, 3, 'Sevilla', 2, 0, 34, 2014, 2015);
EXEC INSERT_PARTIDO ('29/04/2015', 1, 0, 'Real Madrid', 3, 0, 'Almería', 0, 0, 34, 2014, 2015);
EXEC INSERT_PARTIDO ('29/04/2015', 3, 0, 'Celta de Vigo', 1, 0, 'Málaga', 5, 0, 34, 2014, 2015);
EXEC INSERT_PARTIDO ('29/04/2015', 1, 0, 'Elche', 4, 0, 'Deportivo de La Coruña', 2, 0, 34, 2014, 2015);
EXEC INSERT_PARTIDO ('29/04/2015', 0, 0, 'Villarreal', 0, 1, 'Atlético de Madrid', 5, 0, 34, 2014, 2015);
EXEC INSERT_PARTIDO ('30/04/2015', 2, 1, 'Rayo Vallecano', 1, 1, 'Valencia', 1, 1, 34, 2014, 2015);
EXEC INSERT_PARTIDO ('30/04/2015', 2, 0, 'Granada', 1, 2, 'Espanyol', 3, 0, 34, 2014, 2015);

COMMIT;
-- Jornada 35
EXEC INSERT_PARTIDO ('01/05/2015', 2, 0, 'Real Sociedad', 3, 0, 'Levante', 3, 0, 35, 2014, 2015);
EXEC INSERT_PARTIDO ('02/05/2015', 2, 0, 'Córdoba', 0, 8, 'Barcelona', 0, 0, 35, 2014, 2015);
EXEC INSERT_PARTIDO ('02/05/2015', 2, 0, 'Atlético de Madrid', 0, 0, 'Athletic Club', 4, 1, 35, 2014, 2015);
EXEC INSERT_PARTIDO ('02/05/2015', 4, 0, 'Sevilla', 2, 3, 'Real Madrid', 2, 0, 35, 2014, 2015);
EXEC INSERT_PARTIDO ('02/05/2015', 1, 0, 'Deportivo de La Coruña', 1, 1, 'Villarreal', 5, 0, 35, 2014, 2015);
EXEC INSERT_PARTIDO ('03/05/2015', 5, 1, 'Espanyol', 1, 1, 'Rayo Vallecano', 1, 0, 35, 2014, 2015);
EXEC INSERT_PARTIDO ('03/05/2015', 3, 0, 'Getafe', 1, 2, 'Granada', 4, 0, 35, 2014, 2015);
EXEC INSERT_PARTIDO ('03/05/2015', 2, 0, 'Valencia', 3, 1, 'Eibar', 1, 0, 35, 2014, 2015);
EXEC INSERT_PARTIDO ('03/05/2015', 3, 0, 'Málaga', 1, 2, 'Elche', 1, 1, 35, 2014, 2015);
EXEC INSERT_PARTIDO ('04/05/2015', 4, 1, 'Almería', 2, 2, 'Celta de Vigo', 3, 1, 35, 2014, 2015);

COMMIT;
-- Jornada 36
EXEC INSERT_PARTIDO ('08/05/2015', 2, 0, 'Eibar', 0, 2, 'Espanyol', 4, 0, 36, 2014, 2015);
EXEC INSERT_PARTIDO ('09/05/2015', 2, 0, 'Granada', 2, 0, 'Córdoba', 6, 2, 36, 2014, 2015);
EXEC INSERT_PARTIDO ('09/05/2015', 1, 0, 'Barcelona', 2, 0, 'Real Sociedad', 5, 0, 36, 2014, 2015);
EXEC INSERT_PARTIDO ('09/05/2015', 4, 0, 'Real Madrid', 2, 2, 'Valencia', 4, 0, 36, 2014, 2015);
EXEC INSERT_PARTIDO ('09/05/2015', 4, 0, 'Athletic Club', 1, 1, 'Deportivo de La Coruña', 4, 0, 36, 2014, 2015);
EXEC INSERT_PARTIDO ('10/05/2015', 2, 0, 'Levante', 2, 2, 'Atlético de Madrid', 2, 0, 36, 2014, 2015);
EXEC INSERT_PARTIDO ('10/05/2015', 1, 0, 'Villarreal', 1, 0, 'Elche', 2, 0, 36, 2014, 2015);
EXEC INSERT_PARTIDO ('10/05/2015', 3, 0, 'Almería', 1, 2, 'Málaga', 4, 0, 36, 2014, 2015);
EXEC INSERT_PARTIDO ('10/05/2015', 3, 0, 'Celta de Vigo', 1, 1, 'Sevilla', 5, 0, 36, 2014, 2015);
EXEC INSERT_PARTIDO ('11/05/2015', 2, 1, 'Rayo Vallecano', 2, 0, 'Getafe', 2, 1, 36, 2014, 2015);

COMMIT;
-- Jornada 37
EXEC INSERT_PARTIDO ('17/05/2015', 3, 0, 'Villarreal', 2, 1, 'Málaga', 1, 0, 37, 2014, 2015);
EXEC INSERT_PARTIDO ('17/05/2015', 2, 0, 'Elche', 2, 3, 'Athletic Club', 2, 0, 37, 2014, 2015);
EXEC INSERT_PARTIDO ('17/05/2015', 3, 0, 'Deportivo de La Coruña', 2, 0, 'Levante', 2, 0, 37, 2014, 2015);
EXEC INSERT_PARTIDO ('17/05/2015', 5, 0, 'Atlético de Madrid', 0, 1, 'Barcelona', 3, 0, 37, 2014, 2015);
EXEC INSERT_PARTIDO ('17/05/2015', 2, 0, 'Real Sociedad', 0, 3, 'Granada', 2, 0, 37, 2014, 2015);
EXEC INSERT_PARTIDO ('17/05/2015', 0, 0, 'Córdoba', 1, 2, 'Rayo Vallecano', 0, 0, 37, 2014, 2015);
EXEC INSERT_PARTIDO ('17/05/2015', 0, 0, 'Getafe', 1, 1, 'Eibar', 2, 0, 37, 2014, 2015);
EXEC INSERT_PARTIDO ('17/05/2015', 2, 0, 'Espanyol', 1, 4, 'Real Madrid', 4, 0, 37, 2014, 2015);
EXEC INSERT_PARTIDO ('17/05/2015', 1, 0, 'Valencia', 1, 1, 'Celta de Vigo', 5, 0, 37, 2014, 2015);
EXEC INSERT_PARTIDO ('17/05/2015', 0, 0, 'Sevilla', 2, 1, 'Almería', 4, 1, 37, 2014, 2015);

COMMIT;
-- Jornada 38
EXEC INSERT_PARTIDO ('23/05/2015', 3, 0, 'Levante', 0, 0, 'Elche', 3, 0, 38, 2014, 2015);
EXEC INSERT_PARTIDO ('23/05/2015', 0, 0, 'Athletic Club', 4, 0, 'Villarreal', 1, 0, 38, 2014, 2015);
EXEC INSERT_PARTIDO ('23/05/2015', 1, 0, 'Barcelona', 2, 2, 'Deportivo de La Coruña', 3, 0, 38, 2014, 2015);
EXEC INSERT_PARTIDO ('23/05/2015', 0, 0, 'Granada', 0, 0, 'Atlético de Madrid', 0, 0, 38, 2014, 2015);
EXEC INSERT_PARTIDO ('23/05/2015', 1, 0, 'Rayo Vallecano', 2, 4, 'Real Sociedad', 1, 0, 38, 2014, 2015);
EXEC INSERT_PARTIDO ('23/05/2015', 1, 0, 'Eibar', 3, 0, 'Córdoba', 0, 0, 38, 2014, 2015);
EXEC INSERT_PARTIDO ('23/05/2015', 2, 1, 'Celta de Vigo', 3, 2, 'Espanyol', 1, 0, 38, 2014, 2015);
EXEC INSERT_PARTIDO ('23/05/2015', 2, 0, 'Almería', 2, 3, 'Valencia', 6, 1, 38, 2014, 2015);
EXEC INSERT_PARTIDO ('23/05/2015', 3, 1, 'Málaga', 2, 3, 'Sevilla', 2, 0, 38, 2014, 2015);
EXEC INSERT_PARTIDO ('23/05/2015', 2, 0, 'Real Madrid', 7, 3, 'Getafe', 3, 0, 38, 2014, 2015);

COMMIT;
