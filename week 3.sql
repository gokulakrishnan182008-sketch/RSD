CREATE DATABASE SHOE_MART;

USE SHOE_MART;

CREATE TABLE Seller
(
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(100),
    ContactNo VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(150)
);

INSERT INTO Seller VALUES
(201, 'NIKE STORE', '9876100001', 'nikestore@gmail.com', 'Chennai'),
(202, 'PUMA STORE', '9876100002', 'pumastore@gmail.com', 'Madurai'),
(203, 'ADIDAS STORE', '9876100003', 'adidasstore@gmail.com', 'Coimbatore'),
(204, 'BATA STORE', '9876100004', 'batastore@gmail.com', 'Salem'),
(205, 'SPARX STORE', '9876100005', 'sparxstore@gmail.com', 'Trichy'),
(206, 'CAMPUS STORE', '9876100006', 'campusstore@gmail.com', 'Chennai'),
(207, 'WOODLAND STORE', '9876100007', 'woodlandstore@gmail.com', 'Madurai'),
(208, 'RED TAPE STORE', '9876100008', 'redtapestore@gmail.com', 'Coimbatore'),
(209, 'RELAXO STORE', '9876100009', 'relaxostore@gmail.com', 'Salem'),
(210, 'FILA STORE', '9876100010', 'filastore@gmail.com', 'Trichy'),
(211, 'REEBOK STORE', '9876100011', 'reebokstore@gmail.com', 'Chennai'),
(212, 'ASICS STORE', '9876100012', 'asicsstore@gmail.com', 'Madurai'),
(213, 'LIBERTY STORE', '9876100013', 'libertystore@gmail.com', 'Coimbatore'),
(214, 'VAN HEUSEN STORE', '9876100014', 'vanheusenstore@gmail.com', 'Salem'),
(215, 'SKECHERS STORE', '9876100015', 'skechersstore@gmail.com', 'Trichy'),
(216, 'UNDER ARMOUR', '9876100016', 'underarmour@gmail.com', 'Chennai'),
(217, 'CONVERSE STORE', '9876100017', 'conversestore@gmail.com', 'Madurai'),
(218, 'NEW BALANCE', '9876100018', 'newbalance@gmail.com', 'Coimbatore'),
(219, 'CROCS STORE', '9876100019', 'crocsstore@gmail.com', 'Salem'),
(220, 'ACTION STORE', '9876100020', 'actionstore@gmail.com', 'Trichy'),
(221, 'FRESH STEPS', '9876100021', 'freshsteps@gmail.com', 'Chennai'),
(222, 'FOOT WORLD', '9876100022', 'footworld@gmail.com', 'Madurai'),
(223, 'SHOE POINT', '9876100023', 'shoepoint@gmail.com', 'Coimbatore'),
(224, 'STEP ZONE', '9876100024', 'stepzone@gmail.com', 'Salem'),
(225, 'FOOT CARE', '9876100025', 'footcare@gmail.com', 'Trichy'),
(226, 'STYLE SHOES', '9876100026', 'styleshoes@gmail.com', 'Chennai'),
(227, 'SPORTS HUB', '9876100027', 'sportshub@gmail.com', 'Madurai'),
(228, 'SHOE MART', '9876100028', 'shoemart@gmail.com', 'Coimbatore'),
(229, 'FASHION FEET', '9876100029', 'fashionfeet@gmail.com', 'Salem'),
(230, 'SMART STEPS', '9876100030', 'smartsteps@gmail.com', 'Trichy');

SELECT * FROM Seller;


CREATE TABLE Product
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Brand VARCHAR(50),
    Category VARCHAR(50),
    Size VARCHAR(10),
    Color VARCHAR(30),
    Price DECIMAL(10,2)
);

INSERT INTO Product VALUES
(101, 'Running Shoes', 'Nike', 'Sports Shoes', '8', 'Black', 2500),
(102, 'Casual Sneakers', 'Puma', 'Casual Shoes', '9', 'White', 2200),
(103, 'Formal Shoes', 'Bata', 'Formal Shoes', '8', 'Brown', 1800),
(104, 'Sports Shoes', 'Adidas', 'Sports Shoes', '10', 'Blue', 3000),
(105, 'Walking Shoes', 'Sparx', 'Walking Shoes', '7', 'Grey', 1500),

(106, 'Running Shoes', 'Campus', 'Sports Shoes', '9', 'Red', 2000),
(107, 'Leather Shoes', 'Woodland', 'Formal Shoes', '10', 'Black', 3500),
(108, 'Sneakers', 'Red Tape', 'Casual Shoes', '8', 'White', 2800),
(109, 'Flip Flops', 'Relaxo', 'Slippers', '7', 'Blue', 700),
(110, 'Sports Shoes', 'FILA', 'Sports Shoes', '9', 'Black', 2700),

(111, 'Running Shoes', 'Reebok', 'Sports Shoes', '8', 'Grey', 2400),
(112, 'Running Shoes', 'ASICS', 'Sports Shoes', '10', 'White', 4500),
(113, 'Formal Shoes', 'Liberty', 'Formal Shoes', '9', 'Brown', 1900),
(114, 'Casual Shoes', 'Skechers', 'Casual Shoes', '8', 'Black', 3200),
(115, 'Sports Shoes', 'Converse', 'Sports Shoes', '9', 'White', 2900),

(116, 'Training Shoes', 'Under Armour', 'Sports Shoes', '10', 'Black', 4000),
(117, 'Sneakers', 'New Balance', 'Casual Shoes', '8', 'Green', 3800),
(118, 'Crocs Sandals', 'Crocs', 'Sandals', '9', 'Blue', 2500),
(119, 'School Shoes', 'Action', 'School Shoes', '7', 'Black', 1200),
(120, 'Party Shoes', 'Fresh Steps', 'Party Shoes', '9', 'Brown', 2100),

(121, 'Sports Sneakers', 'Foot World', 'Sports Shoes', '10', 'White', 2300),
(122, 'Casual Sneakers', 'Shoe Point', 'Casual Shoes', '8', 'Grey', 2000),
(123, 'Formal Shoes', 'Step Zone', 'Formal Shoes', '9', 'Black', 1750),
(124, 'Comfort Sandals', 'Foot Care', 'Sandals', '7', 'Pink', 900),
(125, 'Running Shoes', 'Style Shoes', 'Sports Shoes', '10', 'Orange', 2600);

SELECT * FROM Product;


CREATE TABLE Inventory
(
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    SellerID INT,
    AvailabilityStatus VARCHAR(20),
    Stock INT,

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID),

    FOREIGN KEY (SellerID)
    REFERENCES Seller(SellerID)
);

INSERT INTO Inventory VALUES
(301, 101, 201, 'AVAILABLE', 45),
(302, 102, 202, 'UNAVAILABLE', 0),
(303, 103, 203, 'AVAILABLE', 25),
(304, 104, 204, 'AVAILABLE', 20),
(305, 105, 205, 'AVAILABLE', 35),

(306, 106, 206, 'AVAILABLE', 25),
(307, 107, 207, 'UNAVAILABLE', 0),
(308, 108, 208, 'AVAILABLE', 30),
(309, 109, 209, 'AVAILABLE', 35),
(310, 110, 210, 'AVAILABLE', 25),

(311, 111, 211, 'AVAILABLE', 35),
(312, 112, 212, 'AVAILABLE', 30),
(313, 113, 213, 'AVAILABLE', 20),
(314, 114, 214, 'AVAILABLE', 40),
(315, 115, 215, 'AVAILABLE', 35),

(316, 116, 216, 'AVAILABLE', 30),
(317, 117, 217, 'AVAILABLE', 25),
(318, 118, 218, 'AVAILABLE', 40),
(319, 119, 219, 'AVAILABLE', 25),
(320, 120, 220, 'AVAILABLE', 20),

(321, 121, 221, 'AVAILABLE', 30),
(322, 122, 222, 'AVAILABLE', 35),
(323, 123, 223, 'AVAILABLE', 20),
(324, 124, 224, 'AVAILABLE', 15),
(325, 125, 225, 'AVAILABLE', 25);

SELECT * FROM Inventory;
SELECT * FROM Seller;
SELECT * FROM Product;


UPDATE Inventory
SET Stock = 20,
    AvailabilityStatus = 'AVAILABLE'
WHERE InventoryID = 307;

SELECT * FROM Inventory
WHERE InventoryID = 307;


UPDATE Inventory
SET Stock = 0,
    AvailabilityStatus = 'UNAVAILABLE'
WHERE InventoryID = 311;

SELECT * FROM Inventory
WHERE InventoryID = 311;


UPDATE Inventory
SET Stock = 50,
    AvailabilityStatus = 'AVAILABLE'
WHERE InventoryID = 302;

SELECT * FROM Inventory
WHERE InventoryID = 302;


UPDATE Seller
SET ContactNo = '9876543210'
WHERE SellerID = 215;

SELECT * FROM Seller
WHERE SellerID = 215;


DELETE FROM Inventory
WHERE InventoryID = 325;

SELECT * FROM Inventory;


SELECT * FROM Inventory
WHERE AvailabilityStatus = 'AVAILABLE';


SELECT * FROM Inventory
WHERE AvailabilityStatus = 'UNAVAILABLE';


SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = 'AVAILABLE';


SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = 'UNAVAILABLE';


SELECT * FROM Inventory
ORDER BY Stock DESC;


SELECT * FROM Inventory;
SELECT * FROM Seller;


DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Product;
DROP TABLE IF EXISTS Seller;