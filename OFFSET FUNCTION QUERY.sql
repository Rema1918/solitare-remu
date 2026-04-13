--OFFSET FETCH FUNCTIONS

select FirstName from Person.Person 
order by FirstName -- order the column using the ORDER BY clause
offset 10 rows -- This is to remove 10 rows using OFFSET
fetch next 5 rows only; -- And add next 5 rows using FETCH 

select Name from Production.Product 
order by Name 
offset 5 rows 
fetch next 5 rows only;

select BusinessEntityID from Sales.SalesPerson
order by BusinessEntityID
offset  10 rows 
fetch next 7 rows only;
