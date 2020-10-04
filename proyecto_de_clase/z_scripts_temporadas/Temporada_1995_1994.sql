-- Temporada 1995-1994

EXEC INSERT_ALERTA(1994, 1995, '*Al finalizar la temporada, el Sevilla y el Celta fueron descendidos a Segunda B por no cumplir un trámite burocrático. Para reemplazarlos se recuperó al Albacete (que había descendido en la promoción) y al Valladolid. Finalmente, Sevilla y Celta fueron indultados y la Primera División se amplió a 22 equipos.');
COMMIT;

EXEC INSERT_JORNADA ('Jornada 1', 1, '03/09/1994', '04/09/1994', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 2', 2, '10/09/1994', '11/09/1994', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 3', 3, '17/09/1994', '18/09/1994', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 4', 4, '24/09/1994', '25/09/1994', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 5', 5, '01/10/1994', '02/10/1994', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 6', 6, '08/10/1994', '09/10/1994', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 7', 7, '15/10/1994', '16/10/1994', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 8', 8, '22/10/1994', '23/10/1994', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 9', 9, '29/10/1994', '30/10/1994', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 10', 10, '05/11/1994', '06/11/1994', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 11', 11, '19/11/1994', '20/11/1994', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 12', 12, '26/11/1994', '27/11/1994', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 13', 13, '03/12/1994', '04/12/1994', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 14', 14, '10/12/1994', '11/12/1994', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 15', 15, '21/12/1994', '22/12/1994', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 16', 16, '07/01/1995', '08/01/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 17', 17, '14/01/1995', '15/01/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 18', 18, '21/01/1995', '22/01/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 19', 19, '28/01/1995', '29/01/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 20', 20, '04/02/1995', '05/02/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 21', 21, '11/02/1995', '12/02/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 22', 22, '18/02/1995', '19/02/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 23', 23, '25/02/1995', '26/02/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 24', 24, '04/03/1995', '05/03/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 25', 25, '11/03/1995', '12/03/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 26', 26, '18/03/1995', '19/03/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 27', 27, '01/04/1995', '02/04/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 28', 28, '08/04/1995', '09/04/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 29', 29, '15/04/1995', '16/04/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 30', 30, '22/04/1995', '23/04/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 31', 31, '29/04/1995', '30/04/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 32', 32, '06/05/1995', '07/05/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 33', 33, '13/05/1995', '14/05/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 34', 34, '20/05/1995', '21/05/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 35', 35, '27/05/1995', '28/05/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 36', 36, '03/06/1995', '04/06/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 37', 37, '10/06/1995', '11/06/1995', 1994, 1995);
EXEC INSERT_JORNADA ('Jornada 38', 38, '17/06/1995', '18/06/1995', 1994, 1995);

COMMIT;
-- Jornada 1
EXEC INSERT_PARTIDO ('03/09/1994', 3, 1, 'Sevilla', 1, 4, 'Real Madrid', 3, 0, 1, 1994, 1995);
EXEC INSERT_PARTIDO ('04/09/1994', 3, 0, 'Albacete', 1, 1, 'Celta de Vigo', 6, 1, 1, 1994, 1995);
EXEC INSERT_PARTIDO ('04/09/1994', 1, 0, 'Athletic Club', 0, 2, 'Deportivo de La Coruña', 1, 0, 1, 1994, 1995);
EXEC INSERT_PARTIDO ('04/09/1994', 2, 0, 'Atlético de Madrid', 2, 4, 'Valencia', 3, 0, 1, 1994, 1995);
EXEC INSERT_PARTIDO ('04/09/1994', 1, 1, 'Compostela', 0, 2, 'Real Sociedad', 6, 0, 1, 1994, 1995);
EXEC INSERT_PARTIDO ('04/09/1994', 2, 0, 'Español', 4, 2, 'Oviedo', 4, 0, 1, 1994, 1995);
EXEC INSERT_PARTIDO ('04/09/1994', 3, 0, 'Sporting de Gijón', 2, 1, 'Barcelona', 4, 1, 1, 1994, 1995);
EXEC INSERT_PARTIDO ('04/09/1994', 1, 0, 'Logroñés', 0, 0, 'Betis', 1, 0, 1, 1994, 1995);
EXEC INSERT_PARTIDO ('04/09/1994', 3, 0, 'Racing de Santander', 0, 0, 'Valladolid', 5, 0, 1, 1994, 1995);
EXEC INSERT_PARTIDO ('04/09/1994', 7, 0, 'Zaragoza', 2, 2, 'Tenerife', 2, 0, 1, 1994, 1995);

COMMIT;
-- Jornada 2
EXEC INSERT_PARTIDO ('10/09/1994', 3, 0, 'Barcelona', 2, 1, 'Racing de Santander', 1, 0, 2, 1994, 1995);
EXEC INSERT_PARTIDO ('10/09/1994', 2, 0, 'Celta de Vigo', 1, 1, 'Athletic Club', 2, 0, 2, 1994, 1995);
EXEC INSERT_PARTIDO ('10/09/1994', 1, 0, 'Deportivo de La Coruña', 2, 1, 'Sporting de Gijón', 2, 0, 2, 1994, 1995);
EXEC INSERT_PARTIDO ('10/09/1994', 2, 0, 'Real Madrid', 2, 0, 'Logroñés', 2, 1, 2, 1994, 1995);
EXEC INSERT_PARTIDO ('10/09/1994', 2, 0, 'Tenerife', 1, 0, 'Atlético de Madrid', 2, 0, 2, 1994, 1995);
EXEC INSERT_PARTIDO ('11/09/1994', 0, 0, 'Betis', 4, 1, 'Albacete', 1, 0, 2, 1994, 1995);
EXEC INSERT_PARTIDO ('11/09/1994', 1, 0, 'Real Sociedad', 1, 2, 'Zaragoza', 2, 0, 2, 1994, 1995);
EXEC INSERT_PARTIDO ('11/09/1994', 2, 0, 'Oviedo', 2, 2, 'Compostela', 2, 0, 2, 1994, 1995);
EXEC INSERT_PARTIDO ('11/09/1994', 0, 0, 'Valencia', 0, 1, 'Sevilla', 1, 0, 2, 1994, 1995);
EXEC INSERT_PARTIDO ('11/09/1994', 1, 0, 'Valladolid', 0, 4, 'Español', 2, 1, 2, 1994, 1995);

COMMIT;
-- Jornada 3
EXEC INSERT_PARTIDO ('17/09/1994', 2, 0, 'Español', 0, 0, 'Barcelona', 3, 0, 3, 1994, 1995);
EXEC INSERT_PARTIDO ('17/09/1994', 1, 0, 'Valencia', 2, 1, 'Tenerife', 2, 0, 3, 1994, 1995);
EXEC INSERT_PARTIDO ('18/09/1994', 5, 1, 'Albacete', 1, 1, 'Real Madrid', 3, 1, 3, 1994, 1995);
EXEC INSERT_PARTIDO ('18/09/1994', 3, 0, 'Athletic Club', 1, 0, 'Betis', 6, 2, 3, 1994, 1995);
EXEC INSERT_PARTIDO ('18/09/1994', 3, 0, 'Atlético de Madrid', 2, 1, 'Real Sociedad', 3, 0, 3, 1994, 1995);
EXEC INSERT_PARTIDO ('18/09/1994', 2, 0, 'Compostela', 1, 0, 'Valladolid', 3, 0, 3, 1994, 1995);
EXEC INSERT_PARTIDO ('18/09/1994', 3, 0, 'Sporting de Gijón', 0, 0, 'Celta de Vigo', 4, 0, 3, 1994, 1995);
EXEC INSERT_PARTIDO ('18/09/1994', 1, 0, 'Racing de Santander', 1, 2, 'Deportivo de La Coruña', 0, 0, 3, 1994, 1995);
EXEC INSERT_PARTIDO ('18/09/1994', 3, 0, 'Sevilla', 1, 0, 'Logroñés', 1, 1, 3, 1994, 1995);
EXEC INSERT_PARTIDO ('18/09/1994', 5, 1, 'Zaragoza', 2, 1, 'Oviedo', 3, 0, 3, 1994, 1995);

COMMIT;
-- Jornada 4
EXEC INSERT_PARTIDO ('24/09/1994', 2, 0, 'Barcelona', 4, 0, 'Compostela', 2, 0, 4, 1994, 1995);
EXEC INSERT_PARTIDO ('24/09/1994', 2, 0, 'Deportivo de La Coruña', 1, 1, 'Español', 3, 0, 4, 1994, 1995);
EXEC INSERT_PARTIDO ('24/09/1994', 2, 0, 'Logroñés', 1, 1, 'Albacete', 4, 0, 4, 1994, 1995);
EXEC INSERT_PARTIDO ('24/09/1994', 2, 1, 'Real Madrid', 4, 0, 'Athletic Club', 4, 1, 4, 1994, 1995);
EXEC INSERT_PARTIDO ('24/09/1994', 3, 0, 'Valladolid', 2, 0, 'Zaragoza', 3, 0, 4, 1994, 1995);
EXEC INSERT_PARTIDO ('25/09/1994', 2, 0, 'Betis', 5, 0, 'Sporting de Gijón', 1, 0, 4, 1994, 1995);
EXEC INSERT_PARTIDO ('25/09/1994', 4, 1, 'Celta de Vigo', 2, 1, 'Racing de Santander', 5, 1, 4, 1994, 1995);
EXEC INSERT_PARTIDO ('25/09/1994', 3, 1, 'Real Sociedad', 0, 2, 'Valencia', 3, 0, 4, 1994, 1995);
EXEC INSERT_PARTIDO ('25/09/1994', 3, 1, 'Oviedo', 1, 0, 'Atlético de Madrid', 2, 0, 4, 1994, 1995);
EXEC INSERT_PARTIDO ('25/09/1994', 1, 0, 'Tenerife', 0, 0, 'Sevilla', 2, 0, 4, 1994, 1995);

COMMIT;
-- Jornada 5
EXEC INSERT_PARTIDO ('01/10/1994', 1, 1, 'Compostela', 0, 1, 'Deportivo de La Coruña', 2, 0, 5, 1994, 1995);
EXEC INSERT_PARTIDO ('01/10/1994', 1, 0, 'Valencia', 1, 0, 'Oviedo', 2, 0, 5, 1994, 1995);
EXEC INSERT_PARTIDO ('02/10/1994', 4, 0, 'Athletic Club', 1, 0, 'Logroñés', 3, 1, 5, 1994, 1995);
EXEC INSERT_PARTIDO ('02/10/1994', 3, 0, 'Atlético de Madrid', 6, 0, 'Valladolid', 3, 1, 5, 1994, 1995);
EXEC INSERT_PARTIDO ('02/10/1994', 2, 0, 'Español', 0, 0, 'Celta de Vigo', 6, 1, 5, 1994, 1995);
EXEC INSERT_PARTIDO ('02/10/1994', 4, 0, 'Sporting de Gijón', 1, 0, 'Real Madrid', 3, 0, 5, 1994, 1995);
EXEC INSERT_PARTIDO ('02/10/1994', 1, 0, 'Racing de Santander', 0, 0, 'Betis', 2, 0, 5, 1994, 1995);
EXEC INSERT_PARTIDO ('02/10/1994', 2, 2, 'Sevilla', 0, 2, 'Albacete', 3, 0, 5, 1994, 1995);
EXEC INSERT_PARTIDO ('02/10/1994', 2, 0, 'Tenerife', 3, 0, 'Real Sociedad', 3, 1, 5, 1994, 1995);
EXEC INSERT_PARTIDO ('02/10/1994', 1, 0, 'Zaragoza', 2, 1, 'Barcelona', 4, 0, 5, 1994, 1995);

COMMIT;
-- Jornada 6
EXEC INSERT_PARTIDO ('08/10/1994', 3, 0, 'Barcelona', 4, 3, 'Atlético de Madrid', 2, 0, 6, 1994, 1995);
EXEC INSERT_PARTIDO ('09/10/1994', 5, 1, 'Albacete', 1, 2, 'Athletic Club', 1, 0, 6, 1994, 1995);
EXEC INSERT_PARTIDO ('09/10/1994', 4, 0, 'Betis', 3, 1, 'Español', 5, 1, 6, 1994, 1995);
EXEC INSERT_PARTIDO ('09/10/1994', 3, 0, 'Celta de Vigo', 1, 2, 'Compostela', 3, 0, 6, 1994, 1995);
EXEC INSERT_PARTIDO ('09/10/1994', 3, 1, 'Deportivo de La Coruña', 3, 3, 'Zaragoza', 5, 2, 6, 1994, 1995);
EXEC INSERT_PARTIDO ('09/10/1994', 4, 0, 'Logroñés', 1, 3, 'Sporting de Gijón', 2, 0, 6, 1994, 1995);
EXEC INSERT_PARTIDO ('09/10/1994', 4, 0, 'Real Sociedad', 0, 0, 'Sevilla', 2, 0, 6, 1994, 1995);
EXEC INSERT_PARTIDO ('09/10/1994', 1, 0, 'Real Madrid', 3, 1, 'Racing de Santander', 3, 0, 6, 1994, 1995);
EXEC INSERT_PARTIDO ('09/10/1994', 2, 0, 'Oviedo', 1, 2, 'Tenerife', 2, 0, 6, 1994, 1995);
EXEC INSERT_PARTIDO ('09/10/1994', 4, 0, 'Valladolid', 2, 0, 'Valencia', 2, 0, 6, 1994, 1995);

COMMIT;
-- Jornada 7
EXEC INSERT_PARTIDO ('15/10/1994', 4, 0, 'Atlético de Madrid', 1, 1, 'Deportivo de La Coruña', 1, 0, 7, 1994, 1995);
EXEC INSERT_PARTIDO ('15/10/1994', 3, 0, 'Español', 1, 2, 'Real Madrid', 3, 0, 7, 1994, 1995);
EXEC INSERT_PARTIDO ('15/10/1994', 1, 0, 'Sevilla', 0, 0, 'Athletic Club', 4, 0, 7, 1994, 1995);
EXEC INSERT_PARTIDO ('15/10/1994', 1, 1, 'Valencia', 1, 2, 'Barcelona', 5, 0, 7, 1994, 1995);
EXEC INSERT_PARTIDO ('16/10/1994', 5, 1, 'Compostela', 1, 1, 'Betis', 3, 0, 7, 1994, 1995);
EXEC INSERT_PARTIDO ('16/10/1994', 4, 0, 'Sporting de Gijón', 3, 2, 'Albacete', 1, 0, 7, 1994, 1995);
EXEC INSERT_PARTIDO ('16/10/1994', 3, 0, 'Racing de Santander', 3, 0, 'Logroñés', 4, 0, 7, 1994, 1995);
EXEC INSERT_PARTIDO ('16/10/1994', 4, 0, 'Real Sociedad', 3, 1, 'Oviedo', 1, 0, 7, 1994, 1995);
EXEC INSERT_PARTIDO ('16/10/1994', 2, 0, 'Tenerife', 0, 0, 'Valladolid', 4, 1, 7, 1994, 1995);
EXEC INSERT_PARTIDO ('16/10/1994', 2, 0, 'Zaragoza', 4, 0, 'Celta de Vigo', 4, 0, 7, 1994, 1995);

COMMIT;
-- Jornada 8
EXEC INSERT_PARTIDO ('22/10/1994', 3, 0, 'Celta de Vigo', 1, 0, 'Atlético de Madrid', 3, 0, 8, 1994, 1995);
EXEC INSERT_PARTIDO ('23/10/1994', 1, 0, 'Albacete', 2, 0, 'Racing de Santander', 1, 1, 8, 1994, 1995);
EXEC INSERT_PARTIDO ('23/10/1994', 1, 0, 'Athletic Club', 2, 0, 'Sporting de Gijón', 4, 0, 8, 1994, 1995);
EXEC INSERT_PARTIDO ('23/10/1994', 1, 0, 'Barcelona', 1, 0, 'Tenerife', 5, 1, 8, 1994, 1995);
EXEC INSERT_PARTIDO ('23/10/1994', 2, 0, 'Betis', 0, 1, 'Zaragoza', 2, 0, 8, 1994, 1995);
EXEC INSERT_PARTIDO ('23/10/1994', 2, 0, 'Deportivo de La Coruña', 3, 1, 'Valencia', 1, 0, 8, 1994, 1995);
EXEC INSERT_PARTIDO ('23/10/1994', 3, 0, 'Logroñés', 1, 1, 'Español', 3, 0, 8, 1994, 1995);
EXEC INSERT_PARTIDO ('23/10/1994', 1, 0, 'Real Madrid', 1, 1, 'Compostela', 2, 0, 8, 1994, 1995);
EXEC INSERT_PARTIDO ('23/10/1994', 4, 0, 'Oviedo', 1, 0, 'Sevilla', 3, 2, 8, 1994, 1995);
EXEC INSERT_PARTIDO ('23/10/1994', 2, 0, 'Valladolid', 1, 1, 'Real Sociedad', 2, 1, 8, 1994, 1995);

COMMIT;
-- Jornada 9
EXEC INSERT_PARTIDO ('29/10/1994', 4, 1, 'Racing de Santander', 0, 2, 'Athletic Club', 1, 0, 9, 1994, 1995);
EXEC INSERT_PARTIDO ('29/10/1994', 2, 0, 'Real Sociedad', 1, 1, 'Barcelona', 1, 0, 9, 1994, 1995);
EXEC INSERT_PARTIDO ('29/10/1994', 2, 0, 'Tenerife', 1, 1, 'Deportivo de La Coruña', 2, 0, 9, 1994, 1995);
EXEC INSERT_PARTIDO ('29/10/1994', 6, 0, 'Valencia', 1, 0, 'Celta de Vigo', 2, 0, 9, 1994, 1995);
EXEC INSERT_PARTIDO ('29/10/1994', 6, 0, 'Zaragoza', 3, 2, 'Real Madrid', 2, 0, 9, 1994, 1995);
EXEC INSERT_PARTIDO ('30/10/1994', 5, 2, 'Atlético de Madrid', 0, 2, 'Betis', 2, 0, 9, 1994, 1995);
EXEC INSERT_PARTIDO ('30/10/1994', 2, 0, 'Compostela', 2, 0, 'Logroñés', 3, 1, 9, 1994, 1995);
EXEC INSERT_PARTIDO ('30/10/1994', 0, 0, 'Español', 5, 1, 'Albacete', 6, 1, 9, 1994, 1995);
EXEC INSERT_PARTIDO ('30/10/1994', 0, 0, 'Oviedo', 1, 0, 'Valladolid', 3, 0, 9, 1994, 1995);
EXEC INSERT_PARTIDO ('30/10/1994', 2, 0, 'Sevilla', 5, 1, 'Sporting de Gijón', 4, 0, 9, 1994, 1995);

COMMIT;
-- Jornada 10
EXEC INSERT_PARTIDO ('05/11/1994', 1, 0, 'Real Madrid', 4, 2, 'Atlético de Madrid', 7, 1, 10, 1994, 1995);
EXEC INSERT_PARTIDO ('06/11/1994', 2, 0, 'Albacete', 1, 3, 'Compostela', 4, 0, 10, 1994, 1995);
EXEC INSERT_PARTIDO ('06/11/1994', 4, 0, 'Athletic Club', 1, 3, 'Español', 3, 0, 10, 1994, 1995);
EXEC INSERT_PARTIDO ('06/11/1994', 2, 0, 'Barcelona', 1, 0, 'Oviedo', 3, 1, 10, 1994, 1995);
EXEC INSERT_PARTIDO ('06/11/1994', 3, 0, 'Betis', 1, 1, 'Valencia', 2, 0, 10, 1994, 1995);
EXEC INSERT_PARTIDO ('06/11/1994', 2, 0, 'Celta de Vigo', 3, 2, 'Tenerife', 1, 0, 10, 1994, 1995);
EXEC INSERT_PARTIDO ('06/11/1994', 1, 0, 'Deportivo de La Coruña', 3, 1, 'Real Sociedad', 1, 0, 10, 1994, 1995);
EXEC INSERT_PARTIDO ('06/11/1994', 3, 0, 'Sporting de Gijón', 2, 3, 'Racing de Santander', 3, 1, 10, 1994, 1995);
EXEC INSERT_PARTIDO ('06/11/1994', 3, 0, 'Logroñés', 0, 0, 'Zaragoza', 2, 0, 10, 1994, 1995);
EXEC INSERT_PARTIDO ('06/11/1994', 1, 0, 'Valladolid', 0, 4, 'Sevilla', 3, 0, 10, 1994, 1995);

COMMIT;
-- Jornada 11
EXEC INSERT_PARTIDO ('19/11/1994', 3, 0, 'Compostela', 0, 1, 'Athletic Club', 3, 1, 11, 1994, 1995);
EXEC INSERT_PARTIDO ('19/11/1994', 6, 0, 'Oviedo', 2, 0, 'Deportivo de La Coruña', 3, 1, 11, 1994, 1995);
EXEC INSERT_PARTIDO ('19/11/1994', 5, 0, 'Valencia', 1, 2, 'Real Madrid', 2, 0, 11, 1994, 1995);
EXEC INSERT_PARTIDO ('19/11/1994', 3, 0, 'Valladolid', 1, 3, 'Barcelona', 2, 0, 11, 1994, 1995);
EXEC INSERT_PARTIDO ('20/11/1994', 2, 0, 'Atlético de Madrid', 3, 0, 'Logroñés', 2, 0, 11, 1994, 1995);
EXEC INSERT_PARTIDO ('20/11/1994', 1, 1, 'Español', 1, 1, 'Sporting de Gijón', 3, 0, 11, 1994, 1995);
EXEC INSERT_PARTIDO ('20/11/1994', 0, 0, 'Real Sociedad', 2, 3, 'Celta de Vigo', 2, 0, 11, 1994, 1995);
EXEC INSERT_PARTIDO ('20/11/1994', 0, 0, 'Sevilla', 1, 3, 'Racing de Santander', 3, 0, 11, 1994, 1995);
EXEC INSERT_PARTIDO ('20/11/1994', 1, 1, 'Tenerife', 1, 4, 'Betis', 2, 0, 11, 1994, 1995);
EXEC INSERT_PARTIDO ('20/11/1994', 5, 1, 'Zaragoza', 1, 0, 'Albacete', 4, 0, 11, 1994, 1995);

COMMIT;
-- Jornada 12
EXEC INSERT_PARTIDO ('26/11/1994', 6, 0, 'Betis', 0, 0, 'Real Sociedad', 0, 0, 12, 1994, 1995);
EXEC INSERT_PARTIDO ('27/11/1994', 2, 0, 'Albacete', 2, 2, 'Atlético de Madrid', 5, 0, 12, 1994, 1995);
EXEC INSERT_PARTIDO ('27/11/1994', 2, 0, 'Athletic Club', 1, 0, 'Zaragoza', 6, 1, 12, 1994, 1995);
EXEC INSERT_PARTIDO ('27/11/1994', 3, 0, 'Barcelona', 0, 1, 'Sevilla', 4, 0, 12, 1994, 1995);
EXEC INSERT_PARTIDO ('27/11/1994', 2, 0, 'Celta de Vigo', 0, 0, 'Oviedo', 2, 0, 12, 1994, 1995);
EXEC INSERT_PARTIDO ('27/11/1994', 1, 0, 'Deportivo de La Coruña', 4, 0, 'Valladolid', 3, 0, 12, 1994, 1995);
EXEC INSERT_PARTIDO ('27/11/1994', 0, 0, 'Sporting de Gijón', 1, 1, 'Compostela', 3, 0, 12, 1994, 1995);
EXEC INSERT_PARTIDO ('27/11/1994', 3, 1, 'Logroñés', 2, 2, 'Valencia', 1, 0, 12, 1994, 1995);
EXEC INSERT_PARTIDO ('27/11/1994', 2, 0, 'Racing de Santander', 0, 0, 'Español', 2, 0, 12, 1994, 1995);
EXEC INSERT_PARTIDO ('27/11/1994', 2, 0, 'Real Madrid', 4, 2, 'Tenerife', 2, 0, 12, 1994, 1995);

COMMIT;
-- Jornada 13
EXEC INSERT_PARTIDO ('03/12/1994', 4, 0, 'Atlético de Madrid', 2, 1, 'Athletic Club', 2, 0, 13, 1994, 1995);
EXEC INSERT_PARTIDO ('03/12/1994', 3, 0, 'Barcelona', 1, 1, 'Deportivo de La Coruña', 2, 0, 13, 1994, 1995);
EXEC INSERT_PARTIDO ('03/12/1994', 3, 0, 'Real Sociedad', 1, 1, 'Real Madrid', 2, 0, 13, 1994, 1995);
EXEC INSERT_PARTIDO ('03/12/1994', 5, 1, 'Valencia', 3, 3, 'Albacete', 4, 1, 13, 1994, 1995);
EXEC INSERT_PARTIDO ('04/12/1994', 1, 0, 'Compostela', 2, 1, 'Racing de Santander', 0, 0, 13, 1994, 1995);
EXEC INSERT_PARTIDO ('04/12/1994', 3, 0, 'Oviedo', 0, 0, 'Betis', 2, 0, 13, 1994, 1995);
EXEC INSERT_PARTIDO ('04/12/1994', 0, 0, 'Sevilla', 3, 0, 'Español', 2, 0, 13, 1994, 1995);
EXEC INSERT_PARTIDO ('04/12/1994', 0, 0, 'Tenerife', 4, 0, 'Logroñés', 2, 0, 13, 1994, 1995);
EXEC INSERT_PARTIDO ('04/12/1994', 2, 1, 'Valladolid', 1, 1, 'Celta de Vigo', 4, 0, 13, 1994, 1995);
EXEC INSERT_PARTIDO ('04/12/1994', 2, 0, 'Zaragoza', 3, 2, 'Sporting de Gijón', 4, 0, 13, 1994, 1995);

COMMIT;
-- Jornada 14
EXEC INSERT_PARTIDO ('10/12/1994', 2, 0, 'Athletic Club', 2, 1, 'Valencia', 1, 0, 14, 1994, 1995);
EXEC INSERT_PARTIDO ('11/12/1994', 3, 0, 'Albacete', 2, 1, 'Tenerife', 3, 0, 14, 1994, 1995);
EXEC INSERT_PARTIDO ('11/12/1994', 4, 0, 'Betis', 1, 2, 'Valladolid', 4, 0, 14, 1994, 1995);
EXEC INSERT_PARTIDO ('11/12/1994', 1, 0, 'Celta de Vigo', 2, 4, 'Barcelona', 1, 0, 14, 1994, 1995);
EXEC INSERT_PARTIDO ('11/12/1994', 0, 0, 'Deportivo de La Coruña', 5, 1, 'Sevilla', 2, 1, 14, 1994, 1995);
EXEC INSERT_PARTIDO ('11/12/1994', 0, 0, 'Español', 2, 0, 'Compostela', 2, 0, 14, 1994, 1995);
EXEC INSERT_PARTIDO ('11/12/1994', 1, 0, 'Sporting de Gijón', 0, 2, 'Atlético de Madrid', 2, 0, 14, 1994, 1995);
EXEC INSERT_PARTIDO ('11/12/1994', 4, 0, 'Logroñés', 0, 4, 'Real Sociedad', 1, 0, 14, 1994, 1995);
EXEC INSERT_PARTIDO ('11/12/1994', 6, 0, 'Racing de Santander', 0, 1, 'Zaragoza', 3, 0, 14, 1994, 1995);
EXEC INSERT_PARTIDO ('11/12/1994', 1, 0, 'Real Madrid', 2, 0, 'Oviedo', 2, 1, 14, 1994, 1995);

COMMIT;
-- Jornada 15
EXEC INSERT_PARTIDO ('21/12/1994', 2, 0, 'Atlético de Madrid', 0, 1, 'Racing de Santander', 3, 0, 15, 1994, 1995);
EXEC INSERT_PARTIDO ('21/12/1994', 4, 1, 'Barcelona', 1, 1, 'Betis', 4, 1, 15, 1994, 1995);
EXEC INSERT_PARTIDO ('21/12/1994', 2, 0, 'Deportivo de La Coruña', 1, 2, 'Celta de Vigo', 4, 0, 15, 1994, 1995);
EXEC INSERT_PARTIDO ('21/12/1994', 3, 0, 'Real Sociedad', 2, 0, 'Albacete', 3, 0, 15, 1994, 1995);
EXEC INSERT_PARTIDO ('21/12/1994', 1, 0, 'Oviedo', 1, 0, 'Logroñés', 2, 0, 15, 1994, 1995);
EXEC INSERT_PARTIDO ('21/12/1994', 1, 0, 'Sevilla', 3, 0, 'Compostela', 5, 1, 15, 1994, 1995);
EXEC INSERT_PARTIDO ('21/12/1994', 0, 0, 'Tenerife', 1, 0, 'Athletic Club', 2, 0, 15, 1994, 1995);
EXEC INSERT_PARTIDO ('21/12/1994', 3, 0, 'Valencia', 0, 0, 'Sporting de Gijón', 3, 0, 15, 1994, 1995);
EXEC INSERT_PARTIDO ('21/12/1994', 4, 1, 'Zaragoza', 1, 0, 'Español', 3, 0, 15, 1994, 1995);
EXEC INSERT_PARTIDO ('22/12/1994', 1, 0, 'Valladolid', 0, 5, 'Real Madrid', 0, 0, 15, 1994, 1995);

COMMIT;
-- Jornada 16
EXEC INSERT_PARTIDO ('07/01/1995', 2, 0, 'Real Madrid', 5, 0, 'Barcelona', 1, 1, 16, 1994, 1995);
EXEC INSERT_PARTIDO ('08/01/1995', 2, 0, 'Albacete', 1, 0, 'Oviedo', 3, 1, 16, 1994, 1995);
EXEC INSERT_PARTIDO ('08/01/1995', 6, 1, 'Athletic Club', 0, 0, 'Real Sociedad', 6, 1, 16, 1994, 1995);
EXEC INSERT_PARTIDO ('08/01/1995', 0, 0, 'Betis', 0, 0, 'Deportivo de La Coruña', 0, 0, 16, 1994, 1995);
EXEC INSERT_PARTIDO ('08/01/1995', 4, 0, 'Celta de Vigo', 0, 0, 'Sevilla', 3, 0, 16, 1994, 1995);
EXEC INSERT_PARTIDO ('08/01/1995', 2, 0, 'Compostela', 3, 2, 'Zaragoza', 4, 1, 16, 1994, 1995);
EXEC INSERT_PARTIDO ('08/01/1995', 2, 0, 'Español', 2, 0, 'Atlético de Madrid', 3, 1, 16, 1994, 1995);
EXEC INSERT_PARTIDO ('08/01/1995', 0, 0, 'Sporting de Gijón', 1, 1, 'Tenerife', 0, 0, 16, 1994, 1995);
EXEC INSERT_PARTIDO ('08/01/1995', 4, 1, 'Logroñés', 0, 0, 'Valladolid', 3, 0, 16, 1994, 1995);
EXEC INSERT_PARTIDO ('08/01/1995', 3, 0, 'Racing de Santander', 3, 2, 'Valencia', 3, 0, 16, 1994, 1995);

COMMIT;
-- Jornada 17
EXEC INSERT_PARTIDO ('14/01/1995', 2, 0, 'Deportivo de La Coruña', 0, 0, 'Real Madrid', 2, 0, 17, 1994, 1995);
EXEC INSERT_PARTIDO ('15/01/1995', 1, 0, 'Atlético de Madrid', 1, 1, 'Compostela', 2, 0, 17, 1994, 1995);
EXEC INSERT_PARTIDO ('15/01/1995', 0, 0, 'Barcelona', 3, 0, 'Logroñés', 1, 0, 17, 1994, 1995);
EXEC INSERT_PARTIDO ('15/01/1995', 5, 0, 'Celta de Vigo', 0, 2, 'Betis', 2, 0, 17, 1994, 1995);
EXEC INSERT_PARTIDO ('15/01/1995', 2, 0, 'Real Sociedad', 2, 2, 'Sporting de Gijón', 5, 0, 17, 1994, 1995);
EXEC INSERT_PARTIDO ('15/01/1995', 3, 1, 'Oviedo', 1, 1, 'Athletic Club', 4, 1, 17, 1994, 1995);
EXEC INSERT_PARTIDO ('15/01/1995', 3, 0, 'Sevilla', 2, 1, 'Zaragoza', 4, 0, 17, 1994, 1995);
EXEC INSERT_PARTIDO ('15/01/1995', 2, 0, 'Tenerife', 3, 0, 'Racing de Santander', 2, 1, 17, 1994, 1995);
EXEC INSERT_PARTIDO ('15/01/1995', 1, 0, 'Valencia', 0, 0, 'Español', 0, 0, 17, 1994, 1995);
EXEC INSERT_PARTIDO ('15/01/1995', 2, 0, 'Valladolid', 1, 1, 'Albacete', 0, 0, 17, 1994, 1995);

COMMIT;
-- Jornada 18
EXEC INSERT_PARTIDO ('21/01/1995', 1, 0, 'Logroñés', 0, 1, 'Deportivo de La Coruña', 2, 0, 18, 1994, 1995);
EXEC INSERT_PARTIDO ('22/01/1995', 3, 0, 'Albacete', 2, 2, 'Barcelona', 1, 0, 18, 1994, 1995);
EXEC INSERT_PARTIDO ('22/01/1995', 3, 0, 'Athletic Club', 1, 1, 'Valladolid', 4, 0, 18, 1994, 1995);
EXEC INSERT_PARTIDO ('22/01/1995', 5, 0, 'Compostela', 1, 1, 'Valencia', 1, 0, 18, 1994, 1995);
EXEC INSERT_PARTIDO ('22/01/1995', 3, 1, 'Español', 0, 0, 'Tenerife', 3, 1, 18, 1994, 1995);
EXEC INSERT_PARTIDO ('22/01/1995', 3, 0, 'Sporting de Gijón', 1, 1, 'Oviedo', 1, 0, 18, 1994, 1995);
EXEC INSERT_PARTIDO ('22/01/1995', 2, 1, 'Racing de Santander', 0, 0, 'Real Sociedad', 1, 0, 18, 1994, 1995);
EXEC INSERT_PARTIDO ('22/01/1995', 0, 0, 'Real Madrid', 4, 0, 'Celta de Vigo', 1, 0, 18, 1994, 1995);
EXEC INSERT_PARTIDO ('22/01/1995', 3, 0, 'Sevilla', 0, 1, 'Betis', 3, 0, 18, 1994, 1995);
EXEC INSERT_PARTIDO ('22/01/1995', 3, 1, 'Zaragoza', 3, 1, 'Atlético de Madrid', 9, 2, 18, 1994, 1995);

COMMIT;
-- Jornada 19
EXEC INSERT_PARTIDO ('28/01/1995', 2, 0, 'Barcelona', 1, 0, 'Athletic Club', 2, 0, 19, 1994, 1995);
EXEC INSERT_PARTIDO ('29/01/1995', 4, 2, 'Atlético de Madrid', 2, 2, 'Sevilla', 5, 0, 19, 1994, 1995);
EXEC INSERT_PARTIDO ('29/01/1995', 3, 0, 'Betis', 0, 0, 'Real Madrid', 2, 0, 19, 1994, 1995);
EXEC INSERT_PARTIDO ('29/01/1995', 2, 0, 'Celta de Vigo', 0, 1, 'Logroñés', 1, 0, 19, 1994, 1995);
EXEC INSERT_PARTIDO ('29/01/1995', 4, 1, 'Deportivo de La Coruña', 2, 1, 'Albacete', 5, 1, 19, 1994, 1995);
EXEC INSERT_PARTIDO ('29/01/1995', 4, 0, 'Real Sociedad', 2, 0, 'Español', 2, 0, 19, 1994, 1995);
EXEC INSERT_PARTIDO ('29/01/1995', 2, 2, 'Oviedo', 3, 1, 'Racing de Santander', 2, 0, 19, 1994, 1995);
EXEC INSERT_PARTIDO ('29/01/1995', 2, 0, 'Tenerife', 2, 0, 'Compostela', 4, 0, 19, 1994, 1995);
EXEC INSERT_PARTIDO ('29/01/1995', 2, 1, 'Valencia', 3, 0, 'Zaragoza', 2, 0, 19, 1994, 1995);
EXEC INSERT_PARTIDO ('29/01/1995', 2, 0, 'Valladolid', 2, 0, 'Sporting de Gijón', 4, 0, 19, 1994, 1995);

COMMIT;
-- Jornada 20
EXEC INSERT_PARTIDO ('04/02/1995', 3, 0, 'Deportivo de La Coruña', 0, 0, 'Athletic Club', 4, 1, 20, 1994, 1995);
EXEC INSERT_PARTIDO ('05/02/1995', 2, 0, 'Barcelona', 3, 1, 'Sporting de Gijón', 3, 0, 20, 1994, 1995);
EXEC INSERT_PARTIDO ('05/02/1995', 2, 0, 'Betis', 1, 0, 'Logroñés', 1, 0, 20, 1994, 1995);
EXEC INSERT_PARTIDO ('05/02/1995', 2, 0, 'Celta de Vigo', 0, 0, 'Albacete', 1, 0, 20, 1994, 1995);
EXEC INSERT_PARTIDO ('05/02/1995', 0, 0, 'Real Sociedad', 1, 1, 'Compostela', 3, 1, 20, 1994, 1995);
EXEC INSERT_PARTIDO ('05/02/1995', 1, 0, 'Real Madrid', 2, 0, 'Sevilla', 3, 0, 20, 1994, 1995);
EXEC INSERT_PARTIDO ('05/02/1995', 2, 0, 'Oviedo', 3, 0, 'Español', 4, 1, 20, 1994, 1995);
EXEC INSERT_PARTIDO ('05/02/1995', 1, 0, 'Tenerife', 2, 0, 'Zaragoza', 1, 0, 20, 1994, 1995);
EXEC INSERT_PARTIDO ('05/02/1995', 2, 0, 'Valencia', 0, 0, 'Atlético de Madrid', 1, 0, 20, 1994, 1995);
EXEC INSERT_PARTIDO ('05/02/1995', 1, 0, 'Valladolid', 1, 1, 'Racing de Santander', 3, 1, 20, 1994, 1995);

COMMIT;
-- Jornada 21
EXEC INSERT_PARTIDO ('11/02/1995', 2, 0, 'Atlético de Madrid', 3, 1, 'Tenerife', 5, 1, 21, 1994, 1995);
EXEC INSERT_PARTIDO ('11/02/1995', 5, 0, 'Racing de Santander', 5, 0, 'Barcelona', 2, 2, 21, 1994, 1995);
EXEC INSERT_PARTIDO ('12/02/1995', 4, 0, 'Albacete', 3, 1, 'Betis', 2, 1, 21, 1994, 1995);
EXEC INSERT_PARTIDO ('12/02/1995', 1, 0, 'Athletic Club', 1, 1, 'Celta de Vigo', 3, 0, 21, 1994, 1995);
EXEC INSERT_PARTIDO ('12/02/1995', 4, 1, 'Compostela', 1, 1, 'Oviedo', 2, 0, 21, 1994, 1995);
EXEC INSERT_PARTIDO ('12/02/1995', 2, 0, 'Español', 3, 0, 'Valladolid', 2, 0, 21, 1994, 1995);
EXEC INSERT_PARTIDO ('12/02/1995', 4, 1, 'Sporting de Gijón', 3, 1, 'Deportivo de La Coruña', 2, 0, 21, 1994, 1995);
EXEC INSERT_PARTIDO ('12/02/1995', 1, 0, 'Logroñés', 1, 4, 'Real Madrid', 1, 0, 21, 1994, 1995);
EXEC INSERT_PARTIDO ('12/02/1995', 2, 0, 'Sevilla', 1, 1, 'Valencia', 2, 1, 21, 1994, 1995);
EXEC INSERT_PARTIDO ('12/02/1995', 2, 0, 'Zaragoza', 1, 1, 'Real Sociedad', 1, 0, 21, 1994, 1995);

COMMIT;
-- Jornada 22
EXEC INSERT_PARTIDO ('18/02/1995', 1, 0, 'Barcelona', 3, 0, 'Español', 1, 0, 22, 1994, 1995);
EXEC INSERT_PARTIDO ('19/02/1995', 2, 1, 'Betis', 0, 0, 'Athletic Club', 2, 0, 22, 1994, 1995);
EXEC INSERT_PARTIDO ('19/02/1995', 0, 0, 'Celta de Vigo', 2, 0, 'Sporting de Gijón', 3, 0, 22, 1994, 1995);
EXEC INSERT_PARTIDO ('19/02/1995', 1, 0, 'Deportivo de La Coruña', 3, 0, 'Racing de Santander', 2, 0, 22, 1994, 1995);
EXEC INSERT_PARTIDO ('19/02/1995', 0, 0, 'Logroñés', 0, 2, 'Sevilla', 4, 0, 22, 1994, 1995);
EXEC INSERT_PARTIDO ('19/02/1995', 1, 0, 'Real Sociedad', 3, 1, 'Atlético de Madrid', 3, 0, 22, 1994, 1995);
EXEC INSERT_PARTIDO ('19/02/1995', 1, 0, 'Real Madrid', 0, 0, 'Albacete', 5, 0, 22, 1994, 1995);
EXEC INSERT_PARTIDO ('19/02/1995', 2, 0, 'Oviedo', 2, 1, 'Zaragoza', 4, 0, 22, 1994, 1995);
EXEC INSERT_PARTIDO ('19/02/1995', 3, 0, 'Tenerife', 1, 2, 'Valencia', 4, 1, 22, 1994, 1995);
EXEC INSERT_PARTIDO ('19/02/1995', 3, 0, 'Valladolid', 2, 0, 'Compostela', 2, 0, 22, 1994, 1995);

COMMIT;
-- Jornada 23
EXEC INSERT_PARTIDO ('25/02/1995', 1, 0, 'Compostela', 1, 2, 'Barcelona', 3, 0, 23, 1994, 1995);
EXEC INSERT_PARTIDO ('25/02/1995', 2, 0, 'Sporting de Gijón', 1, 1, 'Betis', 0, 0, 23, 1994, 1995);
EXEC INSERT_PARTIDO ('25/02/1995', 3, 1, 'Zaragoza', 1, 0, 'Valladolid', 3, 0, 23, 1994, 1995);
EXEC INSERT_PARTIDO ('26/02/1995', 3, 0, 'Albacete', 0, 0, 'Logroñés', 2, 0, 23, 1994, 1995);
EXEC INSERT_PARTIDO ('26/02/1995', 3, 0, 'Athletic Club', 1, 1, 'Real Madrid', 2, 0, 23, 1994, 1995);
EXEC INSERT_PARTIDO ('26/02/1995', 2, 0, 'Atlético de Madrid', 3, 3, 'Oviedo', 4, 0, 23, 1994, 1995);
EXEC INSERT_PARTIDO ('26/02/1995', 1, 0, 'Español', 1, 0, 'Deportivo de La Coruña', 1, 0, 23, 1994, 1995);
EXEC INSERT_PARTIDO ('26/02/1995', 1, 0, 'Racing de Santander', 2, 0, 'Celta de Vigo', 3, 2, 23, 1994, 1995);
EXEC INSERT_PARTIDO ('26/02/1995', 3, 0, 'Sevilla', 1, 2, 'Tenerife', 2, 0, 23, 1994, 1995);
EXEC INSERT_PARTIDO ('26/02/1995', 0, 0, 'Valencia', 4, 2, 'Real Sociedad', 2, 0, 23, 1994, 1995);

COMMIT;
-- Jornada 24
EXEC INSERT_PARTIDO ('04/03/1995', 1, 0, 'Oviedo', 1, 0, 'Valencia', 3, 1, 24, 1994, 1995);
EXEC INSERT_PARTIDO ('05/03/1995', 2, 0, 'Albacete', 1, 1, 'Sevilla', 3, 0, 24, 1994, 1995);
EXEC INSERT_PARTIDO ('05/03/1995', 1, 0, 'Barcelona', 3, 0, 'Zaragoza', 5, 1, 24, 1994, 1995);
EXEC INSERT_PARTIDO ('05/03/1995', 2, 0, 'Betis', 2, 0, 'Racing de Santander', 2, 0, 24, 1994, 1995);
EXEC INSERT_PARTIDO ('05/03/1995', 1, 0, 'Celta de Vigo', 1, 2, 'Español', 1, 0, 24, 1994, 1995);
EXEC INSERT_PARTIDO ('05/03/1995', 1, 0, 'Deportivo de La Coruña', 1, 0, 'Compostela', 4, 0, 24, 1994, 1995);
EXEC INSERT_PARTIDO ('05/03/1995', 4, 0, 'Logroñés', 0, 1, 'Athletic Club', 1, 0, 24, 1994, 1995);
EXEC INSERT_PARTIDO ('05/03/1995', 2, 0, 'Real Sociedad', 5, 2, 'Tenerife', 3, 0, 24, 1994, 1995);
EXEC INSERT_PARTIDO ('05/03/1995', 3, 0, 'Real Madrid', 4, 0, 'Sporting de Gijón', 2, 0, 24, 1994, 1995);
EXEC INSERT_PARTIDO ('05/03/1995', 3, 0, 'Valladolid', 0, 1, 'Atlético de Madrid', 2, 0, 24, 1994, 1995);

COMMIT;
-- Jornada 25
EXEC INSERT_PARTIDO ('11/03/1995', 2, 1, 'Atlético de Madrid', 2, 0, 'Barcelona', 4, 0, 25, 1994, 1995);
EXEC INSERT_PARTIDO ('12/03/1995', 3, 0, 'Athletic Club', 1, 2, 'Albacete', 1, 0, 25, 1994, 1995);
EXEC INSERT_PARTIDO ('12/03/1995', 1, 0, 'Compostela', 2, 0, 'Celta de Vigo', 1, 0, 25, 1994, 1995);
EXEC INSERT_PARTIDO ('12/03/1995', 1, 0, 'Español', 0, 0, 'Betis', 1, 0, 25, 1994, 1995);
EXEC INSERT_PARTIDO ('12/03/1995', 1, 0, 'Sporting de Gijón', 2, 2, 'Logroñés', 3, 0, 25, 1994, 1995);
EXEC INSERT_PARTIDO ('12/03/1995', 4, 0, 'Racing de Santander', 3, 1, 'Real Madrid', 0, 0, 25, 1994, 1995);
EXEC INSERT_PARTIDO ('12/03/1995', 4, 0, 'Sevilla', 2, 0, 'Real Sociedad', 1, 1, 25, 1994, 1995);
EXEC INSERT_PARTIDO ('12/03/1995', 4, 0, 'Tenerife', 1, 1, 'Oviedo', 4, 1, 25, 1994, 1995);
EXEC INSERT_PARTIDO ('12/03/1995', 4, 0, 'Valencia', 3, 0, 'Valladolid', 3, 1, 25, 1994, 1995);
EXEC INSERT_PARTIDO ('12/03/1995', 5, 2, 'Zaragoza', 1, 0, 'Deportivo de La Coruña', 2, 1, 25, 1994, 1995);

COMMIT;
-- Jornada 26
EXEC INSERT_PARTIDO ('18/03/1995', 3, 0, 'Athletic Club', 0, 2, 'Sevilla', 0, 0, 26, 1994, 1995);
EXEC INSERT_PARTIDO ('18/03/1995', 3, 0, 'Deportivo de La Coruña', 0, 1, 'Atlético de Madrid', 5, 1, 26, 1994, 1995);
EXEC INSERT_PARTIDO ('19/03/1995', 2, 0, 'Albacete', 1, 2, 'Sporting de Gijón', 3, 0, 26, 1994, 1995);
EXEC INSERT_PARTIDO ('19/03/1995', 3, 0, 'Barcelona', 0, 0, 'Valencia', 1, 0, 26, 1994, 1995);
EXEC INSERT_PARTIDO ('19/03/1995', 1, 0, 'Betis', 1, 0, 'Compostela', 4, 0, 26, 1994, 1995);
EXEC INSERT_PARTIDO ('19/03/1995', 4, 0, 'Celta de Vigo', 0, 0, 'Zaragoza', 2, 0, 26, 1994, 1995);
EXEC INSERT_PARTIDO ('19/03/1995', 0, 0, 'Logroñés', 0, 1, 'Racing de Santander', 2, 0, 26, 1994, 1995);
EXEC INSERT_PARTIDO ('19/03/1995', 2, 0, 'Real Madrid', 1, 0, 'Español', 3, 0, 26, 1994, 1995);
EXEC INSERT_PARTIDO ('19/03/1995', 0, 0, 'Oviedo', 3, 0, 'Real Sociedad', 1, 0, 26, 1994, 1995);
EXEC INSERT_PARTIDO ('19/03/1995', 1, 0, 'Valladolid', 1, 4, 'Tenerife', 2, 0, 26, 1994, 1995);

COMMIT;
-- Jornada 27
EXEC INSERT_PARTIDO ('01/04/1995', 0, 0, 'Valencia', 1, 2, 'Deportivo de La Coruña', 3, 0, 27, 1994, 1995);
EXEC INSERT_PARTIDO ('01/04/1995', 2, 0, 'Zaragoza', 3, 0, 'Betis', 3, 0, 27, 1994, 1995);
EXEC INSERT_PARTIDO ('02/04/1995', 1, 0, 'Atlético de Madrid', 0, 2, 'Celta de Vigo', 2, 0, 27, 1994, 1995);
EXEC INSERT_PARTIDO ('02/04/1995', 2, 0, 'Compostela', 1, 1, 'Real Madrid', 2, 0, 27, 1994, 1995);
EXEC INSERT_PARTIDO ('02/04/1995', 2, 0, 'Español', 2, 0, 'Logroñés', 2, 0, 27, 1994, 1995);
EXEC INSERT_PARTIDO ('02/04/1995', 2, 0, 'Sporting de Gijón', 1, 1, 'Athletic Club', 3, 0, 27, 1994, 1995);
EXEC INSERT_PARTIDO ('02/04/1995', 0, 0, 'Racing de Santander', 2, 1, 'Albacete', 3, 0, 27, 1994, 1995);
EXEC INSERT_PARTIDO ('02/04/1995', 1, 0, 'Real Sociedad', 3, 0, 'Valladolid', 2, 0, 27, 1994, 1995);
EXEC INSERT_PARTIDO ('02/04/1995', 3, 0, 'Sevilla', 1, 1, 'Oviedo', 4, 0, 27, 1994, 1995);
EXEC INSERT_PARTIDO ('02/04/1995', 0, 1, 'Tenerife', 2, 1, 'Barcelona', 6, 1, 27, 1994, 1995);

COMMIT;
-- Jornada 28
EXEC INSERT_PARTIDO ('08/04/1995', 0, 0, 'Betis', 2, 0, 'Atlético de Madrid', 4, 0, 28, 1994, 1995);
EXEC INSERT_PARTIDO ('09/04/1995', 4, 0, 'Albacete', 1, 1, 'Español', 0, 0, 28, 1994, 1995);
EXEC INSERT_PARTIDO ('09/04/1995', 1, 0, 'Athletic Club', 2, 0, 'Racing de Santander', 2, 0, 28, 1994, 1995);
EXEC INSERT_PARTIDO ('09/04/1995', 5, 0, 'Barcelona', 1, 1, 'Real Sociedad', 4, 1, 28, 1994, 1995);
EXEC INSERT_PARTIDO ('09/04/1995', 3, 0, 'Celta de Vigo', 0, 0, 'Valencia', 3, 0, 28, 1994, 1995);
EXEC INSERT_PARTIDO ('09/04/1995', 2, 0, 'Deportivo de La Coruña', 4, 1, 'Tenerife', 3, 0, 28, 1994, 1995);
EXEC INSERT_PARTIDO ('09/04/1995', 4, 0, 'Sporting de Gijón', 3, 0, 'Sevilla', 6, 2, 28, 1994, 1995);
EXEC INSERT_PARTIDO ('09/04/1995', 0, 0, 'Logroñés', 0, 4, 'Compostela', 0, 0, 28, 1994, 1995);
EXEC INSERT_PARTIDO ('09/04/1995', 0, 0, 'Real Madrid', 3, 0, 'Zaragoza', 3, 0, 28, 1994, 1995);
EXEC INSERT_PARTIDO ('09/04/1995', 2, 0, 'Valladolid', 2, 1, 'Oviedo', 0, 0, 28, 1994, 1995);

COMMIT;
-- Jornada 29
EXEC INSERT_PARTIDO ('15/04/1995', 5, 0, 'Atlético de Madrid', 0, 2, 'Real Madrid', 1, 0, 29, 1994, 1995);
EXEC INSERT_PARTIDO ('15/04/1995', 1, 0, 'Zaragoza', 3, 0, 'Logroñés', 2, 0, 29, 1994, 1995);
EXEC INSERT_PARTIDO ('16/04/1995', 4, 0, 'Compostela', 0, 0, 'Albacete', 4, 0, 29, 1994, 1995);
EXEC INSERT_PARTIDO ('16/04/1995', 3, 0, 'Español', 3, 1, 'Athletic Club', 4, 0, 29, 1994, 1995);
EXEC INSERT_PARTIDO ('16/04/1995', 1, 0, 'Racing de Santander', 0, 0, 'Sporting de Gijón', 2, 0, 29, 1994, 1995);
EXEC INSERT_PARTIDO ('16/04/1995', 1, 0, 'Real Sociedad', 1, 3, 'Deportivo de La Coruña', 3, 0, 29, 1994, 1995);
EXEC INSERT_PARTIDO ('16/04/1995', 2, 0, 'Oviedo', 0, 0, 'Barcelona', 4, 0, 29, 1994, 1995);
EXEC INSERT_PARTIDO ('16/04/1995', 1, 0, 'Sevilla', 1, 0, 'Valladolid', 3, 0, 29, 1994, 1995);
EXEC INSERT_PARTIDO ('16/04/1995', 3, 0, 'Tenerife', 3, 0, 'Celta de Vigo', 1, 0, 29, 1994, 1995);
EXEC INSERT_PARTIDO ('16/04/1995', 1, 0, 'Valencia', 2, 1, 'Betis', 2, 0, 29, 1994, 1995);

COMMIT;
-- Jornada 30
EXEC INSERT_PARTIDO ('22/04/1995', 0, 0, 'Real Madrid', 3, 1, 'Valencia', 3, 0, 30, 1994, 1995);
EXEC INSERT_PARTIDO ('23/04/1995', 3, 0, 'Albacete', 0, 3, 'Zaragoza', 3, 1, 30, 1994, 1995);
EXEC INSERT_PARTIDO ('23/04/1995', 3, 0, 'Athletic Club', 1, 0, 'Compostela', 2, 0, 30, 1994, 1995);
EXEC INSERT_PARTIDO ('23/04/1995', 0, 0, 'Barcelona', 4, 1, 'Valladolid', 0, 0, 30, 1994, 1995);
EXEC INSERT_PARTIDO ('23/04/1995', 1, 0, 'Betis', 3, 0, 'Tenerife', 1, 0, 30, 1994, 1995);
EXEC INSERT_PARTIDO ('23/04/1995', 2, 0, 'Celta de Vigo', 2, 1, 'Real Sociedad', 0, 0, 30, 1994, 1995);
EXEC INSERT_PARTIDO ('23/04/1995', 1, 0, 'Deportivo de La Coruña', 2, 2, 'Oviedo', 5, 1, 30, 1994, 1995);
EXEC INSERT_PARTIDO ('23/04/1995', 3, 0, 'Sporting de Gijón', 0, 0, 'Español', 3, 1, 30, 1994, 1995);
EXEC INSERT_PARTIDO ('23/04/1995', 4, 0, 'Logroñés', 0, 0, 'Atlético de Madrid', 1, 0, 30, 1994, 1995);
EXEC INSERT_PARTIDO ('23/04/1995', 2, 0, 'Racing de Santander', 0, 3, 'Sevilla', 0, 0, 30, 1994, 1995);

COMMIT;
-- Jornada 31
EXEC INSERT_PARTIDO ('29/04/1995', 1, 0, 'Zaragoza', 1, 4, 'Athletic Club', 3, 0, 31, 1994, 1995);
EXEC INSERT_PARTIDO ('30/04/1995', 4, 0, 'Atlético de Madrid', 4, 0, 'Albacete', 4, 1, 31, 1994, 1995);
EXEC INSERT_PARTIDO ('30/04/1995', 4, 0, 'Compostela', 3, 2, 'Sporting de Gijón', 3, 1, 31, 1994, 1995);
EXEC INSERT_PARTIDO ('30/04/1995', 4, 0, 'Español', 2, 0, 'Racing de Santander', 3, 0, 31, 1994, 1995);
EXEC INSERT_PARTIDO ('30/04/1995', 3, 0, 'Real Sociedad', 1, 1, 'Betis', 2, 0, 31, 1994, 1995);
EXEC INSERT_PARTIDO ('30/04/1995', 2, 0, 'Oviedo', 2, 2, 'Celta de Vigo', 2, 0, 31, 1994, 1995);
EXEC INSERT_PARTIDO ('30/04/1995', 4, 0, 'Sevilla', 4, 2, 'Barcelona', 3, 0, 31, 1994, 1995);
EXEC INSERT_PARTIDO ('30/04/1995', 2, 0, 'Tenerife', 0, 1, 'Real Madrid', 0, 0, 31, 1994, 1995);
EXEC INSERT_PARTIDO ('30/04/1995', 2, 0, 'Valencia', 3, 0, 'Logroñés', 4, 0, 31, 1994, 1995);
EXEC INSERT_PARTIDO ('30/04/1995', 0, 0, 'Valladolid', 0, 0, 'Deportivo de La Coruña', 2, 0, 31, 1994, 1995);

COMMIT;
-- Jornada 32
EXEC INSERT_PARTIDO ('06/05/1995', 4, 0, 'Deportivo de La Coruña', 1, 0, 'Barcelona', 3, 0, 32, 1994, 1995);
EXEC INSERT_PARTIDO ('06/05/1995', 1, 0, 'Sporting de Gijón', 1, 3, 'Zaragoza', 5, 0, 32, 1994, 1995);
EXEC INSERT_PARTIDO ('07/05/1995', 4, 0, 'Albacete', 1, 0, 'Valencia', 2, 0, 32, 1994, 1995);
EXEC INSERT_PARTIDO ('07/05/1995', 1, 0, 'Athletic Club', 3, 1, 'Atlético de Madrid', 2, 0, 32, 1994, 1995);
EXEC INSERT_PARTIDO ('07/05/1995', 1, 0, 'Betis', 0, 0, 'Oviedo', 5, 0, 32, 1994, 1995);
EXEC INSERT_PARTIDO ('07/05/1995', 1, 0, 'Celta de Vigo', 1, 0, 'Valladolid', 0, 0, 32, 1994, 1995);
EXEC INSERT_PARTIDO ('07/05/1995', 1, 0, 'Español', 2, 2, 'Sevilla', 4, 0, 32, 1994, 1995);
EXEC INSERT_PARTIDO ('07/05/1995', 0, 1, 'Logroñés', 4, 2, 'Tenerife', 1, 2, 32, 1994, 1995);
EXEC INSERT_PARTIDO ('07/05/1995', 2, 0, 'Racing de Santander', 2, 2, 'Compostela', 3, 1, 32, 1994, 1995);
EXEC INSERT_PARTIDO ('07/05/1995', 1, 0, 'Real Madrid', 0, 0, 'Real Sociedad', 5, 0, 32, 1994, 1995);

COMMIT;
-- Jornada 33
EXEC INSERT_PARTIDO ('13/05/1995', 0, 0, 'Sevilla', 0, 0, 'Deportivo de La Coruña', 0, 0, 33, 1994, 1995);
EXEC INSERT_PARTIDO ('13/05/1995', 4, 0, 'Valencia', 3, 1, 'Athletic Club', 3, 0, 33, 1994, 1995);
EXEC INSERT_PARTIDO ('14/05/1995', 2, 0, 'Atlético de Madrid', 3, 2, 'Sporting de Gijón', 7, 1, 33, 1994, 1995);
EXEC INSERT_PARTIDO ('14/05/1995', 1, 0, 'Barcelona', 1, 1, 'Celta de Vigo', 1, 0, 33, 1994, 1995);
EXEC INSERT_PARTIDO ('14/05/1995', 2, 0, 'Compostela', 1, 1, 'Español', 3, 2, 33, 1994, 1995);
EXEC INSERT_PARTIDO ('14/05/1995', 0, 0, 'Real Sociedad', 6, 0, 'Logroñés', 1, 0, 33, 1994, 1995);
EXEC INSERT_PARTIDO ('14/05/1995', 6, 0, 'Oviedo', 3, 2, 'Real Madrid', 2, 0, 33, 1994, 1995);
EXEC INSERT_PARTIDO ('14/05/1995', 0, 0, 'Tenerife', 2, 2, 'Albacete', 1, 0, 33, 1994, 1995);
EXEC INSERT_PARTIDO ('14/05/1995', 5, 0, 'Valladolid', 0, 2, 'Betis', 2, 0, 33, 1994, 1995);
EXEC INSERT_PARTIDO ('14/05/1995', 1, 1, 'Zaragoza', 1, 1, 'Racing de Santander', 4, 0, 33, 1994, 1995);

COMMIT;
-- Jornada 34
EXEC INSERT_PARTIDO ('20/05/1995', 1, 0, 'Español', 2, 0, 'Zaragoza', 2, 0, 34, 1994, 1995);
EXEC INSERT_PARTIDO ('21/05/1995', 4, 0, 'Albacete', 0, 1, 'Real Sociedad', 3, 0, 34, 1994, 1995);
EXEC INSERT_PARTIDO ('21/05/1995', 0, 0, 'Athletic Club', 3, 2, 'Tenerife', 2, 0, 34, 1994, 1995);
EXEC INSERT_PARTIDO ('21/05/1995', 1, 0, 'Betis', 1, 1, 'Barcelona', 5, 0, 34, 1994, 1995);
EXEC INSERT_PARTIDO ('21/05/1995', 2, 0, 'Celta de Vigo', 0, 2, 'Deportivo de La Coruña', 2, 0, 34, 1994, 1995);
EXEC INSERT_PARTIDO ('21/05/1995', 1, 0, 'Compostela', 0, 4, 'Sevilla', 1, 0, 34, 1994, 1995);
EXEC INSERT_PARTIDO ('21/05/1995', 4, 0, 'Sporting de Gijón', 1, 0, 'Valencia', 2, 0, 34, 1994, 1995);
EXEC INSERT_PARTIDO ('21/05/1995', 2, 0, 'Logroñés', 0, 2, 'Oviedo', 2, 0, 34, 1994, 1995);
EXEC INSERT_PARTIDO ('21/05/1995', 3, 0, 'Racing de Santander', 0, 0, 'Atlético de Madrid', 1, 0, 34, 1994, 1995);
EXEC INSERT_PARTIDO ('21/05/1995', 0, 0, 'Real Madrid', 1, 0, 'Valladolid', 5, 2, 34, 1994, 1995);

COMMIT;
-- Jornada 35
EXEC INSERT_PARTIDO ('27/05/1995', 4, 0, 'Barcelona', 1, 0, 'Real Madrid', 3, 0, 35, 1994, 1995);
EXEC INSERT_PARTIDO ('27/05/1995', 0, 0, 'Deportivo de La Coruña', 2, 0, 'Betis', 1, 0, 35, 1994, 1995);
EXEC INSERT_PARTIDO ('27/05/1995', 1, 0, 'Oviedo', 1, 3, 'Albacete', 4, 0, 35, 1994, 1995);
EXEC INSERT_PARTIDO ('27/05/1995', 1, 0, 'Tenerife', 3, 0, 'Sporting de Gijón', 1, 0, 35, 1994, 1995);
EXEC INSERT_PARTIDO ('27/05/1995', 3, 0, 'Valencia', 1, 1, 'Racing de Santander', 2, 1, 35, 1994, 1995);
EXEC INSERT_PARTIDO ('28/05/1995', 4, 1, 'Atlético de Madrid', 3, 1, 'Español', 5, 0, 35, 1994, 1995);
EXEC INSERT_PARTIDO ('28/05/1995', 3, 0, 'Real Sociedad', 5, 0, 'Athletic Club', 3, 0, 35, 1994, 1995);
EXEC INSERT_PARTIDO ('28/05/1995', 1, 0, 'Sevilla', 2, 3, 'Celta de Vigo', 4, 0, 35, 1994, 1995);
EXEC INSERT_PARTIDO ('28/05/1995', 2, 0, 'Valladolid', 2, 1, 'Logroñés', 0, 0, 35, 1994, 1995);
EXEC INSERT_PARTIDO ('28/05/1995', 1, 1, 'Zaragoza', 5, 3, 'Compostela', 2, 0, 35, 1994, 1995);

COMMIT;
-- Jornada 36
EXEC INSERT_PARTIDO ('03/06/1995', 3, 0, 'Español', 5, 0, 'Valencia', 2, 0, 36, 1994, 1995);
EXEC INSERT_PARTIDO ('03/06/1995', 5, 0, 'Real Madrid', 2, 1, 'Deportivo de La Coruña', 3, 0, 36, 1994, 1995);
EXEC INSERT_PARTIDO ('04/06/1995', 1, 0, 'Albacete', 1, 0, 'Valladolid', 2, 0, 36, 1994, 1995);
EXEC INSERT_PARTIDO ('04/06/1995', 5, 0, 'Athletic Club', 1, 0, 'Oviedo', 2, 0, 36, 1994, 1995);
EXEC INSERT_PARTIDO ('04/06/1995', 0, 0, 'Betis', 1, 1, 'Celta de Vigo', 2, 1, 36, 1994, 1995);
EXEC INSERT_PARTIDO ('04/06/1995', 2, 0, 'Compostela', 2, 1, 'Atlético de Madrid', 1, 2, 36, 1994, 1995);
EXEC INSERT_PARTIDO ('04/06/1995', 1, 0, 'Sporting de Gijón', 1, 2, 'Real Sociedad', 1, 0, 36, 1994, 1995);
EXEC INSERT_PARTIDO ('04/06/1995', 0, 0, 'Logroñés', 1, 4, 'Barcelona', 0, 0, 36, 1994, 1995);
EXEC INSERT_PARTIDO ('04/06/1995', 6, 0, 'Racing de Santander', 2, 1, 'Tenerife', 3, 0, 36, 1994, 1995);
EXEC INSERT_PARTIDO ('04/06/1995', 2, 1, 'Zaragoza', 0, 1, 'Sevilla', 3, 1, 36, 1994, 1995);

COMMIT;
-- Jornada 37
EXEC INSERT_PARTIDO ('10/06/1995', 1, 0, 'Barcelona', 0, 1, 'Albacete', 1, 0, 37, 1994, 1995);
EXEC INSERT_PARTIDO ('10/06/1995', 2, 0, 'Celta de Vigo', 0, 2, 'Real Madrid', 2, 0, 37, 1994, 1995);
EXEC INSERT_PARTIDO ('10/06/1995', 0, 0, 'Deportivo de La Coruña', 5, 0, 'Logroñés', 0, 0, 37, 1994, 1995);
EXEC INSERT_PARTIDO ('10/06/1995', 1, 0, 'Valencia', 4, 1, 'Compostela', 1, 1, 37, 1994, 1995);
EXEC INSERT_PARTIDO ('11/06/1995', 3, 0, 'Atlético de Madrid', 2, 0, 'Zaragoza', 5, 1, 37, 1994, 1995);
EXEC INSERT_PARTIDO ('11/06/1995', 3, 0, 'Betis', 2, 1, 'Sevilla', 4, 0, 37, 1994, 1995);
EXEC INSERT_PARTIDO ('11/06/1995', 2, 1, 'Real Sociedad', 0, 1, 'Racing de Santander', 3, 0, 37, 1994, 1995);
EXEC INSERT_PARTIDO ('11/06/1995', 1, 1, 'Oviedo', 1, 0, 'Sporting de Gijón', 5, 1, 37, 1994, 1995);
EXEC INSERT_PARTIDO ('11/06/1995', 3, 1, 'Tenerife', 1, 1, 'Español', 1, 0, 37, 1994, 1995);
EXEC INSERT_PARTIDO ('11/06/1995', 1, 0, 'Valladolid', 0, 1, 'Athletic Club', 2, 0, 37, 1994, 1995);

COMMIT;
-- Jornada 38
EXEC INSERT_PARTIDO ('17/06/1995', 0, 0, 'Sporting de Gijón', 1, 3, 'Valladolid', 0, 0, 38, 1994, 1995);
EXEC INSERT_PARTIDO ('18/06/1995', 5, 1, 'Albacete', 2, 8, 'Deportivo de La Coruña', 2, 0, 38, 1994, 1995);
EXEC INSERT_PARTIDO ('18/06/1995', 3, 0, 'Athletic Club', 0, 2, 'Barcelona', 3, 0, 38, 1994, 1995);
EXEC INSERT_PARTIDO ('18/06/1995', 3, 0, 'Compostela', 2, 0, 'Tenerife', 1, 0, 38, 1994, 1995);
EXEC INSERT_PARTIDO ('18/06/1995', 0, 0, 'Español', 0, 0, 'Real Sociedad', 1, 0, 38, 1994, 1995);
EXEC INSERT_PARTIDO ('18/06/1995', 3, 1, 'Logroñés', 0, 3, 'Celta de Vigo', 3, 0, 38, 1994, 1995);
EXEC INSERT_PARTIDO ('18/06/1995', 3, 0, 'Racing de Santander', 2, 0, 'Oviedo', 2, 1, 38, 1994, 1995);
EXEC INSERT_PARTIDO ('18/06/1995', 2, 0, 'Real Madrid', 0, 2, 'Betis', 2, 0, 38, 1994, 1995);
EXEC INSERT_PARTIDO ('18/06/1995', 2, 1, 'Sevilla', 2, 2, 'Atlético de Madrid', 4, 1, 38, 1994, 1995);
EXEC INSERT_PARTIDO ('18/06/1995', 0, 0, 'Zaragoza', 2, 2, 'Valencia', 1, 0, 38, 1994, 1995);

COMMIT;
