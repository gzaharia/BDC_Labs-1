--2.1--
--insert--
insert into View_11
values('Gaidau','Mihai')
--Error occurs because field has a constant value and relation with other tables--

--update--
update View_11
set Nume_Student = 'Vimu'
where Nume_Student = 'Timu'

--delete--
delete from View_11
where Nume_Student = 'Vimu'
--Multiple based tables are affected and it is not possible to execute.

select * from View_11

--2.2--
--insert--
insert into Task1_2
values('Programarea orientata pe obiecte')

--update--
update Task1_2
set Disciplina = 'Tehnologii de procesare a datelor'
where Disciplina = 'Tehnologii de procesare a informatiei'

--delete--
delete from Task1_2
where Disciplina = 'Programarea orientata pe obiecte'
