SELECT * from HumanResources.Department
SELECT * from Sales.SalesOrderDetail
SELECT * from Person.PersonPhone

CREATE TABLE Details(
Department VARCHAR(20),
Name VARCHAR(20),
RegisterNo BIGINT
)

select * from Details

--TABLE CREATION USING ALTER, UPDATE, DELETE

CREATE TABLE Attendance(
Name VARCHAR(20),
Department VARCHAR(20),
RegisterNumber BIGINT
);

select * from Attendance
ALTER TABLE Attendance ALTER COLUMN Name NVARCHAR(20);
select * from Attendance
ALTER TABLE Attendance ADD RollNumber BIGINT;
select * from Attendance
INSERT INTO Attendance (Name,Department,RegisterNumber,RollNumber) VALUES('Remu','Cse',24,29);
INSERT INTO Attendance (Name,Department,RegisterNumber,RollNumber) VALUES('Sri','Cse',14,14);
select * from Attendance
ALTER TABLE Attendance ADD Date DATETIME;
INSERT INTO Attendance (Name,Department,RegisterNumber,RollNumber,Date) VALUES('Nisha','Cse',24,63,'2026-04-09 08:16:30');
INSERT INTO Attendance (Name,Department,RegisterNumber,RollNumber,Date) VALUES('Sri','Cse',14,70,'2026-03-12 10:10:25');
DELETE from Attendance
UPDATE Attendance SET Department='Cse' WHERE Name='Nisha';

CREATE TABLE Students(
StudentId BIGINT,
Name NVARCHAR(20),
Age INT,
Department VARCHAR(20),
);
ALTER TABLE Students ADD Email VARCHAR(100);

