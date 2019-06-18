/* ===================================================================
-- Eliminazione dello schema e definizione dello schema stesso 
=================================================================== */

   DROP SCHEMA IF EXISTS esame;
   CREATE SCHEMA esame; 
   USE esame;

/* ===================================================================
-- Creazione delle tabelle 
-- ================================================================ */

  CREATE TABLE Traduttore(
  codice                NUMERIC(5)    PRIMARY KEY,
  nome                  VARCHAR(20) NOT NULL,
  cognome             VARCHAR(20) NOT NULL,
  annoNascita        NUMERIC(4) NOT NULL,
  madrelingua      VARCHAR(20) NOT NULL
  );
  
  CREATE TABLE Traduzione(
  codice		 NUMERIC(5)	PRIMARY KEY,
  brano		VARCHAR(30) NOT NULL,
  codTraduttore           NUMERIC(5) NOT NULL,
  linguaOrigine           VARCHAR(20) NOT NULL,
  linguaDestinazione  VARCHAR(20) NOT NULL
);

 
/*  ====================================================================
-- Inserimento di istanze nelle tabelle
-- ================================================================== */

INSERT INTO Traduttore (codice,nome,cognome,annoNascita,madrelingua) VALUES (100,'Paolo', 'Rossi',1981, 'italiano');
INSERT INTO Traduttore (codice,nome,cognome,annoNascita,madrelingua) VALUES 
(200, 'Anna', 'Bianchi',1980, 'italiano');
INSERT INTO Traduttore (codice,nome,cognome,annoNascita,madrelingua) VALUES (300, 'Ugo', 'Grigi',1974, 'inglese');
INSERT INTO Traduttore (codice,nome,cognome,annoNascita,madrelingua) VALUES (400, 'Mario', 'Gialli',1978, 'francese');
INSERT INTO Traduttore (codice,nome,cognome,annoNascita,madrelingua) VALUES (500, 'Mario', 'Gialli',1980, 'spagnolo');


INSERT INTO Traduzione (codice,brano,codTraduttore,linguaOrigine,linguaDestinazione) VALUES (1000,'Promessi sposi', 100, 'italiano','francese');
INSERT INTO Traduzione (codice,brano,codTraduttore,linguaOrigine,linguaDestinazione) VALUES (1001,'Macbeth', 200,'inglese','italiano');
INSERT INTO Traduzione (codice,brano,codTraduttore,linguaOrigine,linguaDestinazione) VALUES (1002, 'Promessi sposi', 200, 'cinese','russo');
INSERT INTO Traduzione (codice,brano,codTraduttore,linguaOrigine,linguaDestinazione) VALUES (1003, 'Macbeth', 500, 'cinese','russo');
INSERT INTO Traduzione (codice,brano,codTraduttore,linguaOrigine,linguaDestinazione) VALUES (1004, 'Macbeth', 300, 'cinese','russo');
INSERT INTO Traduzione (codice,brano,codTraduttore,linguaOrigine,linguaDestinazione) VALUES (1005,'Moby Dick', 100, 'inglese','italiano');
INSERT INTO Traduzione (codice,brano,codTraduttore,linguaOrigine,linguaDestinazione) VALUES (1006,'La gloria', 100, 'inglese','italiano');
INSERT INTO Traduzione (codice,brano,codTraduttore,linguaOrigine,linguaDestinazione) VALUES (1007,'La gloria', 200, 'francese','italiano');
INSERT INTO Traduzione (codice,brano,codTraduttore,linguaOrigine,linguaDestinazione) VALUES (1008,'La gloria', 500, 'italiano','portoghese');
INSERT INTO Traduzione (codice,brano,codTraduttore,linguaOrigine,linguaDestinazione) VALUES (1009,'La gloria', 300, 'italiano','spagnolo');
INSERT INTO Traduzione (codice,brano,codTraduttore,linguaOrigine,linguaDestinazione) VALUES (1010,'Moby Dick', 200, 'inglese','portoghese');
