-- EXPERIMENT 1(A)

CREATE DATABASE KRG3;
USE KRG3;


CREATE TABLE Author (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100),
    Country VARCHAR(100)
);


CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    Title VARCHAR(150),
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
);


INSERT INTO Author (AuthorID, AuthorName, Country)
VALUES 
(1, 'Chetan Bhagat', 'India'),
(2, 'Arundhati Roy', 'India'),
(3, 'R. K. Narayan', 'India'),
(4, 'J.K. Rowling', 'United Kingdom'),
(5, 'George R.R. Martin', 'United States'),
(6, 'Haruki Murakami', 'Japan'),
(7, 'Paulo Coelho', 'Brazil'),
(8, 'Albert Camus', 'France');


INSERT INTO Book (BookID, Title, AuthorID)
VALUES
(101, 'Five Point Someone', 1),
(102, 'The 3 Mistakes of My Life', 1),
(103, 'The God of Small Things', 2),
(104, 'Swami and Friends', 3),
(105, 'The Guide', 3),
(106, 'Harry Potter and the Philosopher''s Stone', 4),
(107, 'A Game of Thrones', 5),
(108, 'Kafka on the Shore', 6),
(109, 'The Alchemist', 7),
(110, 'The Stranger', 8);


SELECT 
    B.Title AS BookTitle,
    A.AuthorName,
    A.Country
FROM 
    Book B
INNER JOIN 
    Author A ON B.AuthorID = A.AuthorID;
