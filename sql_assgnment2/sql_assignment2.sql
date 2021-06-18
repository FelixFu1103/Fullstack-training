--1
Result set is a set of data, could be empty or not, returned by a select statement, or a stored procedure, that is saved in RAM or displayed on the screen.
 
--2 
The difference is that union all will accept duplicate rows 
 
--3
Intersect, except
--4
Join is used to fetch data from columns in two or more tables, while union is used to fetch data from rows.
--5
Inner join brings the data from left and right table which satisfy the condition, full join brings all the records from both tables, for non matching records will return null
--6
left join returns all the records that have values in either left or right table, left join brings all the records from the left table and only those records from the right table which satisfy the join condition. for non matching records right table will return null values
 
--7
Cross join returns the Cartesian product of the sets of records from the two joined tables. Thus, it equates to an inner join where the join-condition always evaluates to True.
 
--8
The main difference between them is that the WHERE clause is used to specify a condition for filtering records before any groupings are made, while the HAVING clause is used to specify a condition for filtering values from a group.
--9
Can contain two or more columns
--1
select count(p.ProductID)
from Production.Product p
--2
select (select count(p.ProductID)
from Production.Product p)
+
(select count(p.ProductSubcategoryID)
from Production.Product p) as "Num of Product"
--3
select p.ProductSubcategoryID, count(p.ProductSubcategoryID) as "CountedProducts"
from Production.Product p group by p.ProductSubcategoryID
--4
select count(p.ProductID)
from Production.Product p where p.ProductSubcategoryID is null
 
 
--5
select p.ProductID, sum(p.Quantity) as "Quantity"
from Production.ProductInventory p group by p.ProductID
 
--6
select p.ProductID, sum(p.Quantity) as "TheSum"
from Production.ProductInventory p
where p.LocationID = 40
group by p.ProductID
HAVING sum(p.Quantity) < 100
 
--7
select p.Shelf, p.ProductID, sum(p.Quantity) as "TheSum"
from Production.ProductInventory p
where p.LocationID = 40
GROUP BY p.Shelf, p.ProductID
HAVING sum(p.Quantity) < 100
 
--8
select p.Shelf, p.ProductID, avg(p.Quantity) as "TheAvg"
from Production.ProductInventory p
where p.LocationID = 10
GROUP BY p.Shelf, p.ProductID
 
--9
select p.ProductID, p.Shelf, avg(p.Quantity) as "TheAvg"
from Production.ProductInventory p
GROUP BY p.ProductID, p.Shelf
 
--10
select p.ProductID, p.Shelf, avg(p.Quantity) as "TheAvg"
from Production.ProductInventory p
where p.Shelf != 'N/A'
GROUP BY p.ProductID, p.Shelf
 
--11
select p.Color, p.Class, count(p.Color) as "TheCount", avg(p.ListPrice) as "AvgPrice"
from Production.Product p
where p.Color is not Null and  p.Class is not null
group by p.Color, p.Class
 
--12
 
SELECT c.Name, s.Name
from Person.CountryRegion c
join Person.StateProvince s
on c.CountryRegionCode = s.CountryRegionCode
 
--13
SELECT c.Name, s.Name
from Person.CountryRegion c
join Person.StateProvince s
on c.CountryRegionCode = s.CountryRegionCode
where c.Name in ('Canada', 'Germany')
 
--14
select d.ProductID as "ProductId", o.OrderDate as "OrderDate"
from [Order Details] d
join Orders o on d.[OrderID] = o.[OrderID]
where o.OrderDate BETWEEN '1996-06-17' AND '2021-06-17'
 
--15
select top 5 o.ShipPostalCode, count(o.OrderID) as "TotalOrder"
from Orders o
GROUP BY o.ShipPostalCode
ORDER BY count(o.OrderID) desc
 
--16
select o.ShipPostalCode, count(o.OrderID) as "TotalOrder"
from Orders o
where o.OrderDate BETWEEN '2001-06-17' AND '2021-06-17'
GROUP BY o.ShipPostalCode,o.OrderID
ORDER BY count(o.OrderID) desc
 
--17
select c.City, count(c.CustomerID) as "Count"
from Customers c
GROUP BY c.City
 
--18
select c.City, count(c.CustomerID) as "Count"
from Customers c
GROUP BY c.City
having count(c.CustomerID) > 10
 
--19
select c.ContactName
from Customers c
join Orders o on c.CustomerID = o.CustomerID
where o.OrderDate > '1998-01-01'
GROUP BY c.ContactName
 
--20
select c.ContactName as "CustomerName", o.OrderDate
from Customers c
join Orders o on c.CustomerID = o.CustomerID
GROUP BY c.ContactName, o.OrderDate
ORDER BY o.OrderDate desc
 
--21
 
select c.ContactName as "CustomerName", count(o.OrderID) as "Count"
from Customers c
join Orders o on c.CustomerID = o.CustomerID
GROUP BY c.ContactName
ORDER BY count(o.OrderID) desc
 
--22
select c.CustomerID as "CustomerId", count(o.OrderID) as "Count"
from Customers c
join Orders o on c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
HAVING count(o.OrderID) > 100
ORDER BY count(o.OrderID) desc
 
--23
select FirstSet.SupplierCompany, SecondSet.ShipCompany
FROM
(
   select s.CompanyName as "SupplierCompany"
   from Suppliers s
   join Products p on s.SupplierID = p.SupplierID
) as FirstSet
INNER JOIN
(
   select ship.CompanyName as "ShipCompany"
   from Shippers ship
   join Orders o on ship.ShipperID = o.ShipVia
) as SecondSet
on count(FirstSet.SupplierCompany) = count(SecondSet.ShipCompany)
GROUP by FirstSet.SupplierCompany
 
--24
select o.OrderDate as "OrderDate", p.ProductName as "ProductName"
from Orders o
join [Order Details] d on o.OrderID = d.OrderID
join Products p on d.ProductID = p.ProductID
GROUP BY o.OrderDate, p.ProductName
 
--25
SELECT
e1.Title, e1.EmployeeID,
e2.Title, e2.EmployeeID
from Employees e1, Employees e2
where e1.Title = e2.Title
and e1.EmployeeID <> e2.EmployeeID
 
--26
select e.EmployeeID as "ManagerID"
from Employees e
where e.Title = 'Sales Manager'
GROUP BY e.EmployeeID
having (
   select count(e.ReportsTo)
   from Employees e
   where e.ReportsTo = (select e.EmployeeID as "ManagerID"
   from Employees e
   where e.Title = 'Sales Manager')
) > 2
 
--27
select c.City, c.CompanyName, c.ContactName, c.Relationship
from [Customer and Suppliers by City] c
join Suppliers s on c.City = s.City
 
--28
select FirstSet.[F1.T1], SecondSet.[F2.T2]
from
(
   select F1.T1 as "F1.T1"
   from T1 t1
) as FirstSet
INNER JOIN
(
   select F2.T2 as "F2.T2"
   from T2 t2
) as SecondSet
on FirstSet.[F1.T1] = SecondSet.[F2.T2]
 
--29
select F1.T1
from T1
left join T2
on T1.F1.T1 = T2.F2.T2
 
 
