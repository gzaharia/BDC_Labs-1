EXEC sp_addumpdevice 'DISK','device02','E:\Sql Server\BACKUP\Backup_Lab11\universitatea_diff.bak'

	BACKUP DATABASE universitatea TO device02 WITH DIFFERENTIAL