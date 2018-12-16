create procedure cazu
@Fail_Studenti int = NULL OUTPUT
AS
select @Fail_Studenti = count(s.Id_Student)
from studenti.studenti s inner join studenti.studenti_reusita sr on s.Id_Student = sr.Id_Student
where sr.Nota < 5 or sr.Nota is null

declare @Fail_Studenti int 
exec cazu @Fail_Studenti OUTPUT

PRINT 'The total number of students that failed is: ' + cast(@Fail_Studenti as varchar(10))