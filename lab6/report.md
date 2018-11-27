## Databases Laboratory Work Nr.6


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

  
  
### Tasks : 

1. Write an T-SQL instruction, which will populate **Adresa_Postala_Profesor** column from **profesori** table with 'mun.Chisinau' value
where it is NULL.

2. Modify the **grupe** for respecting the following requirements:

- a) 'Cod_Grupa' field should accept only unique values and doesn't accept the NULL values. 

- b) To respect the fact that primary key is set on 'Id_Grupa'.

3. Add 2 columns 'Sef_grupa' and 'Indrumator' to **grupe** table both of INT type. Populate the columns with canditates which follow the
following criteria:

- a) Group monitor should has the best mark from group of all types of evaluation at all courses. One student couldn't be the monitor for
two groups.
- b) Indrumator Professor should teach the maximum courses. If he don't exist it is choosen the Professor with the lowest 'Id_Professor'.
One professor couldn't be the 'Indrumator' for two groups.

4. Write the T-SQL instruction which will increase the 'Nota' with 1 unit. The maximum 'Nota' (10) couldn't be increased.

5. Create the **profesori_new** table which will include the following columns: Id_Profesor, Nume_Profesor, Prenume_Profesor, Localitate,
Adresa_1, Adresa_2.

- a) Id_Profesor column should be defined as primari key and should include an Clustered Index.

- b) Localitate column should has the DEFAULT = 'mun Chisinau' property.

- c) To insert the data from **profesori** table to **profesori_new** table following the criteria:
  Id_Profesor = Id_Profesor 
  
  Nume_Profesor = Nume_Profesor
  
  Prenume_Profesor = Prenume_Profesor
  
  Localitate = Name of the locality
  
  Adresa_1 = street name
  
  Adresa_2 = house number or apartment.
  
 6. To insert in the 'orarul' table the data for the 'Grupa = CIB171'(Id_Grupa = 1) for Monday. All courses will be teaching in the 
 B block, following the criteria : 
 
 (Id_Disciplina =107, Id_Profesor = 101, Ora = '08:00', Auditoriu = 202) 
 
 (Id_Disciplina =108, Id_Profesor = 101, Ora = '11:30', Auditoriu = 501) 
 
 (Id_Disciplina =109, Id_Profesor = 117, Ora = '13:00', Auditoriu = 501)
 
 7. Write the T-SQL instructions for populating the 'orarul' table for 'Group = INF171' ,Monday. Should be uused the SELECT instruction 
 for populating with the following data  : 
 
 (Ora = '08:00' , Disciplina = 'Structuri de date si algoritmi', Profesor = 'Bivol Ion')
 
 (Ora = '11:30' , Disciplina = 'Programe aplicative', Profesor = 'Mircea Sorin') 
 
 (Ora = '13:00' , Disciplina = 'Baze de date', Profesor = 'Micu Elena')
 
 8. Perform indexes for the **universitatea** database for easy searching in it. The new indexes should bw physically located in 
 **userdatafgroup1**. 

### Implementation:
**Task 1** 

In order to do task 1 I used **update** function to update the table *profesori* and the **set** function to set a specific field field to an atribute.

![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab6/screens/ex1.jpg) 

**Task 2** 


In this taks we had to set constrains to table 'grupe' and colum 'Cod_Grupa', I set the mane to it 'set_unique' and also I made it 'Unique'

![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab6/screens/ex2.jpg) 

**Task 3** 

In oder to make the task I used the top(1) function that select the first tuple from a table. I found the student with the biggest marks from the all groups by making average and order descendent, and selected the first from all.



![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab6/screens/ex3)  

**Task 4** 

In order to make this task I also used *update* and *set*. I also used *in*, in order to chech if a atribute contain a specific student from sef grupe

![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab6/screens/ex4.jpg) 

**Task 5** 

In order to do this task, we had to create a new table and to add some specific fields in in. We had to parse the adress of another table and to select from it city, streed and nr of streed.
In roder to do that I used charindex and substring function. The most interesting part was using of ternar operator with charindex in order to determine where the substring must begin, or how many letters it has to copy
![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab6/screens/ex5.jpg) 

**Task 6** 

In this task we created table orarul and added some tuples in it.


![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab6/screens/ex6.jpg) 

**Task 7** 

In this task we had to add some date in orar table. In order to do this I used select and aliases to get the needed information from another tables
![](https://github.com/MihaiGaidau/BDC_Labs/blob/master/lab6/screens/ex7.jpg) 

**Task 8**

In order to create indees of this database, I used *alter* function in order to check if this group file exists and if not to create one. Also I set the size and the path (the path is a phisic pah from my pc)


**Conclusion:** 

In this laboratory I leaned how to create new table with some diferent tasks, how to add now date and how to select this data from another attributes> I leaned some new function frim T-sql like charindex or substring and I also optained skils working with ternar operator from sql. I learned how to create indexes of a database and how to edit tables without deleting it/
