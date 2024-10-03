-- 1
SELECT Targa, Marca FROM Auto 
WHERE Cilindrata > 2000
AND Potenza > 120
;
-- 2
SELECT MAX(Potenza) AS "Valore della potenza maggiore" FROM Auto 
;
-- 3
SELECT MIN(Cilindrata) AS "Valore cilindrata minore" FROM Auto 
;
-- 4
SELECT Proprietari.Nome,Targa FROM Auto, Proprietari
WHERE Auto.CodF = Proprietari.CodF
AND Cilindrata > 2000
AND Potenza > 120
;
-- 5
SELECT SUM(ImportoDelDanno) AS "L’importo totale dei danni" FROM AutoCoinvolte
;
-- 6
SELECT Proprietari.Nome, Targa FROM Auto, Proprietari, Assicurazioni
WHERE Auto.CodF = Proprietari.CodF
AND Auto.CodAss = Assicurazioni.CodAss
AND Cilindrata > 2000
AND Potenza > 120
AND Assicurazioni.Nome = "Sara"
;
-- 7
SELECT Proprietari.Nome, Auto.Targa FROM Auto, Proprietari, Assicurazioni, Sinistro, AutoCoinvolte
WHERE Auto.CodF = Proprietari.CodF
AND Auto.CodAss = Assicurazioni.CodAss
AND AutoCoinvolte.Targa = Auto.Targa
AND AutoCoinvolte.CodS = Sinistro.CodS
AND Assicurazioni.Nome = "Sara"
AND Data = "2024-01-20"
;
-- 8
SELECT MAX(ImportoDelDanno) AS "Importo del danno maggiore" FROM AutoCoinvolte
;
-- 9
SELECT Assicurazioni.Nome, Assicurazioni.Sede,Proprietari.CodF,Proprietari.Nome FROM Auto, Proprietari, Assicurazioni
WHERE Auto.CodF = Proprietari.CodF
AND Auto.CodAss = Assicurazioni.CodAss
AND Assicurazioni.Nome = "Sara"
;
-- 10
SELECT COUNT(*) AS "Numero totale di auto coinvolte in incidenti" FROM AutoCoinvolte

