alter schema cadre_didactice transfer dbo.profesori



--2--
alter schema plan_studii transfer dbo.discipline



--3--
alter schema studenti transfer dbo.studenti_reusita
alter schema studenti transfer dbo.studenti

select * from studenti.studenti_reusita
select * from studenti.studenti
select * from plan_studii.discipline
select * from  cadre_didactice.profesori;