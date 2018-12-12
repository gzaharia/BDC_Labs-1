 alter view View_11
with Schemabinding as (
 SELECT s.Nume_Student, s.Prenume_Student from studenti s 
 where s.Nume_Student LIKE '%u' )
 with check option;


alter view Task1_2
 with Schemabinding as (
select distinct d.Disciplina from studenti_reusita sr inner join studenti s on sr.Id_Student=s.Id_Student
inner join discipline d on sr.Id_Disciplina=d.Id_Disciplina 
where s.Nume_Student='Florea' and s.Prenume_Student='Ioan')
with check option;