--sp_dropdevice device01;
--sp_dropdevice device02;
--sp_dropdevice deviceDiff;
--sp_dropdevice deviceLog;

USE universitatea
GO
EXEC sp_addumpdevice 'DISK', 'device01', 'E:\Sql Server\BACKUP\Backup_Lab11\universitatea.bak'
GO

USE universitatea
GO
EXEC sp_addumpdevice 'DISK', 'deviceDiff', 'E:\Sql Server\BACKUP\Backup_Lab11\universitatea_diff.bak'
GO

USE universitatea
GO
EXEC sp_addumpdevice 'DISK', 'deviceLog', 'E:\Sql Server\BACKUP\Backup_Lab11\universitatea_Log.bak'
GO


BACKUP DATABASE universitatea
TO [device01] WITH FORMAT,
NAME = N'universitatea - FULL backup'
GO

BACKUP DATABASE universitatea
TO [deviceDiff] WITH DIFFERENTIAL,

NAME = N'test - DIFF backup'
GO

BACKUP LOG universitatea
TO deviceLog WITH 
NAME = N'test - LOG backup'
GO


USE master
GO
RESTORE DATABASE university_lab11 -- the name of the new database to restore
FROM device01 WITH NORECOVERY,
MOVE 'universitatea' TO 'E:\Sql Server\BACKUP\Backup_Lab11\universitatea.mdf',
move 'universitatea_File2' TO 'E:\Sql Server\BACKUP\Backup_Lab11\universitatea_file2.mdf',
move 'universitatea_File3' TO 'E:\Sql Server\BACKUP\Backup_Lab11\universitatea_file3.mdf',
move 'IndexLab6' TO 'E:\Sql Server\BACKUP\Backup_Lab11\universitatea_indexlab6.mdf',
MOVE 'universitatea_log' TO 'E:\Sql Server\BACKUP\Backup_Lab11\universitatea_log.ldf'

--restore differential database
RESTORE DATABASE university_lab11 -- the name of the new database to restore
FROM deviceDiff WITH NORECOVERY
-- RESORE FROM LOG
RESTORE LOG university_lab11 FROM deviceLog WITH RECOVERY