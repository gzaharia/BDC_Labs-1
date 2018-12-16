--drop trigger lab10_ex4
create trigger lab10_ex4 on database
for  ALTER_TABLE
AS
declare @Nume_Profesor varchar(20)
select @Nume_Profesor = eventdata().value('(/EVENT_INSTANCE/AlterTableActionList/*/Columns/Name)[1]','sysname');
if @Nume_Profesor = 'Nume_Profesor'
begin
Raiserror (' You do not have permissions to do DDL commands',16,1)
end

alter table cadre_didactice.profesori alter column Nume_Profesor varchar(20)