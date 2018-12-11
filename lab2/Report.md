 ## Databases Laboratory Work Nr.2

## Database Creation and Maintenance Tools

### Prerequisites:
  - Microsoft SQL Server 2012
  - Oracle 11g/12c

### Objectives:
  - Instalation of the software
  - Ability to work with database software
  
### Tasks:
  - Create a physical database in the **MyDocuments\Data** map, fixing a 16 MB primary file with the 128MB limit and a 64MB log with a 1024MB increase limit. 
  For secondary files, a new default **Filegroup** to define, setting the increase of 64MB secondary files with the limit of 1024MB.
  
  - Create a database where the log file is physically placed in the **MyDocuments\Log map**,
  the log file name in the operating system environment must be different from the logical one defined in the physical schema. 
  It is important that the database created to be compatible with MS SQL Server 2017 and is accessible to only one user at a time.
  
  - Create the database maintenance plan built in task 1. The unused space of the database files must be returned to the removed when it reaches 2000 Mb. The released space must be returned to the operating system. This operation must run every Friday at 00:00. The maintenance plan execution report must be saved in the **MyDocuments\SQL_event_logs** folder. 
  Initiate plan execution. After execution, check the results in the log file.
  
  - Create the database maintenance plan built in exercise 2. 
  The name of the plan will be: "Index Rebuilding." Under this plan, the system must rebuild the indexes only on the base tables (excluding the views) of all the existent schemes in the database in question.
  The free space on the page must be 10%. The indexing of the indexes must be done in tempdb. After rebuilding, we have to follow the collection of the complete statistics about the rebuilds indexes. The third step of the plan should be the task of delete the history of the Backup-Restore operations that took place on SQL Server.
  It needs to delete the history that is older than 6 weeks.This plan must be executed every first Sunday of the month.
  Create the **MyDocuments \ SQL_reports** folder. Plan must be added to this file. 
  The maintenance process is logged in an extended way. you can check the results in the generated log file.
  
### Implementation

1. **Creation if databases**


2. **MaintenancePlan**

![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab6/screens/ex3)



### Conclusion

In this laboratory work I learned how to create a new database and how to set up it's proprietes. Also, I learned how to make a new maintenance rule witch can resize, shrank, restore, delete history of the database.

  
