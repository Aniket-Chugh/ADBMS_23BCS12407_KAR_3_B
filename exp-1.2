
-- Experiment 1 (b)
CREATE DATABASE AcademicDB;
USE AcademicDB;

CREATE TABLE Departments
(
    dept_code INT PRIMARY KEY,
    dept_title VARCHAR(80)
);

CREATE TABLE Subjects
(
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(120),
    dept_code INT,
    FOREIGN KEY (dept_code) REFERENCES Departments(dept_code)
);

INSERT INTO Departments
    (dept_code, dept_title)
VALUES
    (10, 'Information Technology'),
    (20, 'Chemical Engineering'),
    (30, 'Electronics'),
    (40, 'Architecture'),
    (50, 'Statistics');

INSERT INTO Subjects
    (subject_id, subject_name, dept_code)
VALUES
    (1001, 'Algorithms', 10),
    (1002, 'Computer Networks', 10),
    (1003, 'Database Systems', 10),
    (1004, 'Heat Transfer', 20),
    (1005, 'Chemical Kinetics', 20),
    (1006, 'Digital Circuits', 30),
    (1007, 'Control Systems', 30),
    (1008, 'Building Design', 40),
    (1009, 'Probability', 50),
    (1010, 'Statistical Methods', 50);



SELECT dept_title
FROM Departments
WHERE dept_code IN (
    SELECT dept_code
FROM Subjects
GROUP BY dept_code
HAVING COUNT(subject_id) >= 3
);
