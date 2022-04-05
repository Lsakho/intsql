create table Armes (
`ID` tinyint(1) NOT NULL,
`HerosID` tinyint(1) NOT NULL,
`Nom` varchar(50) NOT NULL,
`Type` varchar(20) NOT NULL,
`Degat` tinyint(2) NOT NULL
);
ALTER TABLE `Armes` ADD PRIMARY KEY( `ID`);
ID INT NOT NULL AUTO_INCREMENT;
FOREIGN KEY (ID) REFERENCES Heros(HerosID)



create table Heros (

`ID` tinyint(1) NOT NULL,
`Nom` varchar(50) NOT NULL,
`PV` tinyint(2) NOT NULL,
`Bonus` tinyint(2) NOT NULL,
`Defense` tinyint(2) NOT NULL,
`ArmeEnMain` tinyint(2) DEFAULT NULL,
`Statut` varchar(100) NOT NULL,
`Immunite` varchar(20) NOT NULL
);
ALTER TABLE `Heros` ADD PRIMARY KEY( `ID`);
ID INT NOT NULL AUTO_INCREMENT;




create table Competences (
`ID` tinyint(1) NOT NULL,
`Type` ENUM('Statut', 'PV', 'Defense',
'Bonus', 'ArmeEnMain', 'Immunite'),
`Effet` varchar(50)
);
ALTER TABLE `Competences` ADD PRIMARY KEY( `ID`);
ID INT NOT NULL AUTO_INCREMENT;



INSERT INTO  Armes (Nom, Type, Degat)
VALUES ('Une batte', 'en mousse', '0');

INSERT INTO  Armes (Nom, Type, Degat)
VALUES ('Vanne de Liujen', 'destablisante', '10');

INSERT INTO  Armes (Nom, Type, Degat)
VALUES ('Microsoft ', 'effrayante', '20');

INSERT INTO  Armes (Nom, Type, Degat)
VALUES ('feuille ', 'tranchant',  '5');

INSERT INTO  Armes (Nom, Type, Degat)
VALUES ('Caillou ', 'Contondant',  '5');

INSERT INTO  Armes (Nom, Type, Degat)
VALUES ('Ciseau ', 'percant',  '5');

INSERT INTO  Heros (Nom, Statut, PV, Bonus, ArmeEnMain, Immunite )
VALUES ('Comar ', 'joyeux',  '40', '2', 'null', 'degats mousse');

INSERT INTO  Heros (Nom, Statut, PV, Bonus, ArmeEnMain, Defense, Immunite )
VALUES ('kinderf ', 'combatif',  '35', '14', 'null', '5', 'null');

INSERT INTO  Heros (Nom, Statut, PV, Bonus, ArmeEnMain, Immunite )
VALUES ('luijen ', 'flegme',  '45', '5', 'null', 'degats destabilisant');

