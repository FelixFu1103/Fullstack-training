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

CREATE PROCEDURE lock
AS
LOCK TABLE Region
GO;

-- INSERT INTO Region(RegionID, RegionDescription) WITH (HOLDLOCK) VALUES(5, "Middle Earth")