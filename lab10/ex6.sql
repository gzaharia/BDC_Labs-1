CREATE TRIGGER lab10_ex6 ON DATABASE
FOR ALTER_TABLE
AS
SET NOCOUNT ON
DECLARE @command varchar(50)
DECLARE @Id_Profesor varchar (20)
DECLARE @table varchar (50)
DECLARE @new_command varchar(50)

SELECT @Id_Profesor = EVENTDATA().value('(/EVENT_INSTANCE/AlterTableActionList/*/Columns/Name)[1]', 'nvarchar(max)')
IF @Id_Profesor = 'Id_Profesor'
BEGIN
SELECT @command = EVENTDATA().value ('(/EVENT_INSTANCE/TSQLCommand/CommandText)[1]', 'nvarchar(max)')
SELECT @table = EVENTDATA().value ('(/EVENT_INSTANCE/ObjectName)[1]','nvarchar(max)')

SELECT @new_command = REPLACE(@ID_Profesor, @table, 'cadre_didactice.profesori');
EXECUTE (@new_command)


SELECT @new_command = REPLACE(@Id_Profesor, @table, 'studenti.studenti_reusita');
EXECUTE (@new_command)


SELECT @new_command = REPLACE(@Id_Profesor, @table, 'orarul');	
EXECUTE (@new_command);

Raiserror ('Data was modified succesfully',16,1)
print error_message();
END

ALTER TABLE cadre_didactice.profesori alter column Id_Profesor varchar(10)