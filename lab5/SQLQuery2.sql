use universitatea

---- 1 ------------------------------------------------------------------------------------------------------

declare @N1 int ,@N2 int,@N3 int ;
declare @mai_mare int;

begin

set @N1 = 60* RAND();
set @N2 =60* RAND();
set @N3 =60* RAND();

if(@N1>=@N2)
begin
 
if(@N1>=@N3)
set @mai_mare=@N1 
else
set @mai_mare=@N3
end;
else 
begin
if(@N2>=@N3)
set @mai_mare=@N2
else 
set @mai_mare=@N3
end;

print @N1;
print @N2;
print @N3;
print 'Mai mare '+ cast( @mai_mare as varchar(2) );

end ;
-----------------------------------------------------------------------

-- 2-------------

declare @v1 int ,@v2 int, @contor int ;

begin

set @v1=6 ;
set @v2=8;

set @v1=( select COUNT(ls.Nume_Student)  from
(
select top (10) Nume_Student,Prenume_Student ,Nota from studenti_reusita sr,studenti s,discipline d
where sr.Id_Student=s.Id_Student and d.Id_Disciplina=sr.Id_Disciplina 
and Tip_Evaluare='Testul 1' and d.Disciplina='Baze de date '  and sr.Nota!=@v1 and sr.Nota!=@v2
) ls
where ls.Nota<5
)

set @v2=( select COUNT(ls.Nume_Student)  from
(
select top (10) Nume_Student,Prenume_Student ,Nota from studenti_reusita sr,studenti s,discipline d
where sr.Id_Student=s.Id_Student and d.Id_Disciplina=sr.Id_Disciplina 
and Tip_Evaluare='Testul 1' and d.Disciplina='Baze de date '  and sr.Nota!=@v1 and sr.Nota!=@v2
) ls
where ls.Nota>5
)

select top (10) Nume_Student,Prenume_Student from studenti_reusita sr,studenti s,discipline d
where sr.Id_Student=s.Id_Student and d.Id_Disciplina=sr.Id_Disciplina 
and Tip_Evaluare='Testul 1' and d.Disciplina='Baze de date '  and sr.Nota!=@v1 and sr.Nota!=@v2 

if @v1>= @v2 
begin 
print concat ('Majoritatea studentilor au note negative la Baze de Date : ',@v1);
end ;
else print concat ('Majoritatea studentilor au note pozitive la Baze de Date : ',@v2);

end ;


--------------------------------------------------------------------------------------------------------------------------------------

-- 3 -------------
;;;

declare @N1 int ,@N2 int,@N3 int ;
declare @mai_mare int;

begin

set @N1 = 60* RAND();
set @N2 =60* RAND();
set @N3 =60* RAND();

print @N1;
print @N2;
print @N3;

print 'Mai mare '+ cast( case 
when @N1>=@N2 and @N1>=@N3 then  @N1  
when @N1>=@N2 and @N1<=@N3 then @N3
when @N1<=@N2 and @N2>=@N3 then @N2
when @N1<=@N2 and @N2<=@N3 then  @N3  
else null
end as varchar(2) )

end ;


--4 ----------------------------------------------------------------

 -- 1.1---------

declare @N1 int ,@N2 int,@N3 int ;
declare @mai_mare int;

begin

begin try

set @N1 = 60* RAND();
set @N2 =60* RAND();
set @N3 =60* RAND();

end try

begin catch
print 'eroare la initializare'
end catch

print @N1;
print @N2;
print @N3;

print 'Mai mare '+ cast( case 
when @N1>=@N2 and @N1>=@N3 then  @N1  
when @N1>=@N2 and @N1<=@N3 then @N3
when @N1<=@N2 and @N2>=@N3 then @N2
when @N1<=@N2 and @N2<=@N3 then  @N3  
else null
end as varchar(2) )

end ;

-- 2.1 -----------------------------------------------------------------------


declare @v1 int ,@v2 int, @contor int ;

begin

set @v1=6 ;
set @v2=8;

set @v1=( select COUNT(ls.Nume_Student)  from
(
select top (10) Nume_Student,Prenume_Student ,Nota from studenti_reusita sr,studenti s,discipline d
where sr.Id_Student=s.Id_Student and d.Id_Disciplina=sr.Id_Disciplina 
and Tip_Evaluare='Testul 1' and d.Disciplina='Baze de date '  and sr.Nota!=@v1 and sr.Nota!=@v2
) ls
where ls.Nota<5
)

set @v2=( select COUNT(ls.Nume_Student)  from
(
select top (10) Nume_Student,Prenume_Student ,Nota from studenti_reusita sr,studenti s,discipline d
where sr.Id_Student=s.Id_Student and d.Id_Disciplina=sr.Id_Disciplina 
and Tip_Evaluare='Testul 1' and d.Disciplina='Baze de date '  and sr.Nota!=@v1 and sr.Nota!=@v2
) ls
where ls.Nota>5
)

select top (10) Nume_Student,Prenume_Student from studenti_reusita sr,studenti s,discipline d
where sr.Id_Student=s.Id_Student and d.Id_Disciplina=sr.Id_Disciplina 
and Tip_Evaluare='Testul 1' and d.Disciplina='Baze de date '  and sr.Nota!=@v1 and sr.Nota!=@v2 

if @v1>= @v2 
begin 
print concat ('Majoritatea studentilor au note negative la Baze de Date : ',@v1);
end ;
else print concat ('Majoritatea studentilor au note pozitive la Baze de Date : ',@v2);

RAISERROR (
			511005, 
           10,  
           1,   
           N'abcde'
		   )

end ;



declare @nume varchar(15), @prenume  varchar(15)

begin

set @nume = 'Claudia'
set @prenume = 'Coste'


select distinct Disciplina from studenti s,studenti_reusita sr,discipline d
where s.Id_Student=sr.Id_Student and sr.Id_Disciplina=d.Id_Disciplina and s.Nume_Student=@prenume and s.Prenume_Student=@nume


end ;
















