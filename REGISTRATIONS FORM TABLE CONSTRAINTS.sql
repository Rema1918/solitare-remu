CREATE TABLE Paavai(
Student_id INT PRIMARY KEY,
Name NVARCHAR(20) NOT NULL,
Rollno BIGINT NOT NULL,
Dateofbirth DATE NOT NULL,
Age INT CHECK(age >= 18) NOT NULL,
Nationality VARCHAR(50) DEFAULT 'INDIAN',
Gender VARCHAR(6) CHECK(Gender = 'Female' OR Gender='Male' OR Gender='Others') NOT NULL,
State VARCHAR(20) DEFAULT 'TAMILNADU'
);

DROP TABLE Paavai
SELECT * FROM Paavai
INSERT INTO Paavai(Student_id, Name, Rollno, Dateofbirth, Age, Nationality, Gender, State)
VALUES(129,'Remu',1449,'2005-09-18',21,'INDIAN','Female','TAMILNADU');
INSERT INTO Paavai(Student_id, Name, Rollno, Dateofbirth, Age, Nationality, Gender, State)
VALUES(130,'Rema',1448,'2006-02-19',21,'INDIAN','Female','TAMILNADU');
INSERT INTO Paavai(Student_id, Name, Rollno, Dateofbirth, Age, Nationality, Gender, State)
VALUES(131,'Sri',1439,'2006-04-21',21,'INDIAN','Female','TAMILNADU');
INSERT INTO Paavai(Student_id, Name, Rollno, Dateofbirth, Age, Nationality, Gender, State)
VALUES(132,'Srinisha',1634,'2006-01-24',21,'INDIAN','Female','TAMILNADU');
INSERT INTO Paavai(Student_id, Name, Rollno, Dateofbirth, Age, Nationality, Gender, State)
VALUES(144,'Saran',1442,'2005-09-19',22,'INDIAN','Male','TAMILNADU');
INSERT INTO Paavai(Student_id, Name, Rollno, Dateofbirth, Age, Nationality, Gender, State)
VALUES(138,'Sanjay',1447,'2006-08-19',21,'INDIAN','Male','TAMILNADU');