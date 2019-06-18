	
/* ===================================================================
-- Eliminazione dello schema e definizione dello schema stesso 
=================================================================== */

   DROP SCHEMA IF EXISTS esame;
   CREATE SCHEMA esame; 
   USE esame;

/* ===================================================================
-- Creazione delle tabelle 
-- ================================================================ */

  CREATE TABLE Giocatore(
  codice                VARCHAR(20)    PRIMARY KEY,
  nome                  VARCHAR(20),
  categoria             NUMERIC(2)
  );
  
  CREATE TABLE Partita(
  numero		 NUMERIC(5)	PRIMARY KEY,
  anno			 NUMERIC(4)    NOT NULL,
  codvincente           VARCHAR(20)  NOT NULL,
  codperdente           VARCHAR(20)  NOT NULL,
  setvintig1	   	 NUMERIC(1)   NOT NULL,
  setvintig2	   	 NUMERIC(1)   NOT NULL
  );

 
/*  ====================================================================
-- Inserimento di istanze nelle tabelle
-- ================================================================== */

INSERT INTO Giocatore (codice,nome,categoria) VALUES ('100','Federer',10);
INSERT INTO Giocatore (codice,nome,categoria) VALUES ('200','Djokovic',10);
INSERT INTO Giocatore (codice,nome,categoria) VALUES ('300','Nadal',10);
INSERT INTO Giocatore (codice,nome,categoria) VALUES ('400','Murray',10);
INSERT INTO Giocatore (codice,nome,categoria) VALUES ('500','Wawrinka',9);
INSERT INTO Giocatore (codice,nome,categoria) VALUES ('600','Nishikori',9);
INSERT INTO Giocatore (codice,nome,categoria) VALUES ('700','Ferrer',9);
INSERT INTO Giocatore (codice,nome,categoria) VALUES ('800','Berdich',9);
INSERT INTO Giocatore (codice,nome,categoria) VALUES ('900','Gasquet',9);
INSERT INTO Giocatore (codice,nome,categoria) VALUES ('1000','Tsonga',9);
INSERT INTO Giocatore (codice,nome,categoria) VALUES ('1100','Cilic',8);
INSERT INTO Giocatore (codice,nome,categoria) VALUES ('1200','Fognini',8);
INSERT INTO Giocatore (codice,nome,categoria) VALUES ('1300','Seppi',8);
INSERT INTO Giocatore (codice,nome,categoria) VALUES ('1400','Lorenzi',1);
INSERT INTO Giocatore (codice,nome,categoria) VALUES ('1500','Thiem',2);
INSERT INTO Giocatore (codice,nome,categoria) VALUES ('1600','Chardy',3);



INSERT INTO Partita (numero,anno,codvincente,codperdente,setvintig1,setvintig2) VALUES (1,2015,'100','200',2,1);
INSERT INTO Partita (numero,anno,codvincente,codperdente,setvintig1,setvintig2) VALUES (2,2015,'200','100',2,0);
INSERT INTO Partita (numero,anno,codvincente,codperdente,setvintig1,setvintig2) VALUES (3,2014,'200','100',2,1);
INSERT INTO Partita (numero,anno,codvincente,codperdente,setvintig1,setvintig2) VALUES (4,2013,'100','300',2,1);
INSERT INTO Partita (numero,anno,codvincente,codperdente,setvintig1,setvintig2) VALUES (5,2010,'400','1200',2,0);
INSERT INTO Partita (numero,anno,codvincente,codperdente,setvintig1,setvintig2) VALUES (6,2011,'100','300',2,1);
INSERT INTO Partita (numero,anno,codvincente,codperdente,setvintig1,setvintig2) VALUES (7,1999,'1200','900',2,0);
INSERT INTO Partita (numero,anno,codvincente,codperdente,setvintig1,setvintig2) VALUES (8,1996,'1000','800',2,1);
INSERT INTO Partita (numero,anno,codvincente,codperdente,setvintig1,setvintig2) VALUES (9,2006,'500','600',2,1);
INSERT INTO Partita (numero,anno,codvincente,codperdente,setvintig1,setvintig2) VALUES (10,2008,'1300','1200',2,0);
INSERT INTO Partita (numero,anno,codvincente,codperdente,setvintig1,setvintig2) VALUES (11,2001,'1400','700',2,0);
INSERT INTO Partita (numero,anno,codvincente,codperdente,setvintig1,setvintig2) VALUES (12,2004,'1400','700',2,1);
INSERT INTO Partita (numero,anno,codvincente,codperdente,setvintig1,setvintig2) VALUES (13,2003,'1600','400',2,0);
INSERT INTO Partita (numero,anno,codvincente,codperdente,setvintig1,setvintig2) VALUES (14,1998,'1600','200',2,1);
