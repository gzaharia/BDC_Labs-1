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
  
 ### Tasks: 
 
 1. Create 2 views based on queries formulated in chapter 4. The first view needs to be build in the query editor and the second one using View Designer. 
 2.Write an example of instructions INSERT, UPDATE, DELETE on the created views. Add the necessary comments referring to the results of these instructions. 
 
 3. Write SQL instructions which would modify the created views (from exercise 1) so that, the modification or deletion of the tables which these are defined on is not possible and the views should not accept DML operations, if the conditions of clause WHERE is not satisfied. 
 
 4. Write instructions to test the defined properties. 
 
 5. Write 2 queries formulated in chapter 4 so that, the subqueries are represented under CTE expressions. 
 
 6. Consider an orieted graph like the one in the figure below and should be passed the way from node id = 3 to node id = 0. Make the orieted graph represetation under recursive table-expresion form. Observe the instruction after UNION ALL of the recursiv member, as well as the part before UNION ALL, represented by the hook-member. 
 
 
 ### Implementation of tasks: 
 
 **Task 1**
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab8/screens/task1_1.JPG)
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab8/screens/task1_11.JPG) 

 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab8/screens/task1_2.JPG) 


 
 **Task 2** 
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab8/screens/task2_1.JPG) 

 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab8/screens/task2_11.JPG) 

 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab8/screens/task2_12.JPG) 

 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab8/screens/task2_2.JPG) 

 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab8/screens/task2_20.JPG) 

 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab8/screens/task2_21.JPG) 

 
 **Task 3** 
 
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab8/screens/task3.JPG) 

 
 **Task 4** 
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab8/screens/task4.JPG) 
 
 
 **Task 5** 
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab8/screens/task5.JPG) 
 
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab8/screens/task5_1.JPG) 
 
 
 **Task 6** 
 
 ![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab8/screens/task6.JPG) 
 
 
 **Conclusion :** 
 
 In this laboratory work I obtained skills operating with Views and properties of them. Also , I found out the notion and purpose of the Schemabinding option which means a level of security based on views and schemas and how it secure the data from the table or view. Another obtained skill in this laboratory work was recursion of table expressions and how to pass an oriented graph.
