CREATE FUNCTION ex9 (@cod_grupa VARCHAR(10), @is_good VARCHAR(20))
RETURNS @Test Table (Cod_Grupa varchar(10), Student varchar (100), Media decimal(4,2), Reusita varchar(20))
AS
begin

if @is_good = 'sarguincios'
begin
insert into @Test

SELECT top (1) Cod_Grupa, Nume_Student + ' ' + Prenume_Student as Student,
		 CAST(AVG( Nota * 1.0) as decimal (4,2)) as Media, @is_good
 FROM grupe,studenti, studenti.studenti_reusita
 WHERE grupe.Id_Grupa = studenti.studenti_reusita.Id_Grupa
 AND studenti.Id_Student = studenti.studenti_reusita.Id_Student
 AND Cod_Grupa = @cod_grupa
 GROUP BY Cod_Grupa, Nume_Student, Prenume_Student
 Order by Media desc
 end

 else
begin
if @is_good = 'slab'
 insert into @Test
SELECT top (1) Cod_Grupa, Nume_Student + ' ' + Prenume_Student as Student,
		 CAST(AVG( Nota * 1.0) as decimal (4,2)) as Media, @is_good
 FROM grupe,studenti, studenti.studenti_reusita
 WHERE grupe.Id_Grupa = studenti.studenti_reusita.Id_Grupa
 AND studenti.Id_Student = studenti.studenti_reusita.Id_Student
 AND Cod_Grupa = @cod_grupa
 GROUP BY Cod_Grupa, Nume_Student, Prenume_Student
 Order by Media asc
 end

 RETURN 
 end