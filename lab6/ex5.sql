CREATE TABLE profesori_new
 (Id_Profesor int PRIMARY KEY Clustered
 ,Nume_Profesor char(50)
 ,Prenume_Profesor char(50)
 ,Localitate char (150) DEFAULT('mun. Chisinau')
 ,Adresa_1 char (100)
 ,Adresa_2 char (100));


 insert into profesori_new(Id_Profesor,Nume_Profesor, Prenume_Profesor, Localitate, Adresa_1, Adresa_2)
 select Id_Profesor,Nume_Profesor, Prenume_Profesor, 
 (substring(Adresa_Postala_Profesor,1,IIF(charindex('bd',Adresa_Postala_Profesor,1)>0,charindex('bd',Adresa_Postala_Profesor,1)-3,
		IIF(charindex('str',Adresa_Postala_Profesor,1)>0,charindex('str',Adresa_Postala_Profesor,1)-3,len(Adresa_Postala_Profesor)))))
	as Localitate, 
  (substring(Adresa_Postala_Profesor,IIF(charindex('bd', Adresa_Postala_Profesor,1)>0,charindex('bd', Adresa_Postala_Profesor,1),IIF(charindex('str', Adresa_Postala_Profesor,1)>0,charindex('str', Adresa_Postala_Profesor,1),0)),
												IIF(
											charindex('bd', Adresa_Postala_Profesor,1)>0,	charindex(
																									',', Adresa_Postala_Profesor, charindex('bd', Adresa_Postala_Profesor,1)+1) - charindex('bd', Adresa_Postala_Profesor,1),IIF(
											charindex('str', Adresa_Postala_Profesor,1)>0,	charindex(
																									',', Adresa_Postala_Profesor, charindex('str', Adresa_Postala_Profesor,1)+1) - charindex('str', Adresa_Postala_Profesor,1),0)))) as Adresa_1,
(substring(Adresa_Postala_Profesor,patindex( '%[0-9]%',Adresa_Postala_Profesor),IIF(charindex(',', Adresa_Postala_Profesor,1)>0,5,0))) as Adresa_2
from profesori

select * from profesori_new