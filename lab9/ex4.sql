create procedure ex4
@Nume_vechi varchar(30),
@Prenume_vechi varchar(30),
@Nume_nou varchar(30),
@Prenume_nou varchar(30),
@Disciplina varchar(30)

as

IF(select Id_Disciplina from Discipline where Disciplina = @Disciplina) IN 
(select Id_Disciplina from Studenti_Reusita where Id_Profesor = (select Id_Profesor from Profesori 
where Nume_Profesor = @Nume_vechi and Prenume_Profesor = @Prenume_vechi))

BEGIN
update Studenti_Reusita
SET Id_Profesor = (select Id_Profesor from Profesori where Nume_Profesor = @Nume_nou and Prenume_Profesor = @Prenume_nou)
where Id_Profesor = (select Id_Profesor from Profesori where Nume_Profesor = @Nume_vechi and Prenume_Profesor = @Prenume_vechi)

END

ELSE BEGIN
PRINT ' The data type is not accepted'

END
--select * from Studenti_Reusita where Id_Profesor = 109

exec ex4 'Dogar', 'Alexandru','Ilie','Vasile','Retele informatice'



select Id_Disciplina, Id_profesor
from Studenti_Reusita
where Id_Profesor = 109