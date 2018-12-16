create trigger lab10_ex5 on database 
for ALTER_TABLE
as
set nocount on
declare @start time ='08:00:00'
declare @end time = '18:00:00'
declare @today time =(select convert(time,CURRENT_TIMESTAMP))

if  @today not between  @start and @end
begin
Raiserror('It is over your work time',16,1)
print error_message()
end


alter table grupe alter column Specialitate varchar(50)