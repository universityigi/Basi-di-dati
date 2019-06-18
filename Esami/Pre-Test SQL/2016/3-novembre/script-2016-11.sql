/* ===================================================================
-- Eliminazione dello schema e definizione dello schema stesso 
=================================================================== */

   DROP SCHEMA IF EXISTS test_11_16;
   CREATE SCHEMA test_11_16; 
   USE test_11_16;

/* ===================================================================
-- Creazione delle tabelle 
-- ================================================================ */

  CREATE TABLE Giocattolo(
  codice      	VARCHAR(20)    PRIMARY KEY,
  nome          	VARCHAR(20),
  classe       	NUMERIC(2)
  );
  
  CREATE TABLE Bambino(
  codice		NUMERIC(5)	PRIMARY KEY,
  nome          	VARCHAR(20),
  cittˆ          	VARCHAR(20)
  );

  CREATE TABLE Richiesta(
  codiceb		NUMERIC(20),
  codiceg        	VARCHAR(20),
  preferenza     	NUMERIC(1),
  primary key(codiceb,codiceg)
  );

/*  ====================================================================
-- Inserimento nelle tabelle
-- ================================================================== */

INSERT INTO Giocattolo(codice,nome,classe) VALUES ('100','Barbi',10);
INSERT INTO Giocattolo(codice,nome,classe) VALUES ('200','PS2',5);
INSERT INTO Giocattolo(codice,nome,classe) VALUES ('300','PS3',8);
INSERT INTO Giocattolo(codice,nome,classe) VALUES ('400','PS4',15);
INSERT INTO Giocattolo(codice,nome,classe) VALUES ('500','Biliardino',12);
INSERT INTO Giocattolo(codice,nome,classe) VALUES ('600','Flipper',20);
INSERT INTO Giocattolo(codice,nome,classe) VALUES ('700','Dama',9);
INSERT INTO Giocattolo(codice,nome,classe) VALUES ('800','Monopoli',1);
INSERT INTO Giocattolo(codice,nome,classe) VALUES ('900','Lego',2);
INSERT INTO Giocattolo(codice,nome,classe) VALUES ('1000','Meccano',2);
INSERT INTO Giocattolo(codice,nome,classe) VALUES ('1100','Trenino',5);
INSERT INTO Giocattolo(codice,nome,classe) VALUES ('1200','Trottola',1);
INSERT INTO Giocattolo(codice,nome,classe) VALUES ('1300','Bicicletta',20);
INSERT INTO Giocattolo(codice,nome,classe) VALUES ('1400','Chimico',15);
INSERT INTO Giocattolo(codice,nome,classe) VALUES ('1500','Scarabeo',2);
INSERT INTO Giocattolo(codice,nome,classe) VALUES ('1600','Wii',13);



INSERT INTO Bambino(codice,nome,cittˆ) VALUES('10','Paolo','Roma');
INSERT INTO Bambino(codice,nome,cittˆ) VALUES('20','Maria','Roma');
INSERT INTO Bambino(codice,nome,cittˆ) VALUES('30','Giovanni','Milano');
INSERT INTO Bambino(codice,nome,cittˆ) VALUES('40','Anna','Palermo');
INSERT INTO Bambino(codice,nome,cittˆ) VALUES('50','Ugo','Firenze');
INSERT INTO Bambino(codice,nome,cittˆ) VALUES('60','Stefania','Roma');
INSERT INTO Bambino(codice,nome,cittˆ) VALUES('70','Antonella','Milano');
INSERT INTO Bambino(codice,nome,cittˆ) VALUES('80','Antonio','Palermo');
INSERT INTO Bambino(codice,nome,cittˆ) VALUES('90','Giuseppe','Genova');
INSERT INTO Bambino(codice,nome,cittˆ) VALUES('15','Giorgio','Firenze');
INSERT INTO Bambino(codice,nome,cittˆ) VALUES('25','Laura','Milano');
INSERT INTO Bambino(codice,nome,cittˆ) VALUES('35','Carlo','Roma');
INSERT INTO Bambino(codice,nome,cittˆ) VALUES('45','Simona','Pisa');
INSERT INTO Bambino(codice,nome,cittˆ) VALUES('55','Luisa','Genova');
INSERT INTO Bambino(codice,nome,cittˆ) VALUES('65','Fabio','Pisa');

INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('10','100',1);
INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('10','200',2);
INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('20','300',3);
INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('15','100',5);
INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('25','400',2);
INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('25','300',1);
INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('30','500',2);
INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('30','700',4);
INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('30','200',3);
INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('40','800',1);
INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('40','1100',5);
INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('40','1200',1);
INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('40','600',3);
INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('45','100',5);
INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('50','900',2);
INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('50','1300',3);
INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('50','500',4);
INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('90','400',2);
INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('90','500',4);
INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('65','200',2);
INSERT INTO Richiesta(codiceb,codiceg,preferenza) VALUES('65','600',3);

