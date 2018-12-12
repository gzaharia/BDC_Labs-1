declare @Table Table(
ID INT,
Grupa varchar(50),
Student varchar(50),
PredID INT)

insert @Table
select 5,'C-161','Popa Victor', NULL UNION ALL
select 4,'FAF-171', 'Cartofeanu Marin',NULL UNION ALL
select 3,'FAF-161', 'Miculet Victor', NULL UNION ALL
select 2,'FAF-161', 'Balmus Victor', 4 UNION ALL
select 2,'FAF-161', 'Caragiu Ion', 3 UNION ALL
select 1,'TI-151', 'Damian Cristi', 2 UNION ALL
select 0,'TI-151', 'Popa Andrei', 1 UNION ALL
select 0,'TI-151', 'Popescu Angela', 5;

with Students
as
(select *, cast(NULL AS VARCHAR(50)) AS Pred_Student, 0 AS generatie
from @Table
where PredID is NULL
and ID =3 
UNION ALL
select Studenti_Facultate.*, Students.Student as Pred_Student, generatie + 1
from @Table as Studenti_Facultate
inner join Students
on Studenti_Facultate.PredID = Students.ID)

select * from Students;