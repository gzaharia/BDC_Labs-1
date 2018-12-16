EXEC sp_addumpdevice 'DISK','BACKUP_LOG','D:\Sql Server\BACKUP\Backup_Lab11\universitatea_log.bak'

BACKUP LOG universitatea
TO BACKUP_LOG
WITH FORMAT, 
      NAME = 'Transactions Log Backup of universitatea'