--Insert Bivol Ion--
insert into orarul(Id_Disciplina, Id_Profesor, Id_Grupa, Zi , Ora, Auditoriu)

select distinct discipline.Id_Disciplina, profesori.Id_Profesor, grupe.Id_Grupa, 'Luni' as Zi, '08:00' as Ora, 201 as Auditoriu
from discipline, grupe, profesori,studenti_reusita
where studenti_reusita.Id_Disciplina = discipline.Id_Disciplina
and	  studenti_reusita.Id_Grupa = grupe.Id_Grupa
and   studenti_reusita.Id_Profesor = profesori.Id_Profesor
and Cod_Grupa like '%INF171%'
and Disciplina in ('Structuri de date si algoritmi');


--Insert Mircea Sorin--
insert into orarul(Id_Disciplina, Id_Profesor, Id_Grupa, Zi , Ora, Auditoriu)

select distinct discipline.Id_Disciplina, profesori.Id_Profesor, grupe.Id_Grupa, 'Luni' as Zi, '11:30' as Ora, 201 as Auditoriu
from discipline, grupe, profesori,studenti_reusita
where studenti_reusita.Id_Disciplina = discipline.Id_Disciplina
and	  studenti_reusita.Id_Grupa = grupe.Id_Grupa
and   studenti_reusita.Id_Profesor = profesori.Id_Profesor
and Cod_Grupa like '%INF171%'
and Disciplina in ('Programe aplicative');

--Insert Micu Elena--
insert into orarul(Id_Disciplina, Id_Profesor, Id_Grupa, Zi , Ora, Auditoriu)

select distinct discipline.Id_Disciplina, profesori.Id_Profesor, grupe.Id_Grupa, 'Luni' as Zi, '13:00' as Ora, 201 as Auditoriu
from discipline, grupe, profesori,studenti_reusita
where studenti_reusita.Id_Disciplina = discipline.Id_Disciplina
and	  studenti_reusita.Id_Grupa = grupe.Id_Grupa
and   studenti_reusita.Id_Profesor = profesori.Id_Profesor
and Cod_Grupa like '%INF171%'
and Disciplina in ('Baze de date');