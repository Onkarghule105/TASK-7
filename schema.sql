CREATE DATABASE DB;
USE DB;

CREATE TABLE Employees2 (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);
INSERT INTO Employees2 VALUES (1, 'Alice', 'HR', 40000), (2, 'Bob', 'IT', 60000);

CREATE TABLE Departments2 (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50),
    Location VARCHAR(50)
);
INSERT INTO Departments2 VALUES (101, 'HR', 'Pune'), (102, 'IT', 'Mumbai');

-- VIEW CREATION 
CREATE VIEW HR_Employees AS
SELECT Name, Salary
FROM Employees2
WHERE Department = 'HR';
-- USE VIEW
SELECT * FROM HR_Employees;

-- SECURE DATA  By Restrict columns or rows in a view

CREATE VIEW PublicEmployeeData AS
SELECT Name
FROM Employees;

-- USE PublicEmployeeData
 SELECT * FROM PublicEmployeeData;

-- DROPING A VIEW
DROP VIEW PublicEmployeeData;
SELECT * FROM PublicEmployeeData;

-- WITH CHECK OPTION 
CREATE VIEW IT_Employees AS
SELECT * FROM Employees
WHERE Department = 'IT'
WITH CHECK OPTION;

SELECT * FROM IT_Employees;

