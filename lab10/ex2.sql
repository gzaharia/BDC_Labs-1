drop trigger lab10_ex2
CREATE TRIGGER lab10_ex2 ON studenti.studenti_reusita
INSTEAD OF INSERT
AS SET NOCOUNT ON

  
 if exists (SELECT * FROM inserted
  WHERE Id_Student in (SELECT Id_Student FROM studenti.studenti))
begin
  INSERT INTO studenti.studenti_reusita
  SELECT * FROM inserted
  WHERE Id_Student in (SELECT Id_Student FROM studenti.studenti)

  end
else
begin
   print'The student is not inserted, because it does not exist in studenti table!'
end
  
  
  INSERT INTO studenti.studenti_reusita values (235, 101, 101, 1, 'Testul 1', 9, null)
  
  INSERT INTO studenti values (234,'AAA', 'BBB', '1999-11-18', null)

  INSERT INTO studenti.studenti_reusita values (176, 101, 101, 1, 'Testul 1', 9, null)

  INSERT INTO studenti values (176,'Ion', 'Brasovianu', '1999-11-18', null)

  INSERT INTO studenti.studenti_reusita values (240, 101, 101, 1, 'Testul 1', 9, null)

 -- delete from studenti where Id_Student = 200
  select * from studenti where Id_Student= 200
  select * from studenti.studenti_reusita where Id_Student = 176