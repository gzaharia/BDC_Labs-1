CREATE FUNCTION ex8 (@nume_prenume_s VARCHAR(50))
RETURNS TABLE 
AS
RETURN
(SELECT Nume_Student + ' ' + Prenume_Student as Student, Disciplina, Nota, Data_Evaluare
 FROM studenti, discipline, studenti.studenti_reusita
 WHERE studenti.Id_Student = studenti.studenti_reusita.Id_Student
 AND discipline.Id_Disciplina = studenti.studenti_reusita.Id_Disciplina 
 AND Nume_Student + ' ' + Prenume_Student = @nume_prenume_s )