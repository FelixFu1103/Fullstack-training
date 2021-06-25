-- Answer following questions
-- 1.	What is an object in SQL?
Table, schema, database etc are objects in sql server
-- 2.	What is Index? What are the advantages and disadvantages of using Indexes?
Indexs are database objects based on the table column for faster retrieval of data
Advantages :

1. To quickly find data that satisfy conditions in the WHERE clause.

2. To find matching rows in the JOIN clause.

3. To maintain uniqueness of key column during INSERT and UPDATE.

4. To Sort, Aggregate and Group data.

Disadvantages :

1. Additional Disk Space.

2. Insert, Update, Delete Statement become slow.

3. A clustered Index always cover a query.
-- 3.	What are the types of Indexes?
Clustred, non clustured unique and non unique indexes.
-- 4.	Does SQL Server automatically create indexes when a table is created? If yes, under which constraints?
When a table is created SQL Server automatically creates custered and unique indexes on primary key column and unique non clustered indexes on unique key constraints.
-- 5.	Can a table have multiple clustered index? Why?
- -5. A table can not have multiple clustered indexes beacuse clustered index columns will be sorted in ascending order,

there will be abiguity which columns to be sorted if there are more than one clustered index on a table.
-- 6.	Can an index be created on multiple columns? Is yes, is the order of columns matter?
Index can be created on multiple columns in a table. In the order first column will perform better over second and second over third and son on.
-- 7.	Can indexes be created on views?
Yes indexes can be created on views.
-- 8.	What is normalization? What are the steps (normal forms) to achieve normalization?
Normalization is a process of organzing data to minimize the data redundanncy.
There are first, second, third form of normalization.
First Normal form :

Data in each column should be atomic, no multiples values separated by comma.

The table does not contain any repeating column group

Identify each record using primary key.

Second normal form:

The table must meet all the conditions of 1NF

Move redundant data to separate table

Create relationships between these tables using foreign keys

Third Normal form:

Table must meet all the conditions of 1NF and 2NF.

Does not contain columns that are not fully dependent on primary key.
-- 9.	What is denormalization and under which scenarios can it be preferable?
- -9. Denormalization is a strategy used on a previously-normalized database to increase performance. The idea behind it is to add redundant

data where we think it will help us the most. We can use extra attributes in an existing table, add new tables, or even create instances

of existing tables. The usual goal is to decrease the running time of select queries by making data more accessible to the queries or by

generating summarized reports in separate tables. This process can bring some new problems, and we�ll discuss them later.
-- 10.	How do you achieve Data Integrity in SQL Server?
By using TRANSACTION
-- 11.	What are the different kinds of constraint do SQL Server have?
Not null, unique, PK, FK, Check constraints
-- 12.	What is the difference between Primary Key and Unique Key?
 Primary key can not have null value but unique key can. There will be only one foreign key per table where as there can be any number of unique keys per table
-- 13.	What is foreign key?
Foreign key is a column or combination of column that is used to establish a link between two tables.
-- 14.	Can a table have multiple foreign keys?
yes
-- 15.	Does a foreign key have to be unique? Can it be null?
Foreign key need not be unique and it can be null too
-- 16.	Can we create indexes on Table Variables or Temporary Tables?
NO
-- 17.	What is Transaction? What types of transaction levels are there in SQL Server?
Transaction is single recoverable unit of work that executes either working completely, or not at all.
There are 5 isolation levels, read uncommitted, read committed, repeatable read, serialiizable and snapshot isolation.

-- Write queries for following scenarios
-- 1.	Write an sql statement that will display the name of each customer and the sum of order totals placed by that customer during the year 2002
--  Create table customer(cust_id int primary key,  customer_name varchar (50)) 
--  Create table order(order_id int,cust_id int foreign key references customer(cust_id),amount decimal(10, 2),order_date datetime)

select CustomerID as cust_id , ContactName as iname into #customer

from Customers

select od.OrderID as order_id, CustomerID as cust_id , UnitPrice as amout, OrderDate as order_date into #order

from [Order Details] od join Orders o on o.OrderID=od.OrderID

select c.iname,sum(amout) from #customer c join #order o on c.cust_id = o.cust_id

where DATEPART(yyyy,order_date)='1996'

group by c.iname

--  2.  The following table is used to store information about company’s personnel:
-- Create table person (id int, firstname varchar(100), lastname varchar(100)) write a query that returns all employees whose last names  start with “A”.
declare @person table(id int,firstname nvarchar(100),lastName nvarchar(100))

insert into @person

select EmployeeID,FirstName,LastName from Employees

select * from @person where lastname like 'A%'

-- 3.  The information about company’s personnel is stored in the following table:
-- Create table person(person_id int primary key, manager_id int null, name varchar(100)not null) The filed managed_id contains the person_id of the employee’s manager.
-- Please write a query that would return the names of all top managers(an employee who does not have  a manger, and the number of people that report directly to this manager.

declare @person1 table(person_id int,manager_id int,name nvarchar(100))

insert into @person1

select EmployeeID,ReportsTo,FirstName+''+LastName from Employees

select person_id,(select count(*)  from @person1 p2 where p2.manager_id=p1.person_id group by manager_id) as numberOfEmployees from @person1 p1

where manager_id is null and person_id in (select manager_id from @person1)
-- 4.  List all events that can cause a trigger to be executed.
insert ,update, delete statements can cause trigger to happen
-- 5. Generate a destination schema in 3rd Normal Form.  Include all necessary fact, join, and dictionary tables, and all Primary and Foreign Key relationships.  The following assumptions can be made:
-- a. Each Company can have one or more Divisions.
-- b. Each record in the Company table represents a unique combination 
-- c. Physical locations are associated with Divisions.
-- d. Some Company Divisions are collocated at the same physical of Company Name and Division Name.
-- e. Contacts can be associated with one or more divisions and the address, but are differentiated by suite/mail drop records.status of each association should be separately maintained and audited.
