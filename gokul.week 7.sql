CREATE DATABASE STEPSTYLE;

USE STEPSTYLE;

CREATE TABLE Product
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);

INSERT INTO Product VALUES
(101, 'Running Shoe', 'Sports', 2500, 20),
(102, 'Casual Shoe', 'Casual', 1800, 15),
(103, 'Formal Shoe', 'Formal', 2200, 12),
(104, 'Sneaker', 'Sneakers', 3000, 18),
(105, 'Sandals', 'Sandals', 900, 25),
(106, 'Sports Shoe', 'Sports', 2800, 10),
(107, 'Casual Sneaker', 'Casual', 2100, 14),
(108, 'Formal Shoe', 'Formal', 2400, 8);


SELECT * FROM Product;


SELECT DISTINCT Category FROM Product;


SELECT * FROM Product
WHERE Price > 2000;


SELECT * FROM Product
ORDER BY Price DESC;