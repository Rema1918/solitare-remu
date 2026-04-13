--CREATING QUERY (AND, OR, LIKE(A%,_O%,%Z%), IN, IS NULL, IS NOT NULL, ORBER BY, ASC, DESC OPERATORS):

select * from Person.Person

select * from Person.Person WHERE BusinessEntityID>2000 -- This is to check whether the BusinessentityID > 2000 using WHERE condition
select FirstName,LastName,MiddleName from Person.Person WHERE BusinessEntityID>2000
select FirstName,LastName,MiddleName from Person.Person WHERE BusinessEntityID>2000 AND FirstName='Ken'
select FirstName,LastName,MiddleName from Person.Person WHERE FirstName LIKE 'K%H'; -- This is to check whether first letter K and Last letter H
select FirstName,LastName,MiddleName from Person.Person WHERE LastName LIKE '%Z%'; -- This is to check whether Z in any place
select FirstName,LastName,MiddleName from Person.Person WHERE FirstName LIKE '_e%'; -- This is to check whether second letter e
select FirstName,LastName,MiddleName from Person.Person WHERE FirstName IN('Kim','Ken'); -- This is to check whether ken and kim in firstname
select FirstName,LastName,MiddleName from Person.Person WHERE MiddleName IS NULL; -- This is to check whether the column is to be NULL
select FirstName,LastName,MiddleName from Person.Person WHERE MiddleName IS NOT NULL; -- This is to check whether there is no NULL in the column 
select FirstName,LastName,MiddleName from Person.Person ORDER BY FirstName ASC; -- Sort the column in ascending using ORDER BY
select FirstName,LastName,MiddleName from Person.Person ORDER BY FirstName DESC; -- Sort the column in descending using ORDER BY
	

