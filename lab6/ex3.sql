USE universitatea

ALTER TABLE grupe
ADD Sef_grupa INT, Prof_Indrumator INT

UPDATE grupe
SET grupe.Sef_grupa = (SELECT TOP(1) Id_Student
FROM studenti_reusita
WHERE studenti_reusita.Id_Grupa = grupe.Id_Grupa
GROUP BY Id_Student
ORDER BY AVG(Nota) DESC)

ALTER TABLE grupe
ADD UNIQUE (Sef_grupa)

UPDATE grupe
SET grupe.Prof_Indrumator = (SELECT TOP(1) Id_Profesor
FROM studenti_reusita
WHERE studenti_reusita.Id_Grupa = grupe.Id_Grupa
GROUP BY Id_Profesor
ORDER BY COUNT(Id_Disciplina) DESC, Id_Profesor DESC)

ALTER TABLE grupe
ADD UNIQUE (Prof_Indrumator)