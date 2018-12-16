create procedure lab9_ex3
@Nume varchar(20),
@Prenume varchar(20),
@Data_Nastere_Student date,
@Adresa_Postala_Student varchar(50),
@Cod_Grupa char(10)

as

insert into studenti.studenti values (190,@Nume,@Prenume,@Data_Nastere_Student,@Adresa_Postala_Student)
insert into studenti.studenti_reusita values(190,101,100,(select Id_Grupa from grupe where Cod_Grupa = @Cod_Grupa), 'Examen', NULL, '2018-01-01')

exec lab9_ex3 'Dolic','Anatolie','1997-02-12','mun.Chisinau', 'INF171'

select * from Studenti
where Nume_Student = 'Didica'