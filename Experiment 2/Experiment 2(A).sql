-- Step 1: Drop the table if it already exists
DROP TABLE IF EXISTS EMPLOYEE;

-- Step 2: Create the EMPLOYEE table
CREATE TABLE EMPLOYEE (
    EMP_ID INT PRIMARY KEY,
    EMP_NAME VARCHAR(25),
    DEPARTMENT VARCHAR(25),
    MANAGER_ID INT
);

-- Step 3: Insert the provided data
INSERT INTO EMPLOYEE (EMP_ID, EMP_NAME, DEPARTMENT, MANAGER_ID) 
VALUES 
    (1, 'Tanmay', 'manager', NULL), 
    (2, 'Harsh', 'finance', 1), 
    (3, 'Hema', 'it', 1), 
    (4, 'Sahil', 'finance', 2), 
    (5, 'Eva', 'it', 3), 
    (6, 'Frank', 'hr', 1);

-- Step 4: Self-join query to get employee-manager relationship
SELECT 
    E.EMP_NAME AS [Employee Name],
    COALESCE(M.EMP_NAME, 'No Manager') AS [Manager Name],
    E.DEPARTMENT AS [Employee Department],
    M.DEPARTMENT AS [Manager Department]
FROM 
    EMPLOYEE E
LEFT JOIN 
    EMPLOYEE M
ON 
    E.MANAGER_ID = M.EMP_ID;
