-- 1
SELECT Nom FROM Heros ORDER BY Nom ASC

-- 2
SELECT Nom, PV FROM Heros where PV = 40

-- 3

SELECT COUNT(Nom), PV FROM Heros where PV = 40

--4
SELECT Nom, PV FROM Heros ORDER BY PV ASC

---5

SELECT Nom, MAX(PV) FROM Heros
--6
SELECT SUM(PV) from Heros
--7
SELECT Heros.Nom, CompetenceHeros.Nom FROM Heros JOIN CompetenceHeros ON CompetenceID = Heros.ID;
--8
SELECT * FROM Competence, CompetenceHeros
--9
SELECT * FROM Competence, CompetenceHeros where Effet like "%tranchant%"