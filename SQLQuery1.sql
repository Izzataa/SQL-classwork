CREATE DATABASE [Library]
USE [Library]
CREATE TABLE Book(
Id INT PRIMARY KEY IDENTITY,
[NAME] NVARCHAR(50) NOT NULL,
Author NVARCHAR (50) NOT NULL,
Price FLOAT (10),
[Count] INT 
)
SELECT * from Book

INSERT INTO Book
VALUES ( 'Nino','Shopen', 55.15, 3),
( 'Ali','Bach', 70.15, 1),
( 'Set','Seven', 18.15, 2)


SELECT MAX (Price) FROM Book
SELECT [Name] 
FROM Book
WHERE Price = (SELECT MAX (Price) FROM Book) 

 SELECT Book.Author, COUNT (Book.Author)
 FROM Book
 Group by Book.Author
 