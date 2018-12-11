--2--

select Disciplina from plan_studii.discipline d
order by d.Nr_ore_plan_disciplina desc ;

--4--
select Disciplina
 from plan_studii.discipline 
 where  LEN(Disciplina) > 20;


--6--
select  top(5) Nume_Student , Prenume_Student 

 from  studenti.studenti_reusita sr inner join plan_studii.discipline d on sr.Id_Disciplina=d.Id_Disciplina
			inner join studenti.studenti s on s.Id_Student=sr.Id_Student 

where sr.Tip_Evaluare ='Testul 2' and sr.Nota is not null and d.Disciplina = 'Baze de date '  
order by Nota desc