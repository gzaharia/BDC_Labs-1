EXEC sp_addumpdevice 'DISK','device01','E:\Sql Server\BACKUP\Backup_Lab11\universitatea.bak'
GO
BACKUP DATABASE universitatea 
TO device01  
   WITH FORMAT, 
      NAME = 'Full Backup of universitatea';  