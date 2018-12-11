create view Task1_2 as
select distinct d.Disciplina from studenti_reusita sr inner join studenti s on sr.Id_Student=s.Id_Student
inner join discipline d on sr.Id_Disciplina=d.Id_Disciplina 
where s.Nume_Student='Florea' and s.Prenume_Student='Ioan';

select * from Task1_2