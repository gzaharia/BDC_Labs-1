with CTE1
as(SELECT s.Nume_Student, s.Prenume_Student from studenti s 
 where s.Nume_Student LIKE '%u' )

select * from CTE1;

--5.2--
with CTE2
as(select distinct d.Disciplina from studenti_reusita sr inner join studenti s on sr.Id_Student=s.Id_Student
inner join discipline d on sr.Id_Disciplina=d.Id_Disciplina 
where s.Nume_Student='Florea' and s.Prenume_Student='Ioan')

select * from CTE2;