## Databases Laboratory Work Nr.10


### Prerequisites:
  - Microsoft SQL Server 2012
  - Oracle 11g/12c

### Objectives:
  - T-SQL and Oracle data types and build-in functions
  - SQL Server Data Types and Functions
  - Query and Subquery
  - Agregate Functions
  - While, Try-Catch, If-Else
  - Creating tables and indexes
  - Diagrams, Schemas and Synonyms
  - The administration of Views and common table expressions
  - The stored procedures and defined functions by user
  - Create and using of triggers
  
 ### Tasks: 
 
 1. Modify the 'inregistrare_noua' trigger, in case of update will show the discipline, ora, Cod_Grupa, Ziua, Blocul,Auditoriul
 Vechi and Auditoriul Nou.  
 
 2. Create a trigger, which will populate conscutively tables stundeti and studenti_reusita and will avoid erros according to the
 keys. 
 
 3. Create a trigger which will does not allow to shrink down the mark in the studenti_reusita table and modifying the values in the
 Data_Evaluare field, where these are NOT NULLS. It should work only for 'CIB171'. In other case should appear an information
 message. 
 
 4. Create a trigger DDL which will interdict modification of 'Id_Disicpllina' column  in tables of database universitatae with
 showing the message. 
 
 5. Create a trigger DDL which will interdict modification schema of database over working hours. 
 
 6. Create a trigger DDL , which once modified properties of 'Id_Profesor' column from one table, will modify automatically in allow
 tables. 
 
 
### Implementation of tasks: 
 
 **Task 1** 
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab10/screens/Task1.PNG) 


  ### Implementation of tasks: 
 
 **Task 2** 
 
  ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab10/screens/Task2.PNG)  

  ### Implementation of tasks: 
 
 **Task 3** 
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab10/screens/Task3.PNG) 


  ### Implementation of tasks: 
 
 **Task 4** 
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab10/screens/Task4.PNG)  

  ### Implementation of tasks: 
 
 **Task 5** 
![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab10/screens/Task5.PNG)  

  ### Implementation of tasks: 
 
 **Task 6** 
 
![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab10/screens/Task6.PNG) 


 **Conclusion :**  

During this laboratory I learned how to work with triggers and to make some actions to action then some events happen. There are different types of triggers, DML, DDL, LOGON.
I learned also how to manage some errors with raierror() that works with print Error_Message() 
