## Databases Laboratory Work Nr.8


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
  
 ### Tasks: 
 
 1. Create stored procedures based on exercises(2 exercises) from Chapter 4. Entry parameters must correspond to criteria from 
 Where Clause. 
 
 2. Create a stored procedure, without any entry parameter and has the output parameter. Output parameter must return the number
 of students, who do not pass at least one form of evaluation( the mark is less than 5 or is NULL). 
 
 3. Create a stored procedure, which will insert in the database data about new student. Entry parameters must be new data about 
 student and 'Cod_Grupa'. Generate the all needed keys in **studenti_reusita** table. Marks must be NULL. 
 
 4. Create a stored procedure which will update records in the 'studenti_reusita' table to the new 'profesor'. Entry parameters
 must be: numele and prenumele of the old teacher, numele and prenumele of the newest teacher, discipline. In case of entering
 of wronga should appear a error. 
 
 5. Create a stored procedure which will form a list of the best 3 students at the any discipline, for this students must 
 increase the mark with one unit. Entry parameters: discipline. Procedure should returns : Cod_Grupa, Name_Surname,Discipline,
 Old_Mark, New_Mark. 
 
 6. Create defined functions by user based on exercises(2 exercises) from Chapter 4. Entry parameters must correspond to the 
 Where Clause. 
 
 7. Create a function which will calculate how old is the given student. The defined format of function: <name_function>(<Data_Nastere_Student>). 
 
 8. Create a function defined by user, which will returns the data based on student. The defined format: <name_function>(<Name_Surname_Student>).
 Show the table with the following fields: Name_Surname_Student,Discipline,Mark,Date of evaluation. 
 
 9. Create a function which will find the 'sarguioncios' student or the 'slab' student. The format of function:
 <name_function>(<Cod_Grupa>, <is_good>). Fuction will returns the following fields: Grupa, Name_Surname_Student,Average Mark,is_good.
 Average Mark must be with 2 unit precision. 
 
  ### Implementation of tasks: 
 
 **Task 1** 
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab9/screens/task1.JPG) 
 
 **Task 2**  
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab9/screens/task2.JPG)  
 
 
 **Task 3**  
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab9/screens/task3.JPG)  

 
 **Task 4**  
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab9/screens/task4.JPG)  

 
 
 **Task 5**  
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab9/screens/task5.JPG)  

 
 
 **Task 6**  
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab9/screens/task6.JPG)  
  
 
 
 **Task 7**  
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab9/screens/task7.JPG)  
 


 **Task 8**  
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab9/screens/task8.JPG)  



 **Task 9**  
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab9/screens/task9.JPG)  



 **Conclusion :**  
 
 In this laboratory work I obtained skills operating with stored procedures and defined functions by user which help to optimize the queries.
 Also, I understood the purpose of both of them and how this work. This stored procedures and functions are like the executable of a program, 
 this are program in SQL.
 
 
 
 