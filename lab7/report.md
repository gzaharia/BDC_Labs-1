## Databases Laboratory Work Nr.7


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
  
 ### Tasks: 
 
 1. Create a database diagram , using the standard form of vizualization, structure which is described at the beginning practice items in
 4 chapter. 
 
 2. Add the references constraints ( for **studenti** and **profesori** tables) needed 'Sef_Grupa' , 'Prof_Indrumator' columns from **grupe** table. 
 
 3. At the performed diagram , should to add **orarul** table. Table **orarul** contains the 'disciplinei' identifier (Id_Disciplina) , profesor's identifier(Id_Profesor) and study block (Bloc). Table key is formed by fields: Id_Grupa, Zi, Ora, Auditoriu. 
 
 4. **Orarul** table should contains 2 secondary keys: (Zi, Ora, Id_Grupa, Id_Profesor), (Zi, Ora, Id_Grupa, Id_Disciplina). 
 
 5. In the diagram should be added the PK-FK for Id_Disciplina, Id_Profesor, Id_Grupa attributes from **orarul** table with those attributes from tables. 
 
 6. Create the new 3 schemas : cadre_didactice, plan_studii, studenti. Transfer profesori from dbo schema to 'cadre_didactice' schema , discipline to 'plan_studii', studenti and studenti_reusita to 'studenti'. Write the needed SQL instructions. 
 
 7. Modify the 2-3 queries from chapter 4 on the 'universitatea' database for explicitly addressing at the tables, taking into account that tables are in the new schemas. 
 
 8. Create synonyms for simplify the queries performed in the previous item and perform the queries , using the created synonyms. 
 
 ### Implementation:
 
 **Task 1** 
 
 In order to create a simple database diagram I just created one from database extension folder (+) -> right click -> New Diagram -> (chose tables to add)
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab7/screens/ex1.jpg) 
 
 **Task 2** 
 In order to create constrains manual I just drag the key from one table to another
 
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab7/screens/Task2.PNG) 
 
 **Task 3** 
 
 In order to to the task, I Keept pressed the CTRL key and select the fields which perform the key for 'orarul' table. 
 
  ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab7/screens/Task3.PNG) 
  
 **Task 4** 

    In order to add 2 secondary keys I used "Add" from menu Indexes/Keys. I created them unique.
  
   ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab7/screens/Task4.PNG)
   
**Task 5**  

    In order to define PK-FK I made it manual.


 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab7/screens/Task5.PNG) 
 
**Task 6** 

 I have created my schemas: cadre_didactice, plan_studii and studenti. For this schemas I chose the role of owner 'guest'. For transfering the tables into these schemas I wrote SQL instructions. 

 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab7/screens/task6) 
 

 
 **Task 7** 
 
 For solving this task I random chose 2-3 quaries from Laboratory Work N.4 and rewrite them according to the given form. 
 
  ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab7/screens/task7_1) 
  
  ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab7/screens/task7_2)
  
  ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab7/screens/task7_3) 
  
 **Task 8** 
 
 In order to create synonyms I use the *create synonym* comand
 

![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab7/screens/task8_1)


The querryes work as before:

![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab7/screens/task8_2) 



**Conclusion:** 

In this laboratory I learned how to create and edit diagrams. Also I learned how to create schemas, and how to use them. In order to use easier schemas I created synonyms