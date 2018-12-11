
create synonym Discipline
for universitatea.plan_studii.discipline

create synonym Studenti_Reusita 
for universitatea.studenti.studenti_reusita

create synonym Studenti
for universitatea.studenti.studenti

create synonym Profesori
for universitatea.cadre_didactice.profesori 


--2--

select Disciplina from Discipline d
order by d.Nr_ore_plan_disciplina desc ;

--4--
select Disciplina
 from Discipline 
 where  LEN(Disciplina) > 20;

--6--
select  top(5) Nume_Student , Prenume_Student 

 from Studenti_reusita sr inner join Discipline d on sr.Id_Disciplina=d.Id_Disciplina
			inner join Studenti s on s.Id_Student=sr.Id_Student 

where sr.Tip_Evaluare ='Testul 2' and sr.Nota is not null and d.Disciplina = 'Baze de date '  
order by Nota desc