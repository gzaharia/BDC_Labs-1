## Databases Laboratory Work Nr.5


### Prerequisites:
  - Microsoft SQL Server 2012
  - Oracle 11g/12c

### Objectives:
  - T-SQL and Oracle data types and build-in functions
  - SQL Server Data Types and Functions
  - Query and Subquery
  - Agregate Functions
  - While, Try-Catch, If-Else
  
  
### Tasks : 

1. Fill in the following code to display the biggest number of the three numbers shown. 

2. Display the first 10 data (Name, Surname of student) in function of Grade value (except 6 and 8) of student on first evaluation at
Database , using IF-ELSE statement. To use variables. 

3. Solve the same task,1, using CASE statement.

4. Modify the exercises from task 1 and 2 for including error processing with TRY-CATCH and RAISERROR.

### Implementation:
**Task 1**  

In order to resolve task1 I used **rand** function to generate 3 random numbers and also used **if-else** statement to to find the biggest number from them

![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab5/screens/ex1.jpg) 

**Task2**

In the task 2 I had to find if the majority of students has positive grade or negative grades at DB, and to show them
In order to do this I querry each part, count them and with if determined the result

![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab4/screens/ex2.jpg) 



**Task3** 

In the 3 task I also determined the biggest number from 3 using **case**


 ![]https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab5/screens/ex3.jpg) 
 
 **Task4**

In ythis example I resolve the same problem, but I used **try-catch** to determine if the date was initialized.  For some personalized error we can use RAISERROR.

 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab5/screens/ex4.jpg)
 
 
 
 **Conclusion**
 
 In this laboratory work I obtained skills working with Procedural Instructions of T-SQL.Also I learned how to work with variables, blocks and fuction as **if-else,case,try-catch**
 Also I learned how to manage some errors from try-catch and how to do more complicated querries (with variables).
