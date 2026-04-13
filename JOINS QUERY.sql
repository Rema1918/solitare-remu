--CREATING QUERY WITH JOINS (INNER, LEFT, RIGHT, FULL OUTER, CROSS JOINS):

select * from Person.Person
select * from Person.EmailAddress

select FirstName,LastName,MiddleName ,EmailAddress from Person.Person
JOIN Person.EmailAddress
ON Person.BusinessEntityID = Emailaddress.BusinessEntityID -- Select the column_name from table_name and JOIN next table_name using ON table_name.column_name

select * from HumanResources.Employee
select * from HumanResources.EmployeeDepartmentHistory
select * from HumanResources.Shift

select * from HumanResources.Employee
LEFT JOIN HumanResources.EmployeeDepartmentHistory
ON Employee.BusinessEntityID = EmployeeDepartmentHistory.BusinessEntityID
LEFT JOIN HumanResources.Department
ON Department.DepartmentID = EmployeeDepartmentHistory.DepartmentID
LEFT JOIN HumanResources.Shift
ON Shift.ShiftID = EmployeeDepartmentHistory.ShiftID;

select * from HumanResources.Employee
RIGHT JOIN HumanResources.EmployeeDepartmentHistory
ON Employee.BusinessEntityID = EmployeeDepartmentHistory.BusinessEntityID
RIGHT JOIN HumanResources.Department
ON Department.DepartmentID = EmployeeDepartmentHistory.DepartmentID
RIGHT JOIN HumanResources.Shift
ON Shift.ShiftID = EmployeeDepartmentHistory.ShiftID;
