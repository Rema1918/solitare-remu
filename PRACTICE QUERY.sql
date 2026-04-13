-- Create TAble NAMED Students with the clumns as StudentID, Name, Age, Department

CREATE TABLE Students(
StudentId BIGINT,
Name NVARCHAR(20),
Age INT,
Department VARCHAR(20),
);
DROP TABLE Students

-- Add column Email to the Student Table

ALTER TABLE Students ADD Email VARCHAR(100);
INSERT INTO Students(StudentId,Name,Age,Department,Email) VALUES(129,'Remu',20,'CSE','remu@gmail.com');
INSERT INTO Students(StudentId,Name,Age,Department,Email) VALUES(139,'Rema',21,'CSE','rema@gmail.com');
INSERT INTO Students(StudentId,Name,Age,Department,Email) VALUES(144,'Sri',19,'CSE','sri@gmail.com');
select * from Students


--The details of the Sales.SalesPerson are stored in the SalesPerson table.
--The mamagement wants to view the deatils of the top three Sales persons who have earned bonus money between $4000 and $6000.

--QUERY

select * from Sales.SalesPerson
select TOP 3 * from Sales.SalesPerson WHERE Bonus BETWEEN $4000 AND $6000 ORDER BY Bonus DESC;


--Customer need a colorful product between the range of 500 and 1500.

--QUERY

select * from Production.Product WHERE Color IS NOT NULL and ListPrice BETWEEN 500 and 1500;
 
--Write a SQL query to retrieve nationalidnumber and department name by joining HumanResources.Employee,
--HumanResources.EmployeeDepartmentHistory and HumanResources.Department.

--QUERY

select Employee.NationalIDNumber,Department.Name as DepartmentName
from HumanResources.Employee
JOIN HumanResources.EmployeeDepartmentHistory
ON Employee.BusinessEntityID=EmployeeDepartmentHistory.BusinessEntityID
JOIN HumanResources.Department
ON EmployeeDepartmentHistory.DepartmentID=Department.DepartmentID


--I need total count of order placed by each Sales person along with display the total sum of SubTotal,
--max of tax amount paid and average of due per person.

--QUERY

select * from Sales.SalesOrderHeader

select SalesPersonID, COUNT(SalesPersonID) 'Count of Order Placed',
sum(SubTotal) 'Total sum of SubTotal', 
max(TaxAmt) 'Max of TaxAmt',
avg(TotalDue) 'Average of Total Due' 
from Sales.SalesOrderHeader WHERE SalesPersonID IS NOT NULL group by SalesPersonID;


--Show number of employees in each department 
--Tables: HumanResources.EmployeeDepartmentHistory,HumanResources.Department
--Output: Department Name Employee Count

--QUERY

select * from HumanResources.EmployeeDepartmentHistory
select * from HumanResources.Department

select HumanResources.Department.Name as 'Department Name', COUNT(Name) as 'EmployeeCount'
from HumanResources.Department
JOIN HumanResources.EmployeeDepartmentHistory
ON Department.DepartmentID = EmployeeDepartmentHistory.DepartmentID
group by HumanResources.Department.Name


--List all employees along with sales territory.
--Show if an employee is not assigned to any territory
--Show that TerritoryID as NULL

--Tables: HumanResources.Employee,Sales.SalesPerson
--Output: BusinessEntityId JobTitle  TerritoryId

--QUERY

select * from HumanResources.Employee
select * from Sales.SalesPerson

select Employee.BusinessEntityID,Employee.JobTitle,SalesPerson.TerritoryId
from HumanResources.Employee
LEFT JOIN Sales.SalesPerson
ON Employee.BusinessEntityID=SalesPerson.BusinessEntityID
WHERE TerritoryID IS NULL;
