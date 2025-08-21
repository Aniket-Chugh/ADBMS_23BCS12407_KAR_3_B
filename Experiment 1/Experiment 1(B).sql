-- EXPERIMENT 1(B)

USE KRG3


CREATE TABLE Employee_tbl (
    EmpId INT PRIMARY KEY,
    EmpName VARCHAR(100),
    Designation VARCHAR(100),
    Salary INT
);


CREATE TABLE department (
    DeptId INT PRIMARY KEY,
    DeptName VARCHAR(100),
    EmpId INT,
    FOREIGN KEY (EmpId) REFERENCES Employee_tbl(EmpId)
);


INSERT INTO Employee_tbl (EmpId, EmpName, Designation, Salary) VALUES
(1, 'Tanmay', 'Backend Developer', 20000000),
(2, 'Neha', 'Business Analyst', 61000),
(3, 'Karan', 'Graphic Designer', 53000),
(4, 'Priya', 'HR Executive', 64000);


INSERT INTO department (DeptId, DeptName, EmpId) VALUES
(201, 'Development', 1),
(202, 'Business Intelligence', 2),
(203, 'Creative', 3),
(204, 'Human Resources', 4);


SELECT * FROM Employee_tbl;
SELECT * FROM department;


SELECT Employee_tbl.*, department.*
FROM Employee_tbl 
INNER JOIN department 
ON Employee_tbl.EmpId = department.EmpId;


SELECT 
  E.Designation, 
  E.EmpName, 
  D.DeptName
FROM Employee_tbl AS E
INNER JOIN department AS D
ON E.EmpId = D.EmpId;


SELECT Employee_tbl.*, department.*
FROM Employee_tbl 
LEFT OUTER JOIN department 
ON Employee_tbl.EmpId = department.EmpId;


SELECT Employee_tbl.*, department.*
FROM Employee_tbl 
RIGHT OUTER JOIN department 
ON Employee_tbl.EmpId = department.EmpId;


SELECT Employee_tbl.*, department.*
FROM Employee_tbl 
FULL OUTER JOIN department 
ON Employee_tbl.EmpId = department.EmpId;


ALTER TABLE Employee_tbl
ADD ManagerId INT;


UPDATE Employee_tbl
SET ManagerId = NULL WHERE EmpId = 1;  

UPDATE Employee_tbl
SET ManagerId = 1 WHERE EmpId IN (2, 3);  

UPDATE Employee_tbl
SET ManagerId = 2 WHERE EmpId = 4;        


SELECT 
  E1.EmpName AS [Employee Name], 
  E2.EmpName AS [Manager Name],
  D1.DeptName AS [Employee Dept], 
  D2.DeptName AS [Manager Dept]
FROM Employee_tbl E1
LEFT JOIN Employee_tbl E2 ON E1.ManagerId = E2.EmpId
LEFT JOIN department D1 ON E1.EmpId = D1.EmpId
LEFT JOIN department D2 ON E2.EmpId = D2.EmpId;


