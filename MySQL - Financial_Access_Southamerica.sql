CREATE SCHEMA financial_access_southamerica;
USE financial_access_southamerica;

-- DDL
-- Creo las tablas del schema
CREATE TABLE Economia 
(  
	id_pais VARCHAR(3) NOT NULL,     
    nombre_pais VARCHAR(20),    
    PRIMARY KEY (id_pais) 
);

CREATE TABLE Tarjetas 
(  
	id_pais VARCHAR(3) NOT NULL,     
    numero_año YEAR,     
    poblacion_adulta INT,     
    numero_tarjetas_debito INT,     
    numero_tarjetas_credito INT,     
    CONSTRAINT fk_tarjetas FOREIGN KEY (id_pais)     
    REFERENCES Economia(id_pais) 
);

CREATE TABLE Cajeros_Automaticos 
(  
	id_pais VARCHAR(3) NOT NULL,     
    numero_año YEAR,     
    poblacion_adulta INT,     
    extension_territorial INT,     
    numero_cajeros INT,     
    CONSTRAINT fk_cajeros FOREIGN KEY (id_pais)     
    REFERENCES Economia(id_pais) 
);

CREATE TABLE Transacciones_Digitales 
(  
	id_pais VARCHAR(3) NOT NULL,     
    numero_año YEAR,     
    poblacion_adulta INT,     
    pbi FLOAT(24),     
    numero_transacciones_celular INT,     
    valor_transacciones_celular FLOAT(24),     
    CONSTRAINT fk_transacciones FOREIGN KEY (id_pais)     
    REFERENCES Economia(id_pais) 
);

CREATE TABLE Depositarios  
(  
	id_pais VARCHAR(3) NOT NULL,     
    numero_año YEAR,     
    poblacion_adulta INT,     
    numero_bancos_comerciales INT,     
    numero_entidadesfinancieras_y_cooperativas INT,     
    numero_instituciones_microfinancieras INT,     
    numero_depositarios INT,     
    numero_cuentas_depositarias INT,     
    CONSTRAINT fk_depositarios FOREIGN KEY (id_pais)     
    REFERENCES Economia(id_pais) 
);

CREATE TABLE Creditos 
(  
	id_pais VARCHAR(3) NOT NULL,     
    numero_año YEAR,     
    poblacion_adulta INT,     
    numero_bancos_comerciales INT,     
    numero_entidadesfinancieras_y_cooperativas INT,     
    numero_deudores_creditos INT,     
    CONSTRAINT fk_creditos FOREIGN KEY (id_pais)     
    REFERENCES Economia(id_pais) 
);

-- Corroboro las tablas
SHOW TABLES;

-- Pueblo las tablas del schema
INSERT INTO Economia 
VALUES  
	('ARG', 'Argentina'),     
    ('BOL', 'Bolivia'),     
    ('BRA', 'Brasil'),     
    ('CHL', 'Chile'),     
    ('COL', 'Colombia'),     
    ('ECU', 'Ecuador'),     
    ('PRY', 'Paraguay'),     
    ('PER', 'Peru'),     
    ('URY', 'Uruguay'),     
    ('VEN', 'Venezuela');
    
INSERT INTO Tarjetas 
VALUES   
	('ARG', 2011, 30606837, 24003841, 23780348),     
	('ARG', 2012, 31027913, 26883042, 28051882),     
	('ARG', 2013, 31436981, 29883632, 30868501),     
    ('ARG', 2014, 31845046, 36325292, 31166371),     
    ('ARG', 2015, 32257895, 37854927, 34483622),     
    ('ARG', 2016, 32658141, 41100750, 37225637),     
    ('ARG', 2017, 33065862, 45213411, 40152031),     
    ('ARG', 2018, 33477248, 47838835, 41991370),     
    ('ARG', 2019, 33885799, 48551233, 41495995),     
    ('ARG', 2020, 34288810, 56285891, 41626743),     
    ('BOL', 2011, 6732939, 2102195, 89247),     
    ('BOL', 2012, 6883411, 2327588, 100195),     
    ('BOL', 2013, 7035171, 2459257, 100961),     
    ('BOL', 2014, 7189670, 2701417, 96793),     
    ('BOL', 2015, 7347400, 3104264, 106682),     
    ('BOL', 2016, 7503466, 3597396, 126368),     
    ('BOL', 2017, 7663230, 4155675, 150283),     
    ('BOL', 2018, 7825317, 4752090, 181760),     
    ('BOL', 2019, 7987184, 5071193, 205160),     
    ('BOL', 2020, 8147430, 5604616, 203216),     
    ('BRA', 2011, 149489210, 84946178, 78401583),     
    ('BRA', 2012, 151818111, 83249018, 77644282),     
    ('BRA', 2013, 154122962, 90300553, 81715774),     
    ('BRA', 2014, 156396762, 100660056, 83105119),     
    ('BRA', 2015, 158627509, 96630430, 85143541),     
    ('BRA', 2016, 160705085, 101283604, 83529510),     
    ('BRA', 2017, 162767477, 108111242, 82521555),     
    ('BRA', 2018, 164780985, 115995568, 104310949),     
    ('BRA', 2019, 166709716, 132335974, 122841736),     
    ('BRA', 2020, 168540057, 166863186, 135241055),     
    ('CHL', 2011, 13488970, 13205569, 5688926),     
    ('CHL', 2012, 13677406, 14956370, 6374788),     
    ('CHL', 2013, 13865163, 16573553, 6583968),     
    ('CHL', 2014, 14061728, 17857892, 10012086),     
    ('CHL', 2015, 14273591, 20020154, 12775933),     
    ('CHL', 2016, 14512743, 21154499, 12994934),     
    ('CHL', 2017, 14771879, 21644787, 12932083),     
    ('CHL', 2018, 15029425, 22398093, 17894707),     
    ('CHL', 2019, 15257474, 21653909, 17171047),     
    ('CHL', 2020, 15438493, 21712213, 13993720),     
    ('COL', 2011, 33499192, 16509517, 9588668),     
    ('COL', 2012, 34062677, 17779937, 10843779),   
    ('COL', 2013, 34615781, 18797052, 11788156),     
    ('COL', 2014, 35207561, 20869341, 12684370),     
    ('COL', 2015, 35864005, 22514108, 13752401),     
    ('COL', 2016, 36590989, 25176567, 14933713),     
    ('COL', 2017, 37388194, 27524422, 14898432),     
    ('COL', 2018, 38200329, 29574651, 15286716),     
    ('COL', 2019, 38952266, 33091474, 16054855),     
    ('COL', 2020, 39595243, 36387824, 14676302),     
    ('ECU', 2011, 10574692, null, 2596729),     
    ('ECU', 2012, 10797871, null, 2732256),     
    ('ECU', 2013, 11024669, null, 2664493),     
    ('ECU', 2014, 11258411, null, 2402206),     
    ('ECU', 2015, 11501001, 4832686, 2559836),     
    ('ECU', 2016, 11757024, 5391362, 2572188),     
    ('ECU', 2017, 12024761, 5778967, 2841333),     
    ('ECU', 2018, 12295854, 6771200, 3149194),     
    ('ECU', 2019, 12559944, null, 4522996),     
    ('ECU', 2020, 12810286, null, null),  
    ('PRY', 2011, 4277802, null, null),     
    ('PRY', 2012, 4371427, null, null),     
    ('PRY', 2013, 4468142, null, null),     
    ('PRY', 2014, 4562881, null, null),     
    ('PRY', 2015, 4653034, null, null),     
    ('PRY', 2016, 4742803, null, null),     
    ('PRY', 2017, 4827243, null, null),     
    ('PRY', 2018, 4908167, 2190352, 1450764),     
    ('PRY', 2019, 4989060, 2391986, 1430566),     
    ('PRY', 2020, 5071692, 2513265, 1362928),     
    ('PER', 2011, 20573980, 15529291, 6906851),     
    ('PER', 2012, 20880049, 18024843, 7266097),     
    ('PER', 2013, 21206514, 20347756, 8038981),     
    ('PER', 2014, 21549525, 22036877, 8370731),     
    ('PER', 2015, 21914037, 22836427, 8394833),     
    ('PER', 2016, 22545071, 25660172, 8461816),     
    ('PER', 2017, 23154797, 28824552, 8289439),     
    ('PER', 2018, 23739040, 32085881, 8582396),     
    ('PER', 2019, 24300109, 39064964, 8349238),     
    ('PER', 2020, 24830392, 42872470, 8307999),     
    ('URY', 2011, 2630580, null, null),     
    ('URY', 2012, 2646361, null, null),     
    ('URY', 2013, 2661349, null, null),     
    ('URY', 2014, 2676614, null, null),
    ('URY', 2015, 2692583, null, null),
    ('URY', 2016, 2707063, null, null),     
    ('URY', 2017, 2722613, null, null),     
    ('URY', 2018, 2738461, null, null),     
    ('URY', 2019, 2753528, 2832734, 3657755),     
    ('URY', 2020, 2767344, null, null),     
    ('VEN', 2011, 20338335, null, null),     
    ('VEN', 2012, 20750123, null, null),     
    ('VEN', 2013, 21123451, null, null),     
    ('VEN', 2014, 21399883, null, null),
    ('VEN', 2015, 21544485, null, null),
    ('VEN', 2016, 21428077, null, null),     
    ('VEN', 2017, 21178424, null, null),     
    ('VEN', 2018, 20895019, null, null),     
    ('VEN', 2019, 20701287, null, null),     
    ('VEN', 2020, 20683544, null, null);
    
INSERT INTO Cajeros_Automaticos 
VALUES   
	('ARG', 2011, 30606837, 2780400, 8279),     
    ('ARG', 2012, 31027913, 2780400, 10713),     
    ('ARG', 2013, 31436981, 2780400, 13624),     
    ('ARG', 2014, 31845046, 2780400, 14543),     
    ('ARG', 2015, 32257895, 2780400, 15327),     
    ('ARG', 2016, 32658141, 2780400, 16442),     
    ('ARG', 2017, 33065862, 2780400, 17563),     
    ('ARG', 2018, 33477248, 2780400, 19746),     
    ('ARG', 2019, 33885799, 2780400, 20584),     
    ('ARG', 2020, 34288810, 2780400, 21414),
	('BOL', 2011, 6732939, 1098580, 1629),     
    ('BOL', 2012, 6883411, 1098580, 1896),     
    ('BOL', 2013, 7035171, 1098580, 2188),     
    ('BOL', 2014, 7189670, 1098580, 2466),     
    ('BOL', 2015, 7347400, 1098580, 2775),     
    ('BOL', 2016, 7503466, 1098580, 2979),     
    ('BOL', 2017, 7663230, 1098580, 3039),     
    ('BOL', 2018, 7825317, 1098580, 3160),     
    ('BOL', 2019, 7987184, 1098580, 3358),     
    ('BOL', 2020, 8147430, 1098580, 3447),     
    ('BRA', 2011, 149489210, 8515770, 173864),     
    ('BRA', 2012, 151818111, 8515770, 175139),     
    ('BRA', 2013, 154122962, 8515770, 182538),     
    ('BRA', 2014, 156396762, 8515770, 184446),     
    ('BRA', 2015, 158627509, 8515770, 182378),     
    ('BRA', 2016, 160705085, 8515770, 180150),     
    ('BRA', 2017, 162767477, 8515770, 175580),     
    ('BRA', 2018, 164780985, 8515770, 175570),     
    ('BRA', 2019, 166709716, 8515770, 171284),     
    ('BRA', 2020, 168540057, 8515770, 162734),     
    ('CHL', 2011, 13488970, 756096, 8719),     
    ('CHL', 2012, 13677406, 756096, 9238),     
    ('CHL', 2013, 13865163, 756096, 8856),     
    ('CHL', 2014, 14061728, 756096, 7963),     
    ('CHL', 2015, 14273591, 756096, 7976),     
    ('CHL', 2016, 14512743, 756096, 7725),     
    ('CHL', 2017, 14771879, 756096, 7622),     
    ('CHL', 2018, 15029425, 756096, 7468),     
    ('CHL', 2019, 15257474, 756096, 7570),     
    ('CHL', 2020, 15438493, 756096, 7637),     
    ('COL', 2011, 33499192, 1141750, 10889),     
    ('COL', 2012, 34062677, 1141750, 12281),   
    ('COL', 2013, 34615781, 1141750, 13679),     
    ('COL', 2014, 35207561, 1141750, 14424),     
    ('COL', 2015, 35864005, 1141750, 14817),     
    ('COL', 2016, 36590989, 1141750, 15227),     
    ('COL', 2017, 37388194, 1141750, 15709),     
    ('COL', 2018, 38200329, 1141750, 16173),     
    ('COL', 2019, 38952266, 1141750, 16529),     
    ('COL', 2020, 39595243, 1141750, 16293),     
    ('ECU', 2011, 10574692, 256370, 2772),     
    ('ECU', 2012, 10797871, 256370, 2973),     
    ('ECU', 2013, 11024669, 256370, 3206),     
    ('ECU', 2014, 11258411, 256370, 3626),     
    ('ECU', 2015, 11501001, 256370, 3865),     
    ('ECU', 2016, 11757024, 256370, 3999),     
    ('ECU', 2017, 12024761, 256370, 4035),     
    ('ECU', 2018, 12295854, 256370, 4295),     
    ('ECU', 2019, 12559944, 256370, 4627),     
    ('ECU', 2020, 12810286, 256370, null),  
    ('PRY', 2011, 4277802, 406752, 808),     
    ('PRY', 2012, 4371427, 406752, 889),     
    ('PRY', 2013, 4468142, 406752, 1048),     
    ('PRY', 2014, 4562881, 406752, 1096),     
    ('PRY', 2015, 4653034, 406752, 1177),     
    ('PRY', 2016, 4742803, 406752, 1183),     
    ('PRY', 2017, 4827243, 406752, 1304),     
    ('PRY', 2018, 4908167, 406752, 1433),     
    ('PRY', 2019, 4989060, 406752, 1492),     
    ('PRY', 2020, 5071692, 406752, 1317),     
    ('PER', 2011, 20573980, 1285220, 6530),     
    ('PER', 2012, 20880049, 1285220, 8162),     
    ('PER', 2013, 21206514, 1285220, 8898),     
    ('PER', 2014, 21549525, 1285220, 12226),     
    ('PER', 2015, 21914037, 1285220, 26976),     
    ('PER', 2016, 22545071, 1285220, 24956),     
    ('PER', 2017, 23154797, 1285220, 24892),     
    ('PER', 2018, 23739040, 1285220, 26741),     
    ('PER', 2019, 24300109, 1285220, 30790),     
    ('PER', 2020, 24830392, 1285220, 30863),     
    ('URY', 2011, 2630580, 176220, 1040),     
    ('URY', 2012, 2646361, 176220, 1130),     
    ('URY', 2013, 2661349, 176220, 1197),     
    ('URY', 2014, 2676614, 176220, 1392),
    ('URY', 2015, 2692583, 176220, 1475),
    ('URY', 2016, 2707063, 176220, 2224),     
    ('URY', 2017, 2722613, 176220, 2312),     
    ('URY', 2018, 2738461, 176220, 3288),     
    ('URY', 2019, 2753528, 176220, 7140),     
    ('URY', 2020, 2767344, 176220, null),     
    ('VEN', 2011, 20338335, 912050, 8529),     
    ('VEN', 2012, 20750123, 912050, 8819),     
    ('VEN', 2013, 21123451, 912050, 9395),     
    ('VEN', 2014, 21399883, 912050, 9666),
    ('VEN', 2015, 21544485, 912050, 10429),
    ('VEN', 2016, 21428077, 912050, null),     
    ('VEN', 2017, 21178424, 912050, null),     
    ('VEN', 2018, 20895019, 912050, null),     
    ('VEN', 2019, 20701287, 912050, null),     
    ('VEN', 2020, 20683544, 912050, null);
    
INSERT INTO Transacciones_Digitales 
VALUES   
	('ARG', 2011, 30606837, 527644, null, null),     
    ('ARG', 2012, 31027913, 579666, 118000, 164.20),     
    ('ARG', 2013, 31436981, 611471, 346000, 608.49),     
    ('ARG', 2014, 31845046, 563614, 904000, 2196.81),     
    ('ARG', 2015, 32257895, 642464, 1944000, 6627.79),     
    ('ARG', 2016, 32658141, 556774, 3834000, 16654.02),     
    ('ARG', 2017, 33065862, 643861, 7674000, 42249.66),     
    ('ARG', 2018, 33477248, 517244, 13673000, 90547.18),     
    ('ARG', 2019, 33885799, 444458, 23183000, 196921.70),     
    ('ARG', 2020, 34288810, 388279, 62524000, 588484.30),
    ('BOL', 2011, 6732939, 24135, null, null),     
    ('BOL', 2012, 6883411, 27282, null, null),     
    ('BOL', 2013, 7035171, 30883, 285990, 6),     
    ('BOL', 2014, 7189670, 33237, 1247456, 29),     
    ('BOL', 2015, 7347400, 33241, 22837475, 260),     
    ('BOL', 2016, 7503466, 34189, 57637276, 639),     
    ('BOL', 2017, 7663230, 37782, 69187107, 943),     
    ('BOL', 2018, 7825317, 40581, 71765492, 1257.49),     
    ('BOL', 2019, 7987184, 41193, 60226188, 1503),     
    ('BOL', 2020, 8147430, 39381, 46771398, 2269),     
    ('BRA', 2011, 149489210, 2614027, null, null),     
    ('BRA', 2012, 151818111, 2464054, null, null),     
    ('BRA', 2013, 154122962, 2471718, null, null),     
    ('BRA', 2014, 156396762, 2456055, null, null),     
    ('BRA', 2015, 158627509, 1800046, null, null),     
    ('BRA', 2016, 160705085, 1796622, null, null),     
    ('BRA', 2017, 162767477, 2063518, null, null),     
    ('BRA', 2018, 164780985, 1916934, null, null),     
    ('BRA', 2019, 166709716, 1877114, null, null),     
    ('BRA', 2020, 168540057, 1434084, null, null),     
    ('CHL', 2011, 13488970, 252097, null, null),     
    ('CHL', 2012, 13677406, 267021, null, null),     
    ('CHL', 2013, 13865163, 278346, null, null),     
    ('CHL', 2014, 14061728, 260472, null, null),     
    ('CHL', 2015, 14273591, 243888, null, null),     
    ('CHL', 2016, 14512743, 250326, null, null),     
    ('CHL', 2017, 14771879, 276900, null, null),     
    ('CHL', 2018, 15029425, 297436, null, null),     
    ('CHL', 2019, 15257474, 279270, null, null),     
    ('CHL', 2020, 15438493, 252756, null, null),     
    ('COL', 2011, 33499192, 334966, null, null),     
    ('COL', 2012, 34062677, 370692, null, null),   
    ('COL', 2013, 34615781, 382094, null, null),     
    ('COL', 2014, 35207561, 381240, null, null),     
    ('COL', 2015, 35864005, 293492, null, null),     
    ('COL', 2016, 36590989, 282720, null, null),     
    ('COL', 2017, 37388194, 311889, null, null),     
    ('COL', 2018, 38200329, 334124, 118868, 1806),     
    ('COL', 2019, 38952266, 323375, 5064641, 104958),     
    ('COL', 2020, 39595243, 271463, 163114976, 1375403),     
    ('ECU', 2011, 10574692, 79277, null, null),     
    ('ECU', 2012, 10797871, 87925, null, null),     
    ('ECU', 2013, 11024669, 95130, null, null),     
    ('ECU', 2014, 11258411, 101726, null, null),     
    ('ECU', 2015, 11501001, 99290, null, null),     
    ('ECU', 2016, 11757024, 99938, null, null),     
    ('ECU', 2017, 12024761, 104296, null, null),     
    ('ECU', 2018, 12295854, 107562, null, null),     
    ('ECU', 2019, 12559944, 108108, null, null),     
    ('ECU', 2020, 12810286, 96665, null, null),  
    ('PRY', 2011, 4277802, 33696, null, null),     
    ('PRY', 2012, 4371427, 33308, null, null),     
    ('PRY', 2013, 4468142, 38736, null, null),     
    ('PRY', 2014, 4562881, 40277, null, null),     
    ('PRY', 2015, 4653034, 36164, null, null),     
    ('PRY', 2016, 4742803, 36054, null, null),     
    ('PRY', 2017, 4827243, 39009, 50316730, 8727096),     
    ('PRY', 2018, 4908167, 40385, 56145752, 9279643),     
    ('PRY', 2019, 4989060, 38145, 62883315, 10169984),     
    ('PRY', 2020, 5071692, 35875, 100006950, 16316191.99),     
    ('PER', 2011, 20573980, 170983, null, null),     
    ('PER', 2012, 20880049, 192882, null, null),     
    ('PER', 2013, 21206514, 202091, null, null),     
    ('PER', 2014, 21549525, 202308, null, null),     
    ('PER', 2015, 21914037, 191316, null, null),     
    ('PER', 2016, 22545071, 194950, null, null),     
    ('PER', 2017, 23154797, 214061, null, null),     
    ('PER', 2018, 23739040, 225141, null, null),     
    ('PER', 2019, 24300109, 230746, null, null),     
    ('PER', 2020, 24830392, 203772, null, null),     
    ('URY', 2011, 2630580, 52103, null, null),     
    ('URY', 2012, 2646361, 55692, null, null),     
    ('URY', 2013, 2661349, 62499, null, null),     
    ('URY', 2014, 2676614, 62178, null, null),
    ('URY', 2015, 2692583, 57874, null, null),
    ('URY', 2016, 2707063, 57237, null, null),     
    ('URY', 2017, 2722613, 64234, null, null),     
    ('URY', 2018, 2738461, 64765, 3646133, 11811),     
    ('URY', 2019, 2753528, 62212, 4644748, 14537),     
    ('URY', 2020, 2767344, 55711, null, null),     
    ('VEN', 2011, 20338335, 352540, null, null),     
    ('VEN', 2012, 20750123, 352191, null, null),     
    ('VEN', 2013, 21123451, 258993, null, null),     
    ('VEN', 2014, 21399883, 203822, null, null),
    ('VEN', 2015, 21544485, 323595, null, null),
    ('VEN', 2016, 21428077, 279249, null, null),     
    ('VEN', 2017, 21178424, 143841, null, null),     
    ('VEN', 2018, 20895019, 98400, null, null),     
    ('VEN', 2019, 20701287, 63960, null, null),     
    ('VEN', 2020, 20683544, 47255, null, null);
 
INSERT INTO Depositarios
VALUES   
	('ARG', 2011, 30606837, 66, 2, null, 22258116, 29702854),     
    ('ARG', 2012, 31027913, 66, 2, null, 25050389, 34382194),     
    ('ARG', 2013, 31436981, 66, 1, null, 27116116, 37423726),     
    ('ARG', 2014, 31845046, 65, 1, null, 28930242, 40390107),     
    ('ARG', 2015, 32257895, 62, 1, null, 30792909, 46088015),     
    ('ARG', 2016, 32658141, 63, 1, null, 34847986, 53091061),     
    ('ARG', 2017, 33065862, 62, 1, null, 37965574, 59898049),     
    ('ARG', 2018, 33477248, 63, 1, null, 40653648, 65058568),     
    ('ARG', 2019, 33885799, 63, 0, null, 40010910, 68385768),     
    ('ARG', 2020, 34288810, 64, 0, null, 46536515, 80421047),
    ('BOL', 2011, 6732939, 9, 25, 8, null, 1977402),     
    ('BOL', 2012, 6883411, 9, 26, 8, null, 2294458),     
    ('BOL', 2013, 7035171, 9, 26, 8, null, 2714204),     
    ('BOL', 2014, 7189670, 9, 26, 8, null, 3186018),     
    ('BOL', 2015, 7347400, 9, 26, 8, null, 3740053),     
    ('BOL', 2016, 7503466, 9, 28, 8, null, 4305733),     
    ('BOL', 2017, 7663230, 9, 30, 7, null, 5353444),     
    ('BOL', 2018, 7825317, 9, 30, 7, null, 5836272),     
    ('BOL', 2019, 7987184, 9, 30, 7, null, 6256279),     
    ('BOL', 2020, 8147430, 10, 31, 7, null, 7323560),     
    ('BRA', 2011, 149489210, 128, 1307, null, 92347622, 150085194),     
    ('BRA', 2012, 151818111, 129, 1250, null, 97708147, 162880915),     
    ('BRA', 2013, 154122962, 124, 1187, null, 96247038, 172854857),     
    ('BRA', 2014, 156396762, 122, 1145, null, 96791198, null),     
    ('BRA', 2015, 158627509, 123, 1097, null, 92979168, null),     
    ('BRA', 2016, 160705085, 122, 1053, null, 92749536, null),     
    ('BRA', 2017, 162767477, 121, 1004, null, 107068528, null),     
    ('BRA', 2018, 164780985, 119, 962, null, 109594621, null),     
    ('BRA', 2019, 166709716, 118, 908, null, 110483140, null),     
    ('BRA', 2020, 168540057, 121, 883, null, null, null),     
    ('CHL', 2011, 13488970, 24, 6, null, null, 30410578),     
    ('CHL', 2012, 13677406, 24, 6, null, null, 32048208),     
    ('CHL', 2013, 13865163, 23, 7, null, null, 33630842),     
    ('CHL', 2014, 14061728, 23, 7, null, null, 35151871),     
    ('CHL', 2015, 14273591, 24, 7, null, null, 36729884),     
    ('CHL', 2016, 14512743, 23, 7, null, null, 38982127),     
    ('CHL', 2017, 14771879, 20, 7, null, null, 40782246),     
    ('CHL', 2018, 15029425, 19, 7, null, null, 42809895),     
    ('CHL', 2019, 15257474, 18, 7, null, null, 44993760),     
    ('CHL', 2020, 15438493, 18, 7, null, null, 48666473),     
    ('COL', 2011, 33499192, 23, 7, null, 36798889, 42139689),     
    ('COL', 2012, 34062677, 23, 7, null, 39705906, 45704882),   
    ('COL', 2013, 34615781, 24, 6, null, 42109988, 48550015),     
    ('COL', 2014, 35207561, 23, 5, null, 45677855, 52844947),     
    ('COL', 2015, 35864005, 25, 5, null, 49331774, 57407479),     
    ('COL', 2016, 36590989, 25, 5, null, 51248855, 58989871),     
    ('COL', 2017, 37388194, 25, 5, null, 55611178, 64257795),     
    ('COL', 2018, 38200329, 25, 5, null, 59177553, 69255539),     
    ('COL', 2019, 38952266, 26, 5, null, 64261410, 75727883),     
    ('COL', 2020, 39595243, 25, 5, null, 71410450, 85163733),     
    ('ECU', 2011, 10574692, 22, 20, 30, 6406411, 7003627),     
    ('ECU', 2012, 10797871, 22, 20, 30, 6372257, 6760999),     
    ('ECU', 2013, 11024669, 20, null, 5, 6832596, 7330900),     
    ('ECU', 2014, 11258411, 18, null, 6, 8074066, 8695553),     
    ('ECU', 2015, 11501001, 17, null, 7, 8562574, 9354160),     
    ('ECU', 2016, 11757024, 17, null, 8, 8955752, 9806548),     
    ('ECU', 2017, 12024761, 18, null, 7, 9618436, 10809877),     
    ('ECU', 2018, 12295854, 18, null, 7, 10006158, 11047560),     
    ('ECU', 2019, 12559944, 21, null, 4, 11860508, 13082665),     
    ('ECU', 2020, 12810286, null, null, null, null, null),  
    ('PRY', 2011, 4277802, 15, null, null, 661215, 661215),     
    ('PRY', 2012, 4371427, 16, null, null, 771502, 771502),     
    ('PRY', 2013, 4468142, 16, null, null, 865884, 865884),     
    ('PRY', 2014, 4562881, 16, null, null, 956618, 956618),     
    ('PRY', 2015, 4653034, 17, null, null, 1124549, 1124549),     
    ('PRY', 2016, 4742803, 17, null, null, 1240014, 1240014),     
    ('PRY', 2017, 4827243, 17, null, null, 1517428, 3258182),     
    ('PRY', 2018, 4908167, 17, null, null, 2623481, 4131210),     
    ('PRY', 2019, 4989060, 17, null, null, 2591649, 4269178),     
    ('PRY', 2020, 5071692, 17, null, null, 2846512, 4571103),     
    ('PER', 2011, 20573980, 14, null, 29, 9877948, 19350818),     
    ('PER', 2012, 20880049, 15, null, 29, 11423424, 19839363),     
    ('PER', 2013, 21206514, 15, null, 29, 13161349, 22144265),     
    ('PER', 2014, 21549525, 16, null, 29, 15263276, 25529715),     
    ('PER', 2015, 21914037, 16, null, 25, 16912370, 28456680),     
    ('PER', 2016, 22545071, 15, null, 24, 18945415, 31891359),     
    ('PER', 2017, 23154797, 15, null, 24, 20070386, 33621347),     
    ('PER', 2018, 23739040, 15, null, 24, 21615647, 36761152),     
    ('PER', 2019, 24300109, 14, 437, 25, 23792567, 42662357),     
    ('PER', 2020, 24830392, 15, 438, 25, 27308990, 54957412),     
    ('URY', 2011, 2630580, 14, null, null, 1650419, null),     
    ('URY', 2012, 2646361, 13, null, null, 1770549, null),     
    ('URY', 2013, 2661349, 12, null, null, 1974505, null),     
    ('URY', 2014, 2676614, 12, null, null, 2330360, null),
    ('URY', 2015, 2692583, 11, null, null, 2333410, null),
    ('URY', 2016, 2707063, 11, null, null, 2381235, null),     
    ('URY', 2017, 2722613, 11, null, null, 2609086, null),     
    ('URY', 2018, 2738461, 11, null, null, 2859977, null),     
    ('URY', 2019, 2753528, 11, null, null, 2992327, null),     
    ('URY', 2020, 2767344, null, null, null, null, null),     
    ('VEN', 2011, 20338335, 26, null, 4, 27831528, null),     
    ('VEN', 2012, 20750123, 26, null, 4, 31994782, null),     
    ('VEN', 2013, 21123451, 26, null, 4, 36205800, null),     
    ('VEN', 2014, 21399883, 26, null, 4, 37517526, null),
    ('VEN', 2015, 21544485, 26, null, 4, 41472676, null),
    ('VEN', 2016, 21428077, null, null, null, null, null),     
    ('VEN', 2017, 21178424, null, null, null, null, null),     
    ('VEN', 2018, 20895019, null, null, null, null, null),     
    ('VEN', 2019, 20701287, null, null, null, null, null),     
    ('VEN', 2020, 20683544, null, null, null, null, null);

INSERT INTO Creditos
VALUES   
	('ARG', 2011, 30606837, 66, 2, 9986480),     
    ('ARG', 2012, 31027913, 66, 2, 10792553),     
    ('ARG', 2013, 31436981, 66, 1, 10816189),     
    ('ARG', 2014, 31845046, 65, 1, 11334403),     
    ('ARG', 2015, 32257895, 62, 1, 12274794),     
    ('ARG', 2016, 32658141, 63, 1, 12920373),     
    ('ARG', 2017, 33065862, 62, 1, 13081915),     
    ('ARG', 2018, 33477248, 63, 1, 13637180),     
    ('ARG', 2019, 33885799, 63, 0, 13802273),     
    ('ARG', 2020, 34288810, 64, 0, 13593600),
    ('BOL', 2011, 6732939, 9, 25, 221402),     
    ('BOL', 2012, 6883411, 9, 26, 271493),     
    ('BOL', 2013, 7035171, 9, 26, 343159),     
    ('BOL', 2014, 7189670, 9, 26, 393358),     
    ('BOL', 2015, 7347400, 9, 26, 440312),     
    ('BOL', 2016, 7503466, 9, 28, 477462),     
    ('BOL', 2017, 7663230, 9, 30, 535405),     
    ('BOL', 2018, 7825317, 9, 30, 556626),     
    ('BOL', 2019, 7987184, 9, 30, 586585),     
    ('BOL', 2020, 8147430, 10, 31, 656443),     
    ('BRA', 2011, 149489210, 128, 1307, 35072509),     
    ('BRA', 2012, 151818111, 129, 1250, 56133070),     
    ('BRA', 2013, 154122962, 124, 1187, 60711877),     
    ('BRA', 2014, 156396762, 122, 1145, 62494005),     
    ('BRA', 2015, 158627509, 123, 1097, 63965162),     
    ('BRA', 2016, 160705085, 122, 1053, 88803648),     
    ('BRA', 2017, 162767477, 121, 1004, 88767088),     
    ('BRA', 2018, 164780985, 119, 962, 90479337),     
    ('BRA', 2019, 166709716, 118, 908, 109323797),     
    ('BRA', 2020, 168540057, 121, 883, 112181944),     
    ('CHL', 2011, 13488970, 24, 6, 4631844),     
    ('CHL', 2012, 13677406, 24, 6, 5068544),     
    ('CHL', 2013, 13865163, 23, 7, 5286589),     
    ('CHL', 2014, 14061728, 23, 7, 5844302),     
    ('CHL', 2015, 14273591, 24, 7, 6355298),     
    ('CHL', 2016, 14512743, 23, 7, 6597647),     
    ('CHL', 2017, 14771879, 20, 7, 6687071),     
    ('CHL', 2018, 15029425, 19, 7, 8349630),     
    ('CHL', 2019, 15257474, 18, 7, 8306230),     
    ('CHL', 2020, 15438493, 18, 7, 8063593),     
    ('COL', 2011, 33499192, 23, 7, 6303032),     
    ('COL', 2012, 34062677, 23, 7, 6877053),   
    ('COL', 2013, 34615781, 24, 6, 7384038),     
    ('COL', 2014, 35207561, 23, 5, 7766513),     
    ('COL', 2015, 35864005, 25, 5, 8421157),     
    ('COL', 2016, 36590989, 25, 5, 8754288),     
    ('COL', 2017, 37388194, 25, 5, 8974012),     
    ('COL', 2018, 38200329, 25, 5, 9290429),     
    ('COL', 2019, 38952266, 26, 5, 10000000),     
    ('COL', 2020, 39595243, 25, 5, 9751125),     
    ('ECU', 2011, 10574692, 22, 20, 3088183),     
    ('ECU', 2012, 10797871, 22, 20, 2549369),     
    ('ECU', 2013, 11024669, 20, null, 2345264),     
    ('ECU', 2014, 11258411, 18, null, 2550230),     
    ('ECU', 2015, 11501001, 17, null, 2543489),     
    ('ECU', 2016, 11757024, 17, null, 2540320),     
    ('ECU', 2017, 12024761, 18, null, 2494826),     
    ('ECU', 2018, 12295854, 18, null, 2526211),     
    ('ECU', 2019, 12559944, 21, null, 1668652),     
    ('ECU', 2020, 12810286, null, null, null),  
    ('PRY', 2011, 4277802, 15, null, 585862),     
    ('PRY', 2012, 4371427, 16, null, 770679),     
    ('PRY', 2013, 4468142, 16, null, 849315),     
    ('PRY', 2014, 4562881, 16, null, 1248428),     
    ('PRY', 2015, 4653034, 17, null, 1178594),     
    ('PRY', 2016, 4742803, 17, null, 1223893),     
    ('PRY', 2017, 4827243, 17, null, 1257627),     
    ('PRY', 2018, 4908167, 17, null, 1327536),     
    ('PRY', 2019, 4989060, 17, null, 1358078),     
    ('PRY', 2020, 5071692, 17, null, 1343837),     
    ('PER', 2011, 20573980, 14, null, 2760282),     
    ('PER', 2012, 20880049, 15, null, 3104297),     
    ('PER', 2013, 21206514, 15, null, 3360500),     
    ('PER', 2014, 21549525, 16, null, 3492230),     
    ('PER', 2015, 21914037, 16, null, 3466852),     
    ('PER', 2016, 22545071, 15, null, 3444565),     
    ('PER', 2017, 23154797, 15, null, 3436779),     
    ('PER', 2018, 23739040, 15, null, 3526144),     
    ('PER', 2019, 24300109, 14, 437, 3774875),     
    ('PER', 2020, 24830392, 15, 438, 3599615),     
    ('URY', 2011, 2630580, 14, null, 1269993),     
    ('URY', 2012, 2646361, 13, null, 1485009),     
    ('URY', 2013, 2661349, 12, null, 1511831),     
    ('URY', 2014, 2676614, 12, null, 1513276),
    ('URY', 2015, 2692583, 11, null, 1407434),
    ('URY', 2016, 2707063, 11, null, 1271164),     
    ('URY', 2017, 2722613, 11, null, 1482249),     
    ('URY', 2018, 2738461, 11, null, 1491611),     
    ('URY', 2019, 2753528, 11, null, 1552673),     
    ('URY', 2020, 2767344, null, null, null),     
    ('VEN', 2011, 20338335, 26, null, null),     
    ('VEN', 2012, 20750123, 26, null, null),     
    ('VEN', 2013, 21123451, 26, null, null),     
    ('VEN', 2014, 21399883, 26, null, null),
    ('VEN', 2015, 21544485, 26, null, null),
    ('VEN', 2016, 21428077, null, null, null),     
    ('VEN', 2017, 21178424, null, null, null),     
    ('VEN', 2018, 20895019, null, null, null),     
    ('VEN', 2019, 20701287, null, null, null),     
    ('VEN', 2020, 20683544, null, null, null);

-- Necesito la cantidad de filas de cada tabla del schema financial_access_southamerica
SELECT TABLE_SCHEMA, TABLE_NAME, TABLE_ROWS
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'financial_access_southamerica';

-- Y la estructura de la tabla Cajeros Automáticos
DESCRIBE Cajeros_Automaticos;

-- Sentencia UPDATE
-- Actualizame el registro de Colombia, año 2017, en el campo extension territorial
UPDATE Cajeros_Automaticos
SET extension_territorial = 1141750
WHERE id_pais = 'COL' AND numero_año = 2017;

SELECT id_pais AS Economia, numero_año AS Año, extension_territorial AS KM2
FROM Cajeros_Automaticos
WHERE id_pais = 'COL' AND numero_año = 2017;

-- Querys
-- Sentencia LIMIT
-- ¿Qué campos estructuran la tabla Tarjetas?
SELECT *
FROM Tarjetas
LIMIT 5;

-- Sentencia WHERE (BETWEEN, LIKE, AND, OR, IN)
-- ¿Cómo fue la evolución del número de tarjetas de débito en Argentina?
SELECT id_pais AS Economia, numero_año AS Año, numero_tarjetas_debito AS Tarjetas_Debito
FROM Tarjetas
WHERE id_pais = 'ARG';

-- ¿Qué economías (y en cuáles años) registraron entre 5 y 10 millones de tarjetas de débito?
SELECT id_pais AS Economia, numero_año AS Año, numero_tarjetas_debito AS Tarjetas_Debito
FROM Tarjetas
WHERE numero_tarjetas_debito BETWEEN 5000000 AND 10000000;

-- ¿Cómo fue la evolución del número de tarjetas de débito para las economías que comienzan con la letra B?
SELECT id_pais AS Economia, numero_año AS Año, numero_tarjetas_debito AS Tarjetas_Debito
FROM Tarjetas
WHERE id_pais LIKE 'b%';

-- ¿Y la evolución del número de tarjetas de débito en Argentina para el segundo lustro de la serie histórica?
SELECT id_pais AS Economia, numero_año AS Año, numero_tarjetas_debito AS Tarjetas_Debito
FROM Tarjetas
WHERE id_pais = 'ARG' AND numero_año >= 2016;

-- ¿Cómo fue la evolución del número de tarjetas de débito en las economías más grandes de Sudamérica?
SELECT id_pais AS Economia, numero_año AS Año, numero_tarjetas_debito AS Tarjetas_Debito
FROM Tarjetas
WHERE id_pais = 'ARG' OR id_pais = 'BRA';

-- Necesito todos los registros de Cuentas Depositarias en Bancos comerciales de las economías que conforman el Mercosur
SELECT id_pais AS Economia, numero_año AS Año, numero_cuentas_depositarias AS Cuentas_BancosComerciales
FROM Depositarios
WHERE id_pais IN ('ARG', 'BRA', 'URY', 'PRY') AND numero_cuentas_depositarias IS NOT NULL;

-- Valores nulos
-- ¿Cuál es la cantidad de registros nulos para el campo número de entidades financieras y cooperativas de crédito?
SELECT id_pais AS Economia, numero_año AS Año, numero_entidadesfinancieras_y_cooperativas AS Entidades
FROM Creditos
WHERE numero_entidadesfinancieras_y_cooperativas IS NULL;

-- ¿Y la cantidad de registros no vacíos del mismo campo?
SELECT id_pais AS Economia, numero_año AS Año, numero_entidadesfinancieras_y_cooperativas AS Entidades
FROM Creditos
WHERE numero_entidadesfinancieras_y_cooperativas IS NOT NULL;

-- ORDER BY
-- Necesito saber los registros de economías con mayor cantidad de bancos comerciales, ordenados de mayor a menor, excluyendo nulos
SELECT id_pais AS Economia, numero_año AS Año, numero_bancos_comerciales AS Bancos_Comerciales
FROM Depositarios
WHERE numero_bancos_comerciales IS NOT NULL
ORDER BY numero_bancos_comerciales DESC;

-- Agregaciones (MAX, MIN, AVG, SUM, COUNT, HAVING)
-- Devolveme el registro máximo de tarjetas de débito para cada economía, ordenado de mayor a menor, excluyendo registros nulos
SELECT MAX(numero_tarjetas_debito) AS Maximo_Tarjetas_Debito, id_pais AS Economia 
FROM Tarjetas
WHERE numero_tarjetas_debito IS NOT NULL
GROUP BY Economia
ORDER BY Maximo_Tarjetas_Debito DESC;

-- Ahora devolveme los registro mínimos de cuentas depositarias para cada economía, por año y ordenado de menor a mayor, excluyendo registros nulos
SELECT MIN(numero_cuentas_depositarias) AS Minimo_Cuentas, id_pais AS Economia, numero_año AS Año
FROM Depositarios
WHERE numero_cuentas_depositarias IS NOT NULL
GROUP BY id_pais, numero_año
ORDER BY numero_cuentas_depositarias ASC;

-- ¿Y el promedio de tarjetas de debito en Sudamérica para el año 2011? 
SELECT AVG(numero_tarjetas_debito) AS Promedio_Tarjetas_Debito
FROM Tarjetas
WHERE numero_año = 2011;

-- ¿Y la suma de bancos comerciales en Sudamérica para el año 2020? 
SELECT SUM(numero_bancos_comerciales) AS Numero_Bancos
FROM Depositarios
WHERE numero_año = 2020;

-- ¿Cuál es la cantidad de registros que superaron los 20 millones de depositarios en Bancos Comerciales?
SELECT COUNT(id_pais) AS Numero_Registros
FROM Depositarios
WHERE numero_depositarios > 20000000;

-- Ahora necesito los promedio de tarjetas de credito, por año, que superen los 20 millones, ordenados de mayor a menor
SELECT numero_año AS Año, AVG(numero_tarjetas_credito) AS Tarjetas_Credito
FROM Tarjetas
GROUP BY numero_año
HAVING Tarjetas_Credito > 20000000
ORDER BY Tarjetas_Credito DESC;

-- Sentencias EXISTS, ANY, ALL, CASE
-- Clasificame los países según su PBI (a precios corrientes en Billones de USD)
SELECT id_pais AS Economia, numero_año AS Año, pbi AS PBI_Billones_USD,
CASE 
WHEN pbi < 100000 THEN 'PBI bajo'
WHEN pbi >= 100000 AND pbi < 300000 THEN 'PBI medio'
ELSE 'PBI alto'
END AS PBItext
FROM Transacciones_Digitales;

-- Stored Procedure
-- Guardame la consulta de clasificación de PBI para poder repetirla

DELIMITER //

CREATE PROCEDURE clasificacion_pbi()
BEGIN
	SELECT id_pais AS Economia, numero_año AS Año, pbi AS PBI_Billones_USD,
	CASE 
	WHEN pbi < 100000 THEN 'PBI bajo'
	WHEN pbi >= 100000 AND pbi < 300000 THEN 'PBI medio'
	ELSE 'PBI alto'
	END AS PBItext
	FROM Transacciones_Digitales;
END //

DELIMITER ;

CALL clasificacion_pbi;

-- Ahora quiero guardar una consulta que me devuelva el promedio de tarjetas de crédito de la economía que introduzca, para los últimos 5 años de la serie histórica

DELIMITER //

CREATE PROCEDURE promedio_tarjetas_credito(IN economy CHAR(3))
BEGIN
	SELECT id_pais AS Economia, numero_año AS Año, AVG(numero_tarjetas_credito) AS Prom_TarjetasCredito_2doLustro 
    FROM Tarjetas
    WHERE id_pais = economy AND numero_año >= 2016;
    
END //

DELIMITER ;

-- Devolveme el promedio de tarjetas de crédito de los últimos 5 años para Brasil
CALL promedio_tarjetas_credito('BRA');

-- View
-- Quiero una vista de los cajeros automáticos por KM2 para cada registro
CREATE VIEW Cajeros_KM2 
AS
SELECT id_pais AS Economia, numero_año AS Año, ROUND(numero_cajeros/extension_territorial, 3) AS Cajeros_x_KM2
FROM Cajeros_Automaticos
WHERE numero_cajeros IS NOT NULL;

SELECT *
FROM Cajeros_KM2;

-- Subconsultas
-- Quiero todos los campos del registro con mayor número de tarjetas de débito

SELECT * 
FROM Tarjetas
WHERE numero_tarjetas_debito = (
								SELECT MAX(numero_tarjetas_debito) 
                                FROM Tarjetas);

-- ¿Qué economías sudamericanas se encuentran sobre el promedio de cajeros automáticos por KM2 ?
SELECT Economia, AVG(Cajeros_x_KM2) AS Promedio_Cajeros_x_KM2
FROM Cajeros_KM2
WHERE Cajeros_x_KM2 > 	(
						SELECT AVG(Cajeros_x_KM2) 
                        FROM Cajeros_KM2
						)
GROUP BY Economia
ORDER BY Cajeros_x_KM2 DESC;

-- Ahora voy a utilizar la BBDD Sakila para otras subconsultas
USE sakila;

-- Quiero saber más de la estructura de tablas del schema
SELECT *
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'sakila';

-- Y de sus relaciones
SELECT *
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'sakila';

-- Necesito una tabla de actores, sus films y respectivos ratings, con el número de id entre 10 y 20
SELECT a.actor_id, CONCAT(a.first_name,' ',a.last_name) AS actor, f.title, f.rating
FROM actor AS a
JOIN film_actor AS fa 
ON a.actor_id = fa.actor_id
JOIN film AS f
ON fa.film_id = f.film_id
WHERE a.actor_id BETWEEN 10 AND 20;

-- Nombre, Apellido, Email y Cantidad de Pagos de los clientes, ordenados de mayor a menor
SELECT CONCAT(c.first_name,' ',c.last_name) AS customer, c.email, SUM(p.amount) AS amount
FROM customer AS c
LEFT JOIN payment AS p
ON c.customer_id = p.customer_id
GROUP BY customer, c.email
ORDER BY p.amount DESC;

