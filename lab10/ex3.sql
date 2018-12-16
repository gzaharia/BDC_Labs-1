create trigger lab10_ex3 on studenti.studenti_reusita
after update
as set nocount on
if update(nota)
declare @Grupa int = (select Id_Grupa from grupe where Cod_Grupa = 'CIB171')
declare @cases int = (select count(*) from deleted, inserted where deleted.Id_Disciplina = inserted.Id_Disciplina and deleted.Id_Grupa = inserted.Id_Grupa
and deleted.Id_Profesor = inserted.Id_Profesor and deleted.Tip_Evaluare = inserted.Tip_Evaluare
and deleted.Id_Student = inserted.Id_Student
and inserted.Nota < deleted.Nota
and inserted.Id_Grupa = @Grupa)

begin
if(@cases > 0)
PRINT 'You do not have the possibility to change for CIB171 group'
end

if update(Data_Evaluare)
declare @DateExist int
set @DateExist = (select count(*) from deleted where Data_Evaluare != NULL and Id_Grupa = @Grupa)
if @DateExist > 0
begin
PRINT 'You do not have the permission to modify'
end

select * from studenti_reusita where Data_Evaluare = '2018-01-01'

update studenti_reusita
set Data_Evaluare = '2018-01-01'
where Data_Evaluare is null