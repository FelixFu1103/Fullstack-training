
-- 1
select p.ProductID, p.Name, p.Color, p.ListPrice
from Production.Product p
 
-- 2
select p.ProductID, p.Name, p.Color, p.ListPrice
from Production.Product p where p.ListPrice = 0
 
-- 3
select p.ProductID, p.Name, p.Color, p.ListPrice
from Production.Product p where p.Color is null
 
-- 4
select p.ProductID, p.Name, p.Color, p.ListPrice
from Production.Product p where p.Color is not null
 
-- 5
select p.ProductID, p.Name, p.Color, p.ListPrice
from Production.Product p where p.Color is not null and p.ListPrice > 0
 
-- 6
select p.Name, p.Color from Production.Product p where color is not null
 
-- 7
select p.Name, p.Color from Production.Product p where color is not null
 
--8
select p.ProductID, p.Name from Production.Product p
where p.ProductID BETWEEN 400 and 500
 
--9 
select p.ProductID, p.Name, p.Color from Production.Product p
where p.Color in('black', 'blue')
 
--10
select p.ProductID, p.Name from Production.Product p
where p.Name like 'S%'
 
-11
select p.Name, p.ListPrice from Production.Product p
where p.Name like 'S%' order by p.Name
 
--12
select p.Name, p.ListPrice from Production.Product p
where p.Name like 'S%' OR p.Name like 'A%' order by p.Name
 
--13
select p.Name, p.ListPrice from Production.Product p
where p.Name like 'SPO%' and p.Name not like 'K%' order by p.Name
 
--14
 
select distinct p.Color from Production.Product p
order by p.Color DESC
 
--15
select p.ProductSubcategoryID, p.Color from Production.Product p
where p.ProductSubcategoryID is not null and p.Color is not null
 
--16
SELECT ProductSubCategoryID
     , LEFT([Name],35) AS [Name]
     , Color, ListPrice
FROM Production.Product
WHERE Color IN ('Red','Black')
     OR ListPrice BETWEEN 1000 AND 2000
     AND ProductSubCategoryID = 1
ORDER BY ProductID
 
--17
SELECT p.ProductSubCategoryID
     ,p.Name
     , p.Color, p.ListPrice
FROM Production.Product p where p.ProductSubcategoryID < 15
and p.ProductSubcategoryID is not null
ORDER BY ProductSubCategoryID DESC
