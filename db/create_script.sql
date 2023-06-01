-- Step: 01
-- Goal: create database
-- =============================================================================
--  Version       Date:           Author:                     Description: 
-- =============================================================================
--  01            01-06-2023      Vincent van de Merwe            new          
-- =============================================================================
drop database if exists `toets-MVC`;
create database if not exists `toets-MVC`;

-- Step: 02
-- Goal: using database
-- =============================================================================
--  Version       Date:           Author:                     Description: 
-- =============================================================================
--  01            01-06-2023      Vincent van de Merwe            new          
-- =============================================================================
use `toets-MVC`;

-- Step: 03
-- Goal: create table Examen
-- =============================================================================
--  Version       Date:           Author:                     Description: 
-- =============================================================================
--  01            01-06-2023      Vincent van de Merwe            new          
-- =============================================================================

drop table if exists Examen;
create table if not exists Examen (
Id TINYINT UNSIGNED not null auto_increment,
StudentId varchar(20) not null,
Rijschool varchar(50) not null,
Stad varchar(20) not null,
Rijbewijscategorie varchar(10) not null,
Datum date not null,
Uitslag varchar(20) not null,
IsActief bit not null default 1,
OpMerkingen varchar(250) null default null,
DatumAanGemaakt datetime(6) not null,
DatumGewijzigd datetime(6) not null,
CONSTRAINT      PK_Examen_Id   PRIMARY KEY CLUSTERED(Id)
) engine=InnoDB;

-- Step: 04
-- Goal: create table Examinator
-- =============================================================================
--  Version       Date:           Author:                     Description: 
-- =============================================================================
--  01            01-06-2023      Vincent van de Merwe            new          
-- =============================================================================

drop table if exists Examinator;
create table if not exists Examinator (
Id TINYINT UNSIGNED not null auto_increment,
Voornaam varchar(30) not null,
Tussenvoegsel varchar(20) null,
Achternaam varchar(30) not null,
Mobiel varchar(30) not null,
IsActief bit not null default 1,
OpMerkingen varchar(250) null default null,
DatumAanGemaakt datetime(6) not null,
DatumGewijzigd datetime(6) not null,
CONSTRAINT      PK_Examinator_Id   PRIMARY KEY CLUSTERED(Id)
) engine=InnoDB;

-- Step: 05
-- Goal: create table ExamenPerExaminator
-- =============================================================================
--  Version       Date:           Author:                     Description: 
-- =============================================================================
--  01            01-06-2023      Vincent van de Merwe            new          
-- =============================================================================

drop table if exists ExamenPerExaminator;
create table if not exists ExamenPerExaminator (
Id TINYINT UNSIGNED not null auto_increment,
ExamenId tinyint unsigned not null,
ExaminatorId tinyint unsigned not null,
IsActief bit not null default 1,
OpMerkingen varchar(250) null default null,
DatumAanGemaakt datetime(6) not null,
DatumGewijzigd datetime(6) not null,
CONSTRAINT      PK_ExamenPerExaminator_Id   PRIMARY KEY CLUSTERED(Id),
foreign key (ExamenId) references Examen(Id),
foreign key (ExaminatorId) references Examinator(Id)
) engine=InnoDB;

-- Step: 06
-- Goal: insert info in the table Examen
-- =============================================================================
--  Version       Date:           Author:                     Description: 
-- =============================================================================
--  01            01-06-2023      Vincent van de Merwe            new          
-- =============================================================================

INSERT INTO Examen (Id,StudentId,Rijschool,Stad,Rijbewijscategorie,Datum,Uitslag,IsActief,Opmerkingen,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '100234', 'VolGasVooruit', 'Rotterdam', 'B', '2023-04-03', 'Geslaagd', 1, NULL, SYSDATE(6), SYSDATE(6));
INSERT INTO Examen (Id,StudentId,Rijschool,Stad,Rijbewijscategorie,Datum,Uitslag,IsActief,Opmerkingen,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '123432', 'InZijnVierDoorDeBocht', 'Sliedrecht', 'C', '2023-03-01', 'Geslaagd', 1, NULL, SYSDATE(6), SYSDATE(6));
INSERT INTO Examen (Id,StudentId,Rijschool,Stad,Rijbewijscategorie,Datum,Uitslag,IsActief,Opmerkingen,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '103234', 'LinksomRechtsom', 'Dordrecht', 'D', '2023-05-15', 'Geslaagd', 1, NULL, SYSDATE(6), SYSDATE(6));
INSERT INTO Examen (Id,StudentId,Rijschool,Stad,Rijbewijscategorie,Datum,Uitslag,IsActief,Opmerkingen,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '106452', 'OpDeVluchtStrook', 'Zwijndrecht', 'AM', '2023-05-08', 'Gezakt', 1, NULL, SYSDATE(6), SYSDATE(6));
INSERT INTO Examen (Id,StudentId,Rijschool,Stad,Rijbewijscategorie,Datum,Uitslag,IsActief,Opmerkingen,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '104546', 'RechtDoorEnGaan', 'Rotterdam', 'B', '2023-04-17', 'Gezakt', 1, NULL, SYSDATE(6), SYSDATE(6));
INSERT INTO Examen (Id,StudentId,Rijschool,Stad,Rijbewijscategorie,Datum,Uitslag,IsActief,Opmerkingen,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '100333', 'AltijdGeslaagd', 'Dordrecht', 'B', '2023-05-12', 'Geslaagd', 1, NULL, SYSDATE(6), SYSDATE(6));
INSERT INTO Examen (Id,StudentId,Rijschool,Stad,Rijbewijscategorie,Datum,Uitslag,IsActief,Opmerkingen,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '124444', 'RijlesVoorJou', 'Rotterdam', 'B', '2023-04-12', 'Geslaagd', 1, NULL, SYSDATE(6), SYSDATE(6));

-- Step: 06
-- Goal: insert info in the table Examinator
-- =============================================================================
--  Version       Date:           Author:                     Description: 
-- =============================================================================
--  01            01-06-2023      Vincent van de Merwe            new          
-- =============================================================================

INSERT INTO Examinator (Id,Voornaam,Tussenvoegsel,Achternaam,Mobiel,IsActief,Opmerkingen,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, 'Manuel', 'van', 'Meerkeren', '06-28493823', 1, NULL, SYSDATE(6), SYSDATE(6));
INSERT INTO Examinator (Id,Voornaam,Tussenvoegsel,Achternaam,Mobiel,IsActief,Opmerkingen,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, 'Lissette', 'den', 'Dongen', '06-24383299', 1, NULL, SYSDATE(6), SYSDATE(6));
INSERT INTO Examinator (Id,Voornaam,Tussenvoegsel,Achternaam,Mobiel,IsActief,Opmerkingen,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, 'Jurswailly', null, 'Luciano', '06-48293846', 1, NULL, SYSDATE(6), SYSDATE(6));
INSERT INTO Examinator (Id,Voornaam,Tussenvoegsel,Achternaam,Mobiel,IsActief,Opmerkingen,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, 'Naswha', null, 'Salawi', '06-34291219', 1, NULL, SYSDATE(6), SYSDATE(6));

-- Step: 07
-- Goal: insert info in the table ExamenPerExaminator
-- =============================================================================
--  Version       Date:           Author:                     Description: 
-- =============================================================================
--  01            01-06-2023      Vincent van de Merwe            new          
-- =============================================================================

INSERT INTO ExamenPerExaminator (Id,ExamenId,ExaminatorId,IsActief,Opmerkingen,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, 1, 3, 1, NULL, SYSDATE(6), SYSDATE(6));
INSERT INTO ExamenPerExaminator (Id,ExamenId,ExaminatorId,IsActief,Opmerkingen,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, 3, 3, 1, NULL, SYSDATE(6), SYSDATE(6));
INSERT INTO ExamenPerExaminator (Id,ExamenId,ExaminatorId,IsActief,Opmerkingen,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, 2, 2, 1, NULL, SYSDATE(6), SYSDATE(6));
INSERT INTO ExamenPerExaminator (Id,ExamenId,ExaminatorId,IsActief,Opmerkingen,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, 4, 1, 1, NULL, SYSDATE(6), SYSDATE(6));
INSERT INTO ExamenPerExaminator (Id,ExamenId,ExaminatorId,IsActief,Opmerkingen,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, 7, 3, 1, NULL, SYSDATE(6), SYSDATE(6));
INSERT INTO ExamenPerExaminator (Id,ExamenId,ExaminatorId,IsActief,Opmerkingen,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, 6, 2, 1, NULL, SYSDATE(6), SYSDATE(6));
INSERT INTO ExamenPerExaminator (Id,ExamenId,ExaminatorId,IsActief,Opmerkingen,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, 5, 4, 1, NULL, SYSDATE(6), SYSDATE(6));