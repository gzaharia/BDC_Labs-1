CREATE FUNCTION task7( @date_birth DATE )
RETURNS INT
 BEGIN
 DECLARE @varsta INT
 SELECT @varsta = (SELECT (YEAR(GETDATE()) -
							 YEAR(@date_birth) - 
								CASE WHEN (MONTH(@date_birth) > MONTH(GETDATE())) OR
											 (MONTH(@date_birth) = MONTH(GETDATE()) AND DAY(@date_birth) > DAY(GETDATE()))
								THEN  1
								ELSE  0
								 END))
 RETURN @varsta
 END

 select dbo.task7('2000-01-01')