-- EXPERIMENT 2(A)

-- Actual NPV Values Table
CREATE TABLE Year_tbl (
  ID INT,
  YEAR INT,
  NPV INT
)

-- Queries Table
CREATE TABLE Queries (
  ID INT,
  YEAR INT
)

-- Insert data into Year_tbl
INSERT INTO Year_tbl (ID, YEAR, NPV) VALUES
(1, 2018, 100),
(7, 2020, 30),
(13, 2019, 40),
(1, 2019, 113),
(2, 2008, 121),
(3, 2009, 12),
(11, 2020, 99),
(7, 2019, 0)

-- Insert data into Queries
INSERT INTO Queries (ID, YEAR) VALUES
(1, 2019),
(2, 2008),
(3, 2009),
(7, 2018),
(7, 2019),
(7, 2020),
(13, 2019)

-- LEFT JOIN to fetch NPV for given ID and YEAR
SELECT 
  y1.ID, 
  y1.YEAR, 
  ISNULL(y2.NPV, 0)
FROM Queries AS y1
LEFT OUTER JOIN Year_tbl AS y2 
ON y1.ID = y2.ID AND y1.YEAR = y2.YEAR
