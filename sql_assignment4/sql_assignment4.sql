-- 1
-- Views can provide advantages over tables: Views can represent a subset of the data contained in a table. Consequently, a view can limit the degree of exposure of the underlying tables to the outer world: a given user may have permission to query the view, while denied access to the rest of
-- the table


--2
-- You can't modify data in views that use GROUP BY or DISTINCT statements. All columns being modified are subject to the same restrictions as if the statements were being executed directly against the base table.

--3
-- Stored procedures are compiled once and stored in executable form, so procedure calls are quick and efficient. ... By grouping SQL statements, a stored procedure allows them to be executed with a single call. This minimizes the use of slow networks, reduces network 

--4
-- View is simple showcasing data stored in the database tables whereas a stored procedure is a group of statements that can be executed. A view is faster as it displays data from the tables referenced whereas a store procedure executes sql statements.

--5
-- In a function, it is mandatory to use the RETURNS and RETURN arguments, whereas in a stored procedure is not necessary. In few words, a stored procedure is more flexible to write any code that you want, while functions have a rigid structure and functionality.

--6
-- Most stored procedures return multiple result sets. Such a stored procedure usually includes one or more select statements. The consumer needs to consider this inclusion to handle all the result sets.

--7
-- Stored procedures are typically executed with an EXEC statement. However, you can execute a stored procedure implicitly from within a SELECT statement, provided that the stored procedure returns a result set.

--8
-- A trigger defines a set of actions that are performed in response to an insert, update, or delete operation on a specified table. When such an SQL operation is executed, the trigger is said to have been activated. Triggers are optional and are defined using the CREATE TRIGGER statement.
-- DDL Trigger.
-- DML Trigger.
-- Logon Trigger.

--9
-- A trigger is a special type of stored procedure that automatically runs when an event occurs in the database server. DML triggers run when a user tries to modify data through a data manipulation language (DML) event. DML events are INSERT, UPDATE, or DELETE statements on a table or view.

--10
-- A stored procedure is a user defined piece of code written in the local version of PL/SQL, which may return a value (making it a function) that is invoked by calling it explicitly. A trigger is a stored procedure that runs automatically when various events happen (eg update, insert, delete).

--1

	insert Territories values('00000', 'Gondor',1)
	insert EmployeeTerritories values(1,'00000')
	insert Employees values(1,'Aragon','King',null,null,null,null,null,null,'Middle Earth',null,null,null,null,null,null,null,null)

--2.	
	update Territories
	set TerritoryDescription = 'Arnor'
	where TerritoryID = '00000'

--3.	Delete Region “Middle Earth”. (tip: remove referenced data first) (Caution: do not forget WHERE or you will delete everything.) In case of an error, no changes should be made to DB. Unlock the tables mentioned in question 1.
	delete from Employees
	where Region = 'Middle Earth'

--4.	Create a view named “view_product_order_[your_last_name]”, list all products and total ordered quantity for that product.
	create view view_product_order_[kim] as
	select p.ProductID, sum(od.Quantity)
	from Products p join [Order Details] od
	on p.ProductID = od.ProductID
	group by p.ProductID

--5.	Create a stored procedure “sp_product_order_quantity_[your_last_name]” that accept product id as an input and total quantities of order as output parameter.
	create procedure sp_product_order_quantity_[Kim] 
	@Pid int 
	@TotalOrder int output
	as
	select 
	@TotalOrder = sum(od.Quantity)
	from [Order Details] od, Products p
	on od.ProductID = p.ProductID
	group by  p.ProductID

--6.	Create a stored procedure “sp_product_order_city_[your_last_name]” that accept product name as an input and top 5 cities that ordered most that product combined with the total quantity of that product ordered from that city as output.
	create procedure sp_product_order_city_[Kim]
	@PName nvarchar(40)
	@VCity output
	@Total output
	as
	select top 5 c.City, sum(od.Quantity)
	from [Order Details] od inner join Products p
	on p.ProductName = @Pname and p.ProductID = od.ProductID
	inner join Orders o
	on o.OrderID = od.OrderID
	inner join Customers c
	on c.CustomerID = o.CustomerID
	group by c.City
	order by sum(od.Quantity) desc
	
--7.	Lock tables Region, Territories, EmployeeTerritories and Employees. Create a stored procedure “sp_move_employees_[your_last_name]” that automatically find all employees in territory “Tory”; if more than 0 found, insert a new territory “Stevens Point” of region “North” to the database, and then move those employees to “Stevens Point”.
	create procedure sp_move_employees_[Kim]
	as
	select *
	from EmployeeTerritories et inner join Territories t
	on t.TerritoryID = et.TerritoryID
	inner join Employees e
	on et.EmployeeID = e.EmployeeID
	where t.TerritoryDescription = 'Tory'

--8.	Create a trigger that when there are more than 100 employees in territory “Stevens Point”, move them back to Troy. (After test your code,) remove the trigger. Move those employees back to “Troy”, if any. Unlock the tables.
--9.	Create 2 new tables “people_your_last_name” “city_your_last_name”. City table has two records: {Id:1, City: Seattle}, {Id:2, City: Green Bay}. People has three records: {id:1, Name: Aaron Rodgers, City: 2}, {id:2, Name: Russell Wilson, City:1}, {Id: 3, Name: Jody Nelson, City:2}. Remove city of Seattle. If there was anyone from Seattle, put them into a new city “Madison”. Create a view “Packers_your_name” lists all people from Green Bay. If any error occurred, no changes should be made to DB. (after test) Drop both tables and view.
--10.	 Create a stored procedure “sp_birthday_employees_[you_last_name]” that creates a new table “birthday_employees_your_last_name” and fill it with all employees that have a birthday on Feb. (Make a screen shot) drop the table. Employee table should not be affected.
--11.	Create a stored procedure named “sp_your_last_name_1” that returns all cites that have at least 2 customers who have bought no or only one kind of product. Create a stored procedure named “sp_your_last_name_2” that returns the same but using a different approach. (sub-query and no-sub-query).
--12.	How do you make sure two tables have the same data?
	if after union two table, the number of row is still same,
	amd if after union all two table, the number of row become twice,
	then they have same data.


--14. create table t2(varchar(20))
	insert t2 values('FullName')
	insert t2 values(select (t.FirstName+' 't.LastName) as FullName from t1 t)

--15. 
select top 1 t.Student
	from t1 t
	where t. Sex = 'F'
	order by t.Marks

--16. output will be 'Li' the way to output is same as Q15