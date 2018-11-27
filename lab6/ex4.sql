update studenti_reusita
set Nota = Nota +1
where Nota <> 10 and Nota in (select Nota from studenti_reusita
where Id_Student In(select Sef_grupa  from grupe))