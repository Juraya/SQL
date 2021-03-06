--------------------------------------------------------
--  Fichier cr�� - vendredi-octobre-23-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CLIENTS
--------------------------------------------------------

  CREATE TABLE "CLIENTS" 
   (	"NUMCLIENT" CHAR(2 BYTE), 
	"NOMCLIENT" VARCHAR2(30 BYTE), 
	"PRENOMCLIENT" VARCHAR2(30 BYTE), 
	"CATEGORIECLIENT" VARCHAR2(30 BYTE), 
	"CODEVILLE" CHAR(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DIPLOMES
--------------------------------------------------------

  CREATE TABLE "DIPLOMES" 
   (	"REFERENCEDIPLOME" CHAR(2 BYTE), 
	"NOMDIPLOME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ETREAFFECTE
--------------------------------------------------------

  CREATE TABLE "ETREAFFECTE" 
   (	"CODEPROJET" CHAR(2 BYTE), 
	"NUMSALARIE" CHAR(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table POSSEDER
--------------------------------------------------------

  CREATE TABLE "POSSEDER" 
   (	"REFERENCEDIPLOME" CHAR(2 BYTE), 
	"NUMSALARIE" CHAR(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROJETS
--------------------------------------------------------

  CREATE TABLE "PROJETS" 
   (	"CODEPROJET" CHAR(2 BYTE), 
	"NOMPROJET" VARCHAR2(30 BYTE), 
	"BUDGETPROJET" NUMBER, 
	"NUMCLIENT" CHAR(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SALARIES
--------------------------------------------------------

  CREATE TABLE "SALARIES" 
   (	"NUMSALARIE" CHAR(2 BYTE), 
	"NOMSALARIE" VARCHAR2(30 BYTE), 
	"PRENOMSALARIE" VARCHAR2(30 BYTE), 
	"SALAIRESALARIE" NUMBER, 
	"NUMSALARIECHEF" CHAR(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TRAINS
--------------------------------------------------------

  CREATE TABLE "TRAINS" 
   (	"CODEVILLEDEPART" CHAR(2 BYTE), 
	"CODEVILLEARRIVEE" CHAR(2 BYTE), 
	"TEMPS" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VILLES
--------------------------------------------------------

  CREATE TABLE "VILLES" 
   (	"CODEVILLE" CHAR(2 BYTE), 
	"NOMVILLE" VARCHAR2(30 BYTE), 
	"DEPARTEMENTVILLE" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into CLIENTS
SET DEFINE OFF;
Insert into CLIENTS (NUMCLIENT,NOMCLIENT,PRENOMCLIENT,CATEGORIECLIENT,CODEVILLE) values ('C1','Bon','Jean','Casual','V1');
Insert into CLIENTS (NUMCLIENT,NOMCLIENT,PRENOMCLIENT,CATEGORIECLIENT,CODEVILLE) values ('C2','Portal','Michel','Casual','V2');
Insert into CLIENTS (NUMCLIENT,NOMCLIENT,PRENOMCLIENT,CATEGORIECLIENT,CODEVILLE) values ('C3','Basmati','Marie','Bon','V3');
Insert into CLIENTS (NUMCLIENT,NOMCLIENT,PRENOMCLIENT,CATEGORIECLIENT,CODEVILLE) values ('C4','Zeblouze','Agathe','Bon','V4');
Insert into CLIENTS (NUMCLIENT,NOMCLIENT,PRENOMCLIENT,CATEGORIECLIENT,CODEVILLE) values ('C5','Zepower','Agathe','Gros','V5');
Insert into CLIENTS (NUMCLIENT,NOMCLIENT,PRENOMCLIENT,CATEGORIECLIENT,CODEVILLE) values ('C6','Abel','Zakaria','Gros','V6');
Insert into CLIENTS (NUMCLIENT,NOMCLIENT,PRENOMCLIENT,CATEGORIECLIENT,CODEVILLE) values ('C7','Cessaite','Jean','Casual','V6');
Insert into CLIENTS (NUMCLIENT,NOMCLIENT,PRENOMCLIENT,CATEGORIECLIENT,CODEVILLE) values ('C8','Cehuite','Marie','Casual','V5');
Insert into CLIENTS (NUMCLIENT,NOMCLIENT,PRENOMCLIENT,CATEGORIECLIENT,CODEVILLE) values ('C9','Ceneuf','Jean','Bon','V4');
Insert into CLIENTS (NUMCLIENT,NOMCLIENT,PRENOMCLIENT,CATEGORIECLIENT,CODEVILLE) values ('CA','Cedix','Marie','Bon','V3');
Insert into CLIENTS (NUMCLIENT,NOMCLIENT,PRENOMCLIENT,CATEGORIECLIENT,CODEVILLE) values ('CB','Cehonze','Jean','Gros','V2');
Insert into CLIENTS (NUMCLIENT,NOMCLIENT,PRENOMCLIENT,CATEGORIECLIENT,CODEVILLE) values ('CC','Cedouze','Marie','Gros','V1');
REM INSERTING into DIPLOMES
SET DEFINE OFF;
Insert into DIPLOMES (REFERENCEDIPLOME,NOMDIPLOME) values ('D1','BAC S');
Insert into DIPLOMES (REFERENCEDIPLOME,NOMDIPLOME) values ('D2','BAC L');
Insert into DIPLOMES (REFERENCEDIPLOME,NOMDIPLOME) values ('D3','BAC ES');
Insert into DIPLOMES (REFERENCEDIPLOME,NOMDIPLOME) values ('D4','DUT');
Insert into DIPLOMES (REFERENCEDIPLOME,NOMDIPLOME) values ('D5','BTS');
Insert into DIPLOMES (REFERENCEDIPLOME,NOMDIPLOME) values ('D6','Licence');
Insert into DIPLOMES (REFERENCEDIPLOME,NOMDIPLOME) values ('D7','Licence pro');
Insert into DIPLOMES (REFERENCEDIPLOME,NOMDIPLOME) values ('D8','Master');
Insert into DIPLOMES (REFERENCEDIPLOME,NOMDIPLOME) values ('D9','Master pro');
REM INSERTING into ETREAFFECTE
SET DEFINE OFF;
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P1','S3');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P1','S4');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P1','S5');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P1','S6');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P1','S7');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P1','S8');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P1','S9');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P1','SA');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P1','SB');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P1','SC');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P1','SD');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P1','SE');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P1','SF');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P1','SG');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P1','SH');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P2','S3');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P2','S4');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P2','S5');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P2','S6');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P2','S7');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P2','S8');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P2','S9');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P2','SA');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P3','S3');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P3','S4');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P3','S5');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P3','S6');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P3','S7');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P3','S8');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P3','S9');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P3','SA');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P3','SB');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P3','SC');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P3','SD');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P3','SE');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P3','SF');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P3','SG');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P3','SH');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P4','S3');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P4','S4');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P4','S5');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P4','S6');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P4','S7');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P4','S8');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P4','S9');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P4','SA');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P5','SB');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P5','SC');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P5','SD');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P5','SE');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P5','SF');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P5','SG');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P5','SH');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P6','S3');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P6','S4');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P6','S5');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P6','S6');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P6','S7');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P6','S8');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P6','S9');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P6','SA');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P6','SB');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P6','SC');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P7','S3');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P7','S4');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P7','S5');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P7','S6');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P7','S7');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P7','S8');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P7','S9');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P7','SD');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P7','SE');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P7','SF');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P7','SG');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P7','SH');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P8','SA');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P8','SB');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P8','SC');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P8','SD');
Insert into ETREAFFECTE (CODEPROJET,NUMSALARIE) values ('P8','SE');
REM INSERTING into POSSEDER
SET DEFINE OFF;
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D1','S1');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D1','S2');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D1','S3');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D1','S4');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D1','S5');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D1','S6');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D1','S7');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D1','S8');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D1','S9');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D1','SA');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D3','SB');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D3','SC');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D3','SD');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D3','SE');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D3','SF');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D3','SG');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D3','SH');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D5','S1');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D5','S2');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D5','S3');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D5','S4');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D5','S5');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D5','S6');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D5','S7');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D7','S8');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D7','S9');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D7','SA');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D7','SB');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D7','SC');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D7','SD');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D7','SE');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D7','SF');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D7','SG');
Insert into POSSEDER (REFERENCEDIPLOME,NUMSALARIE) values ('D7','SH');
REM INSERTING into PROJETS
SET DEFINE OFF;
Insert into PROJETS (CODEPROJET,NOMPROJET,BUDGETPROJET,NUMCLIENT) values ('P1','Epic project','25000','C1');
Insert into PROJETS (CODEPROJET,NOMPROJET,BUDGETPROJET,NUMCLIENT) values ('P2','Projet X','50000','C2');
Insert into PROJETS (CODEPROJET,NOMPROJET,BUDGETPROJET,NUMCLIENT) values ('P3','Projet RAR','75000','C3');
Insert into PROJETS (CODEPROJET,NOMPROJET,BUDGETPROJET,NUMCLIENT) values ('P4','Projet Envie','25000','C4');
Insert into PROJETS (CODEPROJET,NOMPROJET,BUDGETPROJET,NUMCLIENT) values ('P5','Projet Anvert','50000','C5');
Insert into PROJETS (CODEPROJET,NOMPROJET,BUDGETPROJET,NUMCLIENT) values ('P6','Projet Station','75000','C6');
Insert into PROJETS (CODEPROJET,NOMPROJET,BUDGETPROJET,NUMCLIENT) values ('P7','Projet Depierre','80000','CB');
Insert into PROJETS (CODEPROJET,NOMPROJET,BUDGETPROJET,NUMCLIENT) values ('P8','Projet Pasfaim','85000','CC');
REM INSERTING into SALARIES
SET DEFINE OFF;
Insert into SALARIES (NUMSALARIE,NOMSALARIE,PRENOMSALARIE,SALAIRESALARIE,NUMSALARIECHEF) values ('S1','Paidaijai','Marie','4000',null);
Insert into SALARIES (NUMSALARIE,NOMSALARIE,PRENOMSALARIE,SALAIRESALARIE,NUMSALARIECHEF) values ('S2','Responsable','Jean-Michel','3500','S1');
Insert into SALARIES (NUMSALARIE,NOMSALARIE,PRENOMSALARIE,SALAIRESALARIE,NUMSALARIECHEF) values ('S3','Random','Jean','2000','S2');
Insert into SALARIES (NUMSALARIE,NOMSALARIE,PRENOMSALARIE,SALAIRESALARIE,NUMSALARIECHEF) values ('S4','Haissequatre','Marie','2000','S2');
Insert into SALARIES (NUMSALARIE,NOMSALARIE,PRENOMSALARIE,SALAIRESALARIE,NUMSALARIECHEF) values ('S5','Haissecinq','Michel','2000','S2');
Insert into SALARIES (NUMSALARIE,NOMSALARIE,PRENOMSALARIE,SALAIRESALARIE,NUMSALARIECHEF) values ('S6','Stick�','Sophie','2000','S2');
Insert into SALARIES (NUMSALARIE,NOMSALARIE,PRENOMSALARIE,SALAIRESALARIE,NUMSALARIECHEF) values ('S7','Bono','Jean','2000','S2');
Insert into SALARIES (NUMSALARIE,NOMSALARIE,PRENOMSALARIE,SALAIRESALARIE,NUMSALARIECHEF) values ('S8','A','A','2000','S2');
Insert into SALARIES (NUMSALARIE,NOMSALARIE,PRENOMSALARIE,SALAIRESALARIE,NUMSALARIECHEF) values ('S9','A','A','2000','S2');
Insert into SALARIES (NUMSALARIE,NOMSALARIE,PRENOMSALARIE,SALAIRESALARIE,NUMSALARIECHEF) values ('SA','A','A','2000','S2');
Insert into SALARIES (NUMSALARIE,NOMSALARIE,PRENOMSALARIE,SALAIRESALARIE,NUMSALARIECHEF) values ('SB','A','A','2000','S2');
Insert into SALARIES (NUMSALARIE,NOMSALARIE,PRENOMSALARIE,SALAIRESALARIE,NUMSALARIECHEF) values ('SC','A','A','2000','S2');
Insert into SALARIES (NUMSALARIE,NOMSALARIE,PRENOMSALARIE,SALAIRESALARIE,NUMSALARIECHEF) values ('SD','A','A','2000','S2');
Insert into SALARIES (NUMSALARIE,NOMSALARIE,PRENOMSALARIE,SALAIRESALARIE,NUMSALARIECHEF) values ('SE','A','A','2000','S2');
Insert into SALARIES (NUMSALARIE,NOMSALARIE,PRENOMSALARIE,SALAIRESALARIE,NUMSALARIECHEF) values ('SF','A','A','2000','S2');
Insert into SALARIES (NUMSALARIE,NOMSALARIE,PRENOMSALARIE,SALAIRESALARIE,NUMSALARIECHEF) values ('SG','A','A','2000','S2');
Insert into SALARIES (NUMSALARIE,NOMSALARIE,PRENOMSALARIE,SALAIRESALARIE,NUMSALARIECHEF) values ('SH','A','A','2000','S2');
REM INSERTING into TRAINS
SET DEFINE OFF;
Insert into TRAINS (CODEVILLEDEPART,CODEVILLEARRIVEE,TEMPS) values ('V1','V2','1');
Insert into TRAINS (CODEVILLEDEPART,CODEVILLEARRIVEE,TEMPS) values ('V1','V3','2');
Insert into TRAINS (CODEVILLEDEPART,CODEVILLEARRIVEE,TEMPS) values ('V1','V4','3');
Insert into TRAINS (CODEVILLEDEPART,CODEVILLEARRIVEE,TEMPS) values ('V1','V5','4');
Insert into TRAINS (CODEVILLEDEPART,CODEVILLEARRIVEE,TEMPS) values ('V1','V6','5');
Insert into TRAINS (CODEVILLEDEPART,CODEVILLEARRIVEE,TEMPS) values ('V2','V3','1');
Insert into TRAINS (CODEVILLEDEPART,CODEVILLEARRIVEE,TEMPS) values ('V2','V4','2');
Insert into TRAINS (CODEVILLEDEPART,CODEVILLEARRIVEE,TEMPS) values ('V2','V5','3');
Insert into TRAINS (CODEVILLEDEPART,CODEVILLEARRIVEE,TEMPS) values ('V2','V6','4');
Insert into TRAINS (CODEVILLEDEPART,CODEVILLEARRIVEE,TEMPS) values ('V3','V4','1');
Insert into TRAINS (CODEVILLEDEPART,CODEVILLEARRIVEE,TEMPS) values ('V3','V5','2');
Insert into TRAINS (CODEVILLEDEPART,CODEVILLEARRIVEE,TEMPS) values ('V3','V6','3');
REM INSERTING into VILLES
SET DEFINE OFF;
Insert into VILLES (CODEVILLE,NOMVILLE,DEPARTEMENTVILLE) values ('V1','Montpellier','Herault');
Insert into VILLES (CODEVILLE,NOMVILLE,DEPARTEMENTVILLE) values ('V2','Paris','Region Parisienne');
Insert into VILLES (CODEVILLE,NOMVILLE,DEPARTEMENTVILLE) values ('V3','Marseille','Bouches-du-Rhone');
Insert into VILLES (CODEVILLE,NOMVILLE,DEPARTEMENTVILLE) values ('V4','Nimes','Gard');
Insert into VILLES (CODEVILLE,NOMVILLE,DEPARTEMENTVILLE) values ('V5','Juvignac','Herault');
Insert into VILLES (CODEVILLE,NOMVILLE,DEPARTEMENTVILLE) values ('V6','Ales','Gard');
--------------------------------------------------------
--  DDL for Index PK_TRAINS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_TRAINS" ON "TRAINS" ("CODEVILLEDEPART", "CODEVILLEARRIVEE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_CLIENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CLIENT" ON "CLIENTS" ("NUMCLIENT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_SALARIE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_SALARIE" ON "SALARIES" ("NUMSALARIE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_DIPLOME
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_DIPLOME" ON "DIPLOMES" ("REFERENCEDIPLOME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PROJET
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PROJET" ON "PROJETS" ("CODEPROJET") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_POSSEDER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_POSSEDER" ON "POSSEDER" ("REFERENCEDIPLOME", "NUMSALARIE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_VILLES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_VILLES" ON "VILLES" ("CODEVILLE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_AFFECTE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_AFFECTE" ON "ETREAFFECTE" ("CODEPROJET", "NUMSALARIE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ETREAFFECTE
--------------------------------------------------------

  ALTER TABLE "ETREAFFECTE" ADD CONSTRAINT "PK_AFFECTE" PRIMARY KEY ("CODEPROJET", "NUMSALARIE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table POSSEDER
--------------------------------------------------------

  ALTER TABLE "POSSEDER" ADD CONSTRAINT "PK_POSSEDER" PRIMARY KEY ("REFERENCEDIPLOME", "NUMSALARIE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROJETS
--------------------------------------------------------

  ALTER TABLE "PROJETS" ADD CONSTRAINT "PK_PROJET" PRIMARY KEY ("CODEPROJET")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TRAINS
--------------------------------------------------------

  ALTER TABLE "TRAINS" ADD CONSTRAINT "PK_TRAINS" PRIMARY KEY ("CODEVILLEDEPART", "CODEVILLEARRIVEE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DIPLOMES
--------------------------------------------------------

  ALTER TABLE "DIPLOMES" ADD CONSTRAINT "PK_DIPLOME" PRIMARY KEY ("REFERENCEDIPLOME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CLIENTS
--------------------------------------------------------

  ALTER TABLE "CLIENTS" ADD CONSTRAINT "PK_CLIENT" PRIMARY KEY ("NUMCLIENT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VILLES
--------------------------------------------------------

  ALTER TABLE "VILLES" ADD CONSTRAINT "PK_VILLES" PRIMARY KEY ("CODEVILLE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SALARIES
--------------------------------------------------------

  ALTER TABLE "SALARIES" ADD CONSTRAINT "PK_SALARIE" PRIMARY KEY ("NUMSALARIE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CLIENTS
--------------------------------------------------------

  ALTER TABLE "CLIENTS" ADD CONSTRAINT "FK_VILLE" FOREIGN KEY ("CODEVILLE")
	  REFERENCES "VILLES" ("CODEVILLE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ETREAFFECTE
--------------------------------------------------------

  ALTER TABLE "ETREAFFECTE" ADD CONSTRAINT "FK_AFFECT1" FOREIGN KEY ("CODEPROJET")
	  REFERENCES "PROJETS" ("CODEPROJET") ENABLE;
  ALTER TABLE "ETREAFFECTE" ADD CONSTRAINT "FK_AFFECT2" FOREIGN KEY ("NUMSALARIE")
	  REFERENCES "SALARIES" ("NUMSALARIE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POSSEDER
--------------------------------------------------------

  ALTER TABLE "POSSEDER" ADD CONSTRAINT "FK_NUMSALARIE" FOREIGN KEY ("NUMSALARIE")
	  REFERENCES "SALARIES" ("NUMSALARIE") ENABLE;
  ALTER TABLE "POSSEDER" ADD CONSTRAINT "FK_REFDIPLOME" FOREIGN KEY ("REFERENCEDIPLOME")
	  REFERENCES "DIPLOMES" ("REFERENCEDIPLOME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROJETS
--------------------------------------------------------

  ALTER TABLE "PROJETS" ADD CONSTRAINT "FK_NUMCLIENT" FOREIGN KEY ("NUMCLIENT")
	  REFERENCES "CLIENTS" ("NUMCLIENT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALARIES
--------------------------------------------------------

  ALTER TABLE "SALARIES" ADD CONSTRAINT "FK_CHEF" FOREIGN KEY ("NUMSALARIECHEF")
	  REFERENCES "SALARIES" ("NUMSALARIE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TRAINS
--------------------------------------------------------

  ALTER TABLE "TRAINS" ADD CONSTRAINT "FK_VILLEARR" FOREIGN KEY ("CODEVILLEARRIVEE")
	  REFERENCES "VILLES" ("CODEVILLE") ENABLE;
  ALTER TABLE "TRAINS" ADD CONSTRAINT "FK_VILLEDEP" FOREIGN KEY ("CODEVILLEDEPART")
	  REFERENCES "VILLES" ("CODEVILLE") ENABLE;
