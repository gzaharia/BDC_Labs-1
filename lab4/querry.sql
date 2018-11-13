-- 1
select * from grupe ;

--2

select d.Disciplina from discipline d
order by d.Nr_ore_plan_disciplina desc ;

--3

select distinct Disciplina, Nume_Profesor,Prenume_Profesor

from (profesori p inner join (select sdp.Id_Disciplina , sdp.Id_Profesor from studenti_reusita sdp) st 
on p.Id_Profesor = st.Id_Profesor  
inner join discipline d 
on d.Id_Disciplina =st.Id_Disciplina) 

order by Nume_Profesor desc ,Prenume_Profesor desc;

--4

select d.Disciplina
 from discipline d
 where  LEN(d.Disciplina) > 20;


 --5

 SELECT s.Nume_Student, s.Prenume_Student from studenti s 
 where s.Nume_Student LIKE '%u'  ;


 --6

select  top(5) Nume_Student , Prenume_Student 

 from  studenti_reusita sr inner join discipline d on sr.Id_Disciplina=d.Id_Disciplina
			inner join studenti s on s.Id_Student=sr.Id_Student 

where sr.Tip_Evaluare ='Testul 2' and sr.Nota is not null and d.Disciplina = 'Baze de date '  
order by Nota desc
;

--7

select g.cod_grupa from grupe g inner join studenti_reusita sr on g.Id_Grupa=sr.Id_Grupa
inner join studenti s on sr.Id_Student=s.Id_Student
where s.Adresa_Postala_Student= '%31 August' ;



--8

select distinct s.Id_Student, s.Nume_Student  from studenti s inner join studenti_reusita sr on
s.Id_Student=sr.Id_Student 
where sr.Data_Evaluare like '%2018%' and sr.Tip_Evaluare='Examen';


--9


select distinct s.Nume_Student,s.Adresa_Postala_Student,d.Id_Disciplina from studenti s inner join studenti_reusita sr on 
s.Id_Student=sr.Id_Student
inner join discipline d on 
d.Id_Disciplina=sr.Id_Disciplina

where sr.Nota > 8 and sr.Data_Evaluare like '2018%'


--10 


select s.Nume_Student, s.Prenume_Student  ,sr.Nota from studenti s inner join studenti_reusita sr on 
s.Id_Student =sr.Id_Student
inner join discipline d on sr.Id_Disciplina=d.Id_Disciplina

where d.Disciplina='Baze de date ' and sr.Tip_Evaluare='Examen' and sr.Data_Evaluare like '2018%' and sr.Nota between 4 and 8 ;



--11


select distinct p.Nume_Profesor,p.Prenume_Profesor from profesori p inner join studenti_reusita sr on p.Id_Profesor=sr.Id_Profesor
inner join discipline d on d.Id_Disciplina=sr.Id_Disciplina
where d.Disciplina='Baze de date ' and sr.Data_Evaluare like '2018%' and sr.Nota < 5;

--12


select  s.Nume_Student,s.Prenume_Student,d.Disciplina,sr.Nota,sr.Data_Evaluare from studenti_reusita sr inner join studenti s on sr.Id_Student=s.Id_Student 
inner join discipline d on sr.Id_Disciplina=d.Id_Disciplina
where s.Prenume_Student='Alex' ;


--13

select distinct d.Disciplina from studenti_reusita sr inner join studenti s on sr.Id_Student=s.Id_Student
inner join discipline d on sr.Id_Disciplina=d.Id_Disciplina 
where s.Nume_Student='Florea' and s.Prenume_Student='Ioan';

--14 


select distinct s.Nume_Student,s.Prenume_Student,d.Disciplina from studenti_reusita sr inner join studenti s on sr.Id_Student=s.Id_Student
inner join discipline d on sr.Id_Disciplina=d.Id_Disciplina

where sr.Nota > 8 and sr.Tip_Evaluare='Examen' ;


--15

select s.Nume_Student,s.Prenume_Student from studenti_reusita sr inner join studenti s on sr.Id_Student=s.Id_Student
inner join profesori p on sr.Id_Profesor=p.Id_Profesor
where sr.Tip_Evaluare='Examen'  and
  sr.Data_Evaluare like '2017' and (p.Prenume_Profesor like 'Ion'or p.Prenume_Profesor like 'George' ) ;


  --16

 select distinct  Nume_Student,Prenume_Student,Id_Profesor    from discipline d, studenti_reusita ,studenti
 where d.Id_Disciplina=studenti_reusita.Id_Disciplina and
 studenti_reusita.Id_Student=studenti.Id_Student and
 d.Nr_ore_plan_disciplina< 60

 --17

 select distinct Nume_Profesor,Prenume_Profesor from profesori p,studenti_reusita sr
 where p.Id_Profesor=sr.Id_Profesor and
 sr.Id_Student=100;  

 --18

 select distinct Nume_Profesor,Prenume_Profesor from profesori p,(select Id_Disciplina,Id_Profesor  from studenti_reusita) s ,discipline d
 where p.Id_Profesor=s.Id_Profesor and s.Id_Disciplina=d.Id_Disciplina and d.Nr_ore_plan_disciplina<60;

 --19

 select Nume_Profesor,Prenume_Profesor,Nota from profesori p,
 (select Id_Student,Nota,Id_Profesor  from studenti_reusita) sr,
 (select Id_Student,Nume_Student from studenti )s
 where p.Id_Profesor=sr.Id_Profesor and sr.Id_Student=s.Id_Student 
 and s.Nume_Student='Cosovanu' and sr.Nota<5 ;


 --20

 select count(Id_Student) as numar from 
 (select Id_Student,Id_Disciplina,Tip_Evaluare,Nota,Data_Evaluare from studenti_reusita ) sr ,
  (select Id_Disciplina,Disciplina from discipline) d
 where sr.Id_Disciplina=d.Id_Disciplina and sr.Tip_Evaluare='Testul 2' and d.Disciplina='Baze de date ' and sr.Data_Evaluare like '2017%' and sr.Nota>4;





--25-- 1.
select Cod_Grupa, count( distinct Id_Student) as nrOfst
from grupe
inner join 
studenti_reusita on grupe.Id_Grupa=studenti_reusita.Id_Grupa
group by Cod_Grupa
having count( distinct Id_Student) >= 24

--25-- 2.
select Cod_Grupa,nr_stud from 
 (select distinct count(distinct Id_Student) as nr_stud,Id_Grupa from studenti_reusita group by Id_Grupa) sr,
 (select Id_Grupa,Cod_Grupa from grupe) g
where nr_stud>24 and sr.Id_Grupa=g.Id_Grupa

--26--
select Nume_Student as Nume, Prenume_Student as Prenume, Adresa_Postala_Student as Adresa
from studenti
where Adresa_Postala_Student like '%31 August%'
Union
select Nume_Profesor as Nume, Prenume_Profesor as Prenume, Adresa_Postala_Profesor as Adresa
from profesori
where Adresa_Postala_Profesor like '%Decebal%'

--27

select distinct Id_Student from studenti_reusita sr,
(select Prenume_Profesor,Id_Profesor from profesori) p
where sr.Id_Profesor=p.Id_Profesor and Prenume_Profesor='Ion' and Tip_Evaluare='Examen'
;


--28

select distinct Nume_Student,Prenume_Student,notaM from
(select Id_Student,Nume_Student,Prenume_Student from  studenti ) s,
(select distinct AVG (Nota)as notaM,Id_Grupa from studenti_reusita group by Id_Grupa)sr ,
(select Id_Grupa,Id_Student,Id_Profesor from studenti_reusita )st,
(select Id_Profesor,Adresa_Postala_Profesor from profesori ) p
where sr.Id_Grupa=st.Id_Grupa and s.Id_Student=st.Id_Student and st.Id_Profesor=p.Id_Profesor and Adresa_Postala_Profesor like '%str.31 August%' 

;


--29

select distinct Nume_Student,Prenume_Student,Nota from 

(select Nume_Student,Prenume_Student,Id_Student from studenti ) s,
(select min(Nota)as notaS from studenti_reusita where Id_Student=100 group by Id_Student ) sn,
(select Id_Student,Nota,Tip_Evaluare from studenti_reusita ) sr
where s.Id_Student=sr.Id_Student and sr.Nota<sn.notaS and   Tip_Evaluare='Examen'

;

--30

select COUNT(distinct Id_Student) as numar_studenti,AVG(Nota) as media from
(select Id_Student,Id_Disciplina,Nota,Data_Evaluare from studenti_reusita ) sr,
(select Id_Disciplina,Disciplina from discipline) d
where sr.Id_Disciplina=d.Id_Disciplina and Disciplina='Baze de date ' and (year(Data_Evaluare)=2018 or  year (Data_Evaluare)=2019  )
group by sr.Id_Disciplina

;

--31 

select Nume_Student,Prenume_Student,Id_Disciplina,anul,note from studenti s,
(
select Id_Student,Id_Disciplina,year(rs.Data_Evaluare) as anul,count(rs.Nota) as note  from studenti_reusita rs
where rs.Nota<5 
group by rs.Id_Student,rs.Id_Disciplina,YEAR(rs.Data_Evaluare)
having COUNT(rs.Nota)>1 
) srm
where s.Id_Student= srm.Id_Student
;



--32

select distinct Nume_Student,Prenume_Student,noteGR from studenti s,
(select Id_Grupa,AVG(Nota) as noteGr from studenti_reusita group by Id_Grupa) mg,
studenti_reusita sr
where sr.Id_Grupa=mg.Id_Grupa and s.Id_Student=sr.Id_Student
;
--33

select distinct Nume_Student,Prenume_Student from studenti s, studenti_reusita sr
where s.Id_Student=sr.Id_Student and Nota<5
except
select distinct Nume_Student,Prenume_Student from studenti_reusita sr, studenti s
where s.Id_Student=sr.Id_Student and Nota>4
;

--34

select distinct Nume_Student,Prenume_Student from studenti s,
studenti_reusita sr
where s.Id_Student=sr.Id_Student and Nota is null 
except
select distinct Nume_Student,Prenume_Student from studenti s,
studenti_reusita sr
where s.Id_Student=sr.Id_Student and Nota >0 
;
-----------------------------------------------------------------------
select distinct Nume_Student,Prenume_Student,Nota from studenti s,
studenti_reusita sr
where s.Id_Student=sr.Id_Student and ((s.Nume_Student='Diaconu' and s.Prenume_Student='Samuel') or (s.Nume_Student='Galambosi' and s.Prenume_Student='Norbert'))
;

--35

select distinct Disciplina, notele from discipline d, studenti_reusita sr,
(select AVG(Nota) as notele,Id_Disciplina from studenti_reusita group by Id_Disciplina) sn
where d.Id_Disciplina=sr.Id_Disciplina and sn.Id_Disciplina=sr.Id_Disciplina and notele>=7.0

;

