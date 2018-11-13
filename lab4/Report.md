## Databases Laboratory Work Nr.4


### Prerequisites:
  - Microsoft SQL Server 2012
  - Oracle 11g/12c

### Objectives:
  - T-SQL and Oracle data types and build-in functions
  - Constraints
  - Creation, rename and update table
  - SQL Server Data Types and Functions
  - Query and Subquery
  - Agregate Functions
  
  
### Tasks : 

1.Find out all the data about groups from faculty  

2.Show the list of disciplines in descending order of number of hours  

16.Provide the name and surname of the students who have studied lessons less than 60 hours,
as well as the identities of the teachers who taught them.

21.How many grades have each of students. Show the name and surname 

22.Show the number of disciplines that are taught by each professor. (Nume_Profesor, Prenume_Profesor) 

24.Display the list of disciplines(Disciplina) that is taught at least 2 professors. 

### Implementation:
**Task 1**  

For solving I performed a simple query in universitatea database to get all disciplines in desc mode. 

![](https://github.com/MihaiGaidau/BDC_Labs/tree/master/lab4/screens/querry2.PNG) 

**Task 25** 

In this example I used another options that I learned at this course which are called **inner join**.
This feature helps me to unite 2 table in one in order to make some more complicated querries. 

![](https://github.com/MihaiGaidau/BDC_Labs/tree/master/lab4/screens/querry25.PNG) 

**Task 26**

In this querry i had to find all students and teachers that live on **31 August** streed, so, I used **like** keyword in order to find the adresses that include this name streed and also I used 
**UNION** keyword in order to unite 2 tables 


**Task 35**

In this querry I had to find the courses that have the grade average bigger or equal to 7 so I used **AVG** function in order to find the average and keyword **and** to make more tasks in one line

![](https://github.com/MihaiGaidau/BDC_Labs/tree/master/lab4/screens/querry35.PNG) 



### Observation:
 - I solved more than 3 querries because I am late with the report (I did the querries at time, but didn't have enough time to make the report and send)

### Conclusion: 
   In this laboratory work I learned how to with queries(T-SQL language). Also I learned how to make as simple querries as more complicated and how to use keywords as **and, or, like, as,with** in order to resolve querries. Also I learned how to work with functions like **avg,summ,count** in order to resolve some tasks. The harder part from lab was to learn how to use subquerries properly in order to make a fast and logical querry
