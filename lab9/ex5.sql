CREATE PROCEDURE ex5
@discipline VARCHAR(50)
AS
DECLARE @best TABLE (Id_Student int, Media float)
INSERT INTO @best
	SELECT TOP (3) studenti.studenti_reusita.Id_Student, AVG(cast (Nota as float)) as Media
	FROM studenti.studenti_reusita, discipline
	WHERE discipline.Id_Disciplina = studenti.studenti_reusita.Id_Disciplina
	AND discipline.Disciplina = @discipline
	GROUP BY studenti.studenti_reusita.Id_Student
	ORDER BY Media desc		

SELECT cod_grupa, nume_student+' '+Prenume_Student as Nume, disciplina, nota AS Nota_Veche, iif(nota > 9, 10, nota + 1) AS Nota_Noua 
    FROM studenti.studenti_reusita, discipline, grupe, studenti
	WHERE discipline.id_disciplina = studenti.studenti_reusita.id_disciplina
	AND grupe.Id_Grupa = studenti.studenti_reusita.Id_Grupa
	AND  studenti.Id_Student = studenti.studenti_reusita.Id_Student
	AND studenti.Id_Student in (select Id_Student from @best)
	AND Disciplina = @discipline
	AND Tip_Evaluare = 'Examen'

UPDATE studenti.studenti_reusita
SET studenti.studenti_reusita.Nota = (CASE WHEN nota >= 9 THEN 10 ELSE nota + 1 END)
WHERE Tip_Evaluare = 'Examen'
AND Id_Disciplina = (Select Id_Disciplina from discipline where disciplina=@discipline)
AND Id_Student in (select Id_Student from @best)

exec ex5 @discipline = 'Baze de date'