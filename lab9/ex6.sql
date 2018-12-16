create procedure ex6_1(
@Nota int,
@TEvaluare varchar(50))
as 
select distinct s.Nume_Student,s.Prenume_Student,d.Disciplina from studenti_reusita sr inner join studenti s on sr.Id_Student=s.Id_Student
inner join discipline d on sr.Id_Disciplina=d.Id_Disciplina

where sr.Nota > @Nota and sr.Tip_Evaluare=@TEvaluare ;

-------fdfdf----
create procedure ex6_2(
@TE varchar(50),
@Disc varchar(50),
@Year varchar(50),
@Nota int)
as
 select count(Id_Student) as numar from 
 (select Id_Student,Id_Disciplina,Tip_Evaluare,Nota,Data_Evaluare from studenti_reusita ) sr ,
  (select Id_Disciplina,Disciplina from discipline) d
 where sr.Id_Disciplina=d.Id_Disciplina and sr.Tip_Evaluare=@TE and d.Disciplina=@Disc and sr.Data_Evaluare like @Year and sr.Nota>@Nota;


 