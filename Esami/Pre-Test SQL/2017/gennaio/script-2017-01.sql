/* ===================================================================
-- Eliminazione dello schema e definizione dello schema stesso 
=================================================================== */

   DROP SCHEMA IF EXISTS test_01_17;
   CREATE SCHEMA test_01_17; 
   USE test_01_17;

/* ===================================================================
-- Creazione delle tabelle 
-- ================================================================ */

  CREATE TABLE Scuola(
  codice      	NUMERIC(5) PRIMARY KEY,
  nome         VARCHAR(20),
  tipo		VARCHAR(20),
  provincia    NUMERIC(3)
  );
  
  CREATE TABLE Esito(
  codscuola	NUMERIC(5),
  anno         NUMERIC(4),
  promossi     NUMERIC(5),
  bocciati     NUMERIC(5),
  PRIMARY KEY (codscuola,anno)
  );

  CREATE TABLE Provincia(
  codprovincia	NUMERIC(3)  PRIMARY KEY, 
  nome		VARCHAR(30),
  regione      VARCHAR(30)
  );

/*  ====================================================================
-- Inserimento nelle tabelle
-- ================================================================== */

INSERT INTO Scuola(codice,nome,tipo,provincia) VALUES ('100','Dante','classico',15);
INSERT INTO Scuola(codice,nome,tipo,provincia) VALUES ('101','Leonardo','scientifico',15);
INSERT INTO Scuola(codice,nome,tipo,provincia) VALUES ('102','Gauss','scientifico',15);
INSERT INTO Scuola(codice,nome,tipo,provincia) VALUES ('200','Dante','classico',58);
INSERT INTO Scuola(codice,nome,tipo,provincia) VALUES ('201','Galileo','scientifico',58);
INSERT INTO Scuola(codice,nome,tipo,provincia) VALUES ('202','Aristotele','scientifico',58);
INSERT INTO Scuola(codice,nome,tipo,provincia) VALUES ('203','Russell','tecnico',56);
INSERT INTO Scuola(codice,nome,tipo,provincia) VALUES ('204','Leopardi','classico',57);
INSERT INTO Scuola(codice,nome,tipo,provincia) VALUES ('205','Turing','scientifico',59);
INSERT INTO Scuola(codice,nome,tipo,provincia) VALUES ('206','Carnot','scientifico',60);
INSERT INTO Scuola(codice,nome,tipo,provincia) VALUES ('301','Newton','tecnico',37);
INSERT INTO Scuola(codice,nome,tipo,provincia) VALUES ('302','Orazio','classico',37);
INSERT INTO Scuola(codice,nome,tipo,provincia) VALUES ('303','Omero','classico',37);
INSERT INTO Scuola(codice,nome,tipo,provincia) VALUES ('304','Einstein','scientifico',37);

INSERT INTO Esito(codscuola,anno,promossi,bocciati) VALUES('100',2015,120,19);
INSERT INTO Esito(codscuola,anno,promossi,bocciati) VALUES('101',2015,230,28);
INSERT INTO Esito(codscuola,anno,promossi,bocciati) VALUES('102',2015,180,18);
INSERT INTO Esito(codscuola,anno,promossi,bocciati) VALUES('101',2014,225,30);
INSERT INTO Esito(codscuola,anno,promossi,bocciati) VALUES('201',2011,140,50);
INSERT INTO Esito(codscuola,anno,promossi,bocciati) VALUES('201',2015,119,80);
INSERT INTO Esito(codscuola,anno,promossi,bocciati) VALUES('202',2015,180,18);
INSERT INTO Esito(codscuola,anno,promossi,bocciati) VALUES('202',2014,100,120);
INSERT INTO Esito(codscuola,anno,promossi,bocciati) VALUES('203',2012,100,30);
INSERT INTO Esito(codscuola,anno,promossi,bocciati) VALUES('203',2013,50,51);
INSERT INTO Esito(codscuola,anno,promossi,bocciati) VALUES('204',2009,100,130);
INSERT INTO Esito(codscuola,anno,promossi,bocciati) VALUES('205',2014,80,90);
INSERT INTO Esito(codscuola,anno,promossi,bocciati) VALUES('206',2012,100,120);

INSERT INTO Provincia(codprovincia,nome,regione) VALUES (1,'Torino','Piemonte');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (2,'Vercelli','Piemonte');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (3,'Novara','Piemonte');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (4,'Cuneo','Piemonte');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (5,'Asti','Piemonte');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (6,'Alessandria','Piemonte');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (7,'Aosta - Aoste','Valle D''Aosta');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (8,'Imperia','Liguria');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (9,'Savona','Liguria');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (10,'Genova','Liguria');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (11,'La Spezia','Liguria');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (12,'Varese','Lombardia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (13,'Como','Lombardia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (14,'Sondrio','Lombardia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (15,'Milano','Lombardia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (16,'Bergamo','Lombardia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (17,'Brescia','Lombardia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (18,'Pavia','Lombardia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (19,'Cremona','Lombardia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (20,'Mantova','Lombardia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (21,'Bolzano - Bozen','Trentino Alto Adige');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (22,'Trento','Trentino Alto Adige');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (23,'Verona','Veneto');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (24,'Vicenza','Veneto');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (25,'Belluno','Veneto');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (26,'Treviso','Veneto');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (27,'Venezia','Veneto');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (28,'Padova','Veneto');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (29,'Rovigo','Veneto');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (30,'Udine','Friuli Venezia Giulia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (31,'Gorizia','Friuli Venezia Giulia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (32,'Trieste','Friuli Venezia Giulia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (33,'Piacenza','Emilia Romagna');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (34,'Parma','Emilia Romagna');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (35,'Reggio Nell''Emilia','Emilia Romagna');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (36,'Modena','Emilia Romagna');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (37,'Bologna','Emilia Romagna');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (38,'Ferrara','Emilia Romagna');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (39,'Ravenna','Emilia Romagna');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (40,'Forli''-Cesena','Emilia Romagna');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (41,'Pesaro E Urbino','Marche');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (42,'Ancona','Marche');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (43,'Macerata','Marche');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (44,'Ascoli Piceno','Marche');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (45,'Massa-Carrara','Toscana');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (46,'Lucca','Toscana');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (47,'Pistoia','Toscana');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (48,'Firenze','Toscana');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (49,'Livorno','Toscana');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (50,'Pisa','Toscana');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (51,'Arezzo','Toscana');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (52,'Siena','Toscana');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (53,'Grosseto','Toscana');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (54,'Perugia','Umbria');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (55,'Terni','Umbria');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (56,'Viterbo','Lazio');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (57,'Rieti','Lazio');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (58,'Roma','Lazio');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (59,'Latina','Lazio');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (60,'Frosinone','Lazio');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (61,'Caserta','Campania');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (62,'Benevento','Campania');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (63,'Napoli','Campania');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (64,'Avellino','Campania');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (65,'Salerno','Campania');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (66,'L''Aquila','Abruzzo');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (67,'Teramo','Abruzzo');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (68,'Pescara','Abruzzo');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (69,'Chieti','Abruzzo');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (70,'Campobasso','Molise');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (71,'Foggia','Puglia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (72,'Bari','Puglia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (73,'Taranto','Puglia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (74,'Brindisi','Puglia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (75,'Lecce','Puglia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (76,'Potenza','Basilicata');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (77,'Matera','Basilicata');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (78,'Cosenza','Calabria');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (79,'Catanzaro','Calabria');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (80,'Reggio Di Calabria','Calabria');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (81,'Trapani','Sicilia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (82,'Palermo','Sicilia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (83,'Messina','Sicilia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (84,'Agrigento','Sicilia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (85,'Caltanissetta','Sicilia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (86,'Enna','Sicilia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (87,'Catania','Sicilia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (88,'Ragusa','Sicilia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (89,'Siracusa','Sicilia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (90,'Sassari','Sardegna');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (91,'Nuoro','Sardegna');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (92,'Cagliari','Sardegna');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (93,'Pordenone','Friuli Venezia Giulia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (94,'Isernia','Molise');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (95,'Oristano','Sardegna');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (96,'Biella','Piemonte');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (97,'Lecco','Lombardia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (98,'Lodi','Lombardia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (99,'Rimini','Emilia Romagna');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (100,'Prato','Toscana');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (101,'Crotone','Calabria');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (102,'Vibo Valentia','Calabria');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (103,'Verbano-Cusio-Ossola','Piemonte');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (104,'Olbia Tempio','Sardegna');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (105,'Ogliastra','Sardegna');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (106,'Medio Campidano','Sardegna');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (107,'Carbonia Iglesias','Sardegna');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (108,'Monza E Della Brianza','Lombardia');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (109,'Fermo','Marche');
INSERT INTO Provincia(codprovincia,nome,regione) VALUES (110,'Barletta-Andria-Trani','Puglia');



