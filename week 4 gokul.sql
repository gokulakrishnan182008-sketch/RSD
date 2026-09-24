-- =========================================================
-- STEPSTYLE SHOE SELLING WEBSITE
-- COMPLETE DATABASE SCRIPT
-- =========================================================


-- =========================================================
-- 1. CREATE DATABASE
-- =========================================================

DROP DATABASE IF EXISTS STEPSTYLE;

CREATE DATABASE STEPSTYLE;

USE STEPSTYLE;


-- =========================================================
-- 2. CATEGORY TABLE
-- =========================================================

CREATE TABLE Category
(
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) NOT NULL
);


INSERT INTO Category
(CategoryID, CategoryName)
VALUES
(1, 'SPORTS SHOES'),
(2, 'CASUAL SHOES'),
(3, 'FORMAL SHOES'),
(4, 'SANDALS'),
(5, 'SNEAKERS');


SELECT * FROM Category;


-- =========================================================
-- 3. PRODUCT TABLE
-- =========================================================

CREATE TABLE Product
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Brand VARCHAR(50),
    Size INT,
    Color VARCHAR(30),
    Price DECIMAL(10,2),
    Stock INT,
    CategoryID INT,

    FOREIGN KEY (CategoryID)
    REFERENCES Category(CategoryID)
);


INSERT INTO Product
(ProductID, ProductName, Brand, Size, Color, Price, Stock, CategoryID)
VALUES

(101, 'RUNNING SHOES', 'NIKE', 9, 'BLACK', 3500.00, 25, 1),
(102, 'SPORT TRAINER', 'ADIDAS', 8, 'WHITE', 4200.00, 20, 1),
(103, 'CRICKET SHOES', 'PUMA', 10, 'BLUE', 3800.00, 15, 1),
(104, 'WALKING SHOES', 'SKECHERS', 9, 'GREY', 4500.00, 18, 1),
(105, 'SPORT SHOES', 'REEBOK', 8, 'RED', 3200.00, 22, 1),

(106, 'CASUAL LOAFERS', 'BATA', 9, 'BROWN', 1800.00, 30, 2),
(107, 'CASUAL SHOES', 'PUMA', 8, 'BLACK', 2200.00, 25, 2),
(108, 'CANVAS SHOES', 'RED TAPE', 10, 'WHITE', 2000.00, 20, 2),
(109, 'SLIP ON SHOES', 'WOODLAND', 9, 'BLUE', 2800.00, 18, 2),
(110, 'DAILY WEAR SHOES', 'CAMPUS', 8, 'GREY', 1500.00, 35, 2),

(111, 'LEATHER FORMAL', 'BATA', 9, 'BLACK', 3000.00, 20, 3),
(112, 'OFFICE SHOES', 'RED TAPE', 8, 'BROWN', 2800.00, 22, 3),
(113, 'LEATHER DERBY', 'WOODLAND', 10, 'BLACK', 3500.00, 15, 3),
(114, 'OXFORD SHOES', 'HUSH PUPPIES', 9, 'BROWN', 4200.00, 12, 3),
(115, 'FORMAL LOAFERS', 'BATA', 8, 'BLACK', 2500.00, 25, 3),

(116, 'FLIP FLOPS', 'PARAGON', 9, 'BLUE', 500.00, 40, 4),
(117, 'CASUAL SANDALS', 'BATA', 8, 'BLACK', 800.00, 35, 4),
(118, 'LEATHER SANDALS', 'WOODLAND', 10, 'BROWN', 1500.00, 20, 4),
(119, 'SPORT SANDALS', 'PUMA', 9, 'GREY', 1800.00, 18, 4),
(120, 'COMFORT SANDALS', 'PARAGON', 8, 'BLACK', 700.00, 30, 4),

(121, 'LOW TOP SNEAKERS', 'NIKE', 9, 'WHITE', 5000.00, 20, 5),
(122, 'HIGH TOP SNEAKERS', 'ADIDAS', 10, 'BLACK', 4500.00, 15, 5),
(123, 'STREET SNEAKERS', 'PUMA', 8, 'RED', 3800.00, 18, 5),
(124, 'FASHION SNEAKERS', 'REEBOK', 9, 'WHITE', 4200.00, 12, 5),
(125, 'CLASSIC SNEAKERS', 'CAMPUS', 8, 'BLUE', 2500.00, 25, 5);


SELECT * FROM Product;


-- =========================================================
-- 4. CUSTOMER TABLE
-- =========================================================

CREATE TABLE Customer
(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    ContactNo VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(150)
);


INSERT INTO Customer
(CustomerID, CustomerName, ContactNo, Email, Address)
VALUES
(301, 'ANU', '9876501001', 'anu@gmail.com', 'Chennai'),
(302, 'RAJEE', '9876501002', 'rajee@gmail.com', 'Madurai'),
(303, 'DHIVYA', '9876501003', 'dhivya@gmail.com', 'Coimbatore'),
(304, 'POOJA', '9876501004', 'pooja@gmail.com', 'Salem'),
(305, 'HEMA', '9876501005', 'hema@gmail.com', 'Trichy'),
(306, 'ARUN', '9876501006', 'arun@gmail.com', 'Chennai'),
(307, 'MEENA', '9876501007', 'meena@gmail.com', 'Madurai'),
(308, 'KARTHIK', '9876501008', 'karthik@gmail.com', 'Coimbatore'),
(309, 'NITHYA', '9876501009', 'nithya@gmail.com', 'Salem'),
(310, 'VISHAL', '9876501010', 'vishal@gmail.com', 'Trichy');


SELECT * FROM Customer;


-- =========================================================
-- 5. WAREHOUSE STAFF TABLE
-- =========================================================

CREATE TABLE WarehouseStaff
(
    StaffID INT PRIMARY KEY,
    StaffName VARCHAR(100),
    ContactNo VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(150)
);


INSERT INTO WarehouseStaff
(StaffID, StaffName, ContactNo, Email, Address)
VALUES
(201, 'ARUN', '9876500001', 'arun.staff@gmail.com', 'Chennai'),
(202, 'BALAJI', '9876500002', 'balaji.staff@gmail.com', 'Madurai'),
(203, 'CHARAN', '9876500003', 'charan.staff@gmail.com', 'Coimbatore'),
(204, 'DEEPAK', '9876500004', 'deepak.staff@gmail.com', 'Salem'),
(205, 'ELANGO', '9876500005', 'elango.staff@gmail.com', 'Trichy'),
(206, 'FAROOQ', '9876500006', 'farooq.staff@gmail.com', 'Chennai'),
(207, 'GOKUL', '9876500007', 'gokul.staff@gmail.com', 'Madurai'),
(208, 'HARISH', '9876500008', 'harish.staff@gmail.com', 'Coimbatore'),
(209, 'IMRAN', '9876500009', 'imran.staff@gmail.com', 'Salem'),
(210, 'JEEVA', '9876500010', 'jeeva.staff@gmail.com', 'Trichy');


SELECT * FROM WarehouseStaff;


-- =========================================================
-- 6. INVENTORY TABLE
-- =========================================================

CREATE TABLE Inventory
(
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    StaffID INT,
    AvailabilityStatus VARCHAR(20),
    Stock INT,

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID),

    FOREIGN KEY (StaffID)
    REFERENCES WarehouseStaff(StaffID)
);


INSERT INTO Inventory
(InventoryID, ProductID, StaffID, AvailabilityStatus, Stock)
VALUES
(401, 101, 201, 'AVAILABLE', 25),
(402, 102, 202, 'AVAILABLE', 20),
(403, 103, 203, 'AVAILABLE', 15),
(404, 104, 204, 'AVAILABLE', 18),
(405, 105, 205, 'AVAILABLE', 22),

(406, 106, 206, 'AVAILABLE', 30),
(407, 107, 207, 'AVAILABLE', 25),
(408, 108, 208, 'AVAILABLE', 20),
(409, 109, 209, 'AVAILABLE', 18),
(410, 110, 210, 'AVAILABLE', 35),

(411, 111, 201, 'AVAILABLE', 20),
(412, 112, 202, 'AVAILABLE', 22),
(413, 113, 203, 'AVAILABLE', 15),
(414, 114, 204, 'AVAILABLE', 12),
(415, 115, 205, 'AVAILABLE', 25),

(416, 116, 206, 'AVAILABLE', 40),
(417, 117, 207, 'AVAILABLE', 35),
(418, 118, 208, 'AVAILABLE', 20),
(419, 119, 209, 'AVAILABLE', 18),
(420, 120, 210, 'AVAILABLE', 30),

(421, 121, 201, 'AVAILABLE', 20),
(422, 122, 202, 'AVAILABLE', 15),
(423, 123, 203, 'AVAILABLE', 18),
(424, 124, 204, 'AVAILABLE', 12),
(425, 125, 205, 'AVAILABLE', 25);


SELECT * FROM Inventory;


-- =========================================================
-- 7. ADMIN TABLE
-- =========================================================

CREATE TABLE Admin
(
    AdminID INT PRIMARY KEY,
    AdminName VARCHAR(100),
    Email VARCHAR(100),
    ContactNo VARCHAR(15)
);


INSERT INTO Admin
(AdminID, AdminName, Email, ContactNo)
VALUES
(601, 'ADMIN ONE', 'admin1@stepstyle.com', '9876510001'),
(602, 'ADMIN TWO', 'admin2@stepstyle.com', '9876510002'),
(603, 'ADMIN THREE', 'admin3@stepstyle.com', '9876510003');


SELECT * FROM Admin;


-- =========================================================
-- 8. SHOPPING CART TABLE
-- =========================================================

CREATE TABLE Cart
(
    CartID INT PRIMARY KEY,
    CustomerID INT,

    FOREIGN KEY (CustomerID)
    REFERENCES Customer(CustomerID)
);


INSERT INTO Cart
(CartID, CustomerID)
VALUES
(701, 301),
(702, 302),
(703, 303),
(704, 304),
(705, 305);


SELECT * FROM Cart;


-- =========================================================
-- 9. CART DETAILS TABLE
-- =========================================================

CREATE TABLE Cart_Details
(
    CartDetailID INT PRIMARY KEY,
    CartID INT,
    ProductID INT,
    Quantity INT,

    FOREIGN KEY (CartID)
    REFERENCES Cart(CartID),

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID)
);


INSERT INTO Cart_Details
(CartDetailID, CartID, ProductID, Quantity)
VALUES
(801, 701, 101, 1),
(802, 702, 103, 2),
(803, 703, 106, 1),
(804, 704, 121, 1),
(805, 705, 112, 2);


SELECT * FROM Cart_Details;


-- =========================================================
-- 10. ORDERS TABLE
-- =========================================================

CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    OrderStatus VARCHAR(20),

    FOREIGN KEY (CustomerID)
    REFERENCES Customer(CustomerID)
);


INSERT INTO Orders
(OrderID, CustomerID, OrderDate, TotalAmount, OrderStatus)
VALUES
(501, 301, '2026-09-01', 7000.00, 'Delivered'),
(502, 302, '2026-09-02', 7600.00, 'Pending'),
(503, 303, '2026-09-03', 9000.00, 'Shipped'),
(504, 304, '2026-09-04', 6400.00, 'Delivered'),
(505, 305, '2026-09-05', 3600.00, 'Pending'),
(506, 306, '2026-09-06', 8800.00, 'Shipped'),
(507, 307, '2026-09-07', 2800.00, 'Delivered'),
(508, 308, '2026-09-08', 3000.00, 'Pending'),
(509, 309, '2026-09-09', 6500.00, 'Shipped'),
(510, 310, '2026-09-10', 10000.00, 'Delivered');


SELECT * FROM Orders;


-- =========================================================
-- 11. ORDER DETAILS TABLE
-- =========================================================

CREATE TABLE Order_Details
(
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10,2),

    FOREIGN KEY (OrderID)
    REFERENCES Orders(OrderID),

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID)
);


INSERT INTO Order_Details
(OrderDetailID, OrderID, ProductID, Quantity, UnitPrice)
VALUES
(1, 501, 101, 2, 3500.00),
(2, 502, 103, 2, 3800.00),
(3, 503, 104, 2, 4500.00),
(4, 504, 105, 2, 3200.00),
(5, 505, 106, 2, 1800.00),
(6, 506, 107, 4, 2200.00),
(7, 507, 109, 1, 2800.00),
(8, 508, 110, 2, 1500.00),
(9, 509, 111, 2, 3250.00),
(10, 510, 112, 4, 2500.00);


SELECT * FROM Order_Details;


-- =========================================================
-- 12. PAYMENT TABLE
-- =========================================================

CREATE TABLE Payment
(
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentDate DATE,
    PaymentMethod VARCHAR(30),
    PaymentStatus VARCHAR(20),
    Amount DECIMAL(10,2),

    FOREIGN KEY (OrderID)
    REFERENCES Orders(OrderID)
);


INSERT INTO Payment
(PaymentID, OrderID, PaymentDate, PaymentMethod, PaymentStatus, Amount)
VALUES
(901, 501, '2026-09-01', 'UPI', 'PAID', 7000.00),
(902, 502, '2026-09-02', 'CARD', 'PAID', 7600.00),
(903, 503, '2026-09-03', 'UPI', 'PAID', 9000.00),
(904, 504, '2026-09-04', 'CARD', 'PAID', 6400.00),
(905, 505, '2026-09-05', 'CASH', 'PENDING', 3600.00),
(906, 506, '2026-09-06', 'UPI', 'PAID', 8800.00),
(907, 507, '2026-09-07', 'CASH', 'PAID', 2800.00),
(908, 508, '2026-09-08', 'CARD', 'PENDING', 3000.00),
(909, 509, '2026-09-09', 'UPI', 'PAID', 6500.00),
(910, 510, '2026-09-10', 'CARD', 'PAID', 10000.00);


SELECT * FROM Payment;


-- =========================================================
-- 13. REVIEW TABLE
-- =========================================================

CREATE TABLE Review
(
    ReviewID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Rating INT,
    ReviewText VARCHAR(250),

    FOREIGN KEY (CustomerID)
    REFERENCES Customer(CustomerID),

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID)
);


INSERT INTO Review
(ReviewID, CustomerID, ProductID, Rating, ReviewText)
VALUES
(1001, 301, 101, 5, 'VERY GOOD RUNNING SHOES'),
(1002, 302, 103, 4, 'GOOD QUALITY'),
(1003, 303, 104, 5, 'VERY COMFORTABLE'),
(1004, 304, 105, 4, 'GOOD SPORTS SHOES'),
(1005, 305, 106, 5, 'NICE CASUAL SHOES'),
(1006, 306, 107, 4, 'GOOD PRODUCT'),
(1007, 307, 109, 5, 'COMFORTABLE SHOES'),
(1008, 308, 110, 4, 'VALUE FOR MONEY'),
(1009, 309, 111, 5, 'GOOD FORMAL SHOES'),
(1010, 310, 112, 4, 'NICE OFFICE SHOES');


SELECT * FROM Review;


-- =========================================================
-- 14. DELIVERY TABLE
-- =========================================================

CREATE TABLE Delivery
(
    DeliveryID INT PRIMARY KEY,
    OrderID INT,
    DeliveryStaffName VARCHAR(100),
    DeliveryDate DATE,
    DeliveryStatus VARCHAR(20),

    FOREIGN KEY (OrderID)
    REFERENCES Orders(OrderID)
);


INSERT INTO Delivery
(DeliveryID, OrderID, DeliveryStaffName, DeliveryDate, DeliveryStatus)
VALUES
(1101, 501, 'RAHUL', '2026-09-04', 'DELIVERED'),
(1102, 502, 'SURESH', NULL, 'PENDING'),
(1103, 503, 'VIGNESH', NULL, 'SHIPPED'),
(1104, 504, 'ARUN', '2026-09-07', 'DELIVERED'),
(1105, 505, 'KARTHIK', NULL, 'PENDING'),
(1106, 506, 'RAHUL', NULL, 'SHIPPED'),
(1107, 507, 'SURESH', '2026-09-10', 'DELIVERED'),
(1108, 508, 'VIGNESH', NULL, 'PENDING'),
(1109, 509, 'ARUN', NULL, 'SHIPPED'),
(1110, 510, 'KARTHIK', '2026-09-14', 'DELIVERED');


SELECT * FROM Delivery;


-- =========================================================
-- 15. UPDATE PRODUCT
-- =========================================================

UPDATE Product
SET Price = 3800.00,
    Stock = 30
WHERE ProductID = 101;


SELECT * FROM Product
WHERE ProductID = 101;


-- =========================================================
-- 16. UPDATE INVENTORY
-- =========================================================

UPDATE Inventory
SET Stock = 20,
    AvailabilityStatus = 'AVAILABLE'
WHERE InventoryID = 407;


SELECT * FROM Inventory
WHERE InventoryID = 407;


-- =========================================================
-- 17. UPDATE ORDER STATUS
-- =========================================================

UPDATE Orders
SET OrderStatus = 'Shipped'
WHERE OrderID = 502;


UPDATE Orders
SET OrderStatus = 'Delivered'
WHERE OrderID = 503;


SELECT * FROM Orders;


-- =========================================================
-- 18. UPDATE PAYMENT STATUS
-- =========================================================

UPDATE Payment
SET PaymentStatus = 'PAID'
WHERE PaymentID = 905;


SELECT * FROM Payment
WHERE PaymentID = 905;


-- =========================================================
-- 19. DISPLAY PRODUCTS BY CATEGORY
-- =========================================================

SELECT *
FROM Product
ORDER BY CategoryID;


-- =========================================================
-- 20. SEARCH PRODUCTS BY BRAND
-- =========================================================

SELECT *
FROM Product
WHERE Brand = 'NIKE';


-- =========================================================
-- 21. SEARCH PRODUCTS BY SIZE
-- =========================================================

SELECT *
FROM Product
WHERE Size = 9;


-- =========================================================
-- 22. SEARCH PRODUCTS BY COLOR
-- =========================================================

SELECT *
FROM Product
WHERE Color = 'BLACK';


-- =========================================================
-- 23. DISPLAY PRODUCTS WITH PRICE FILTER
-- =========================================================

SELECT *
FROM Product
WHERE Price BETWEEN 2000 AND 4000;


-- =========================================================
-- 24. DISPLAY AVAILABLE INVENTORY
-- =========================================================

SELECT *
FROM Inventory
WHERE AvailabilityStatus = 'AVAILABLE';


-- =========================================================
-- 25. DISPLAY UNAVAILABLE INVENTORY
-- =========================================================

SELECT *
FROM Inventory
WHERE AvailabilityStatus = 'UNAVAILABLE';


-- =========================================================
-- 26. COUNT AVAILABLE PRODUCTS
-- =========================================================

SELECT COUNT(*) AS AvailableProducts
FROM Inventory
WHERE AvailabilityStatus = 'AVAILABLE';


-- =========================================================
-- 27. COUNT UNAVAILABLE PRODUCTS
-- =========================================================

SELECT COUNT(*) AS UnavailableProducts
FROM Inventory
WHERE AvailabilityStatus = 'UNAVAILABLE';


-- =========================================================
-- 28. INVENTORY IN DESCENDING STOCK
-- =========================================================

SELECT *
FROM Inventory
ORDER BY Stock DESC;


-- =========================================================
-- 29. DISPLAY ALL ORDERS
-- =========================================================

SELECT *
FROM Orders;


-- =========================================================
-- 30. DISPLAY PENDING ORDERS
-- =========================================================

SELECT *
FROM Orders
WHERE OrderStatus = 'Pending';


-- =========================================================
-- 31. DISPLAY SHIPPED ORDERS
-- =========================================================

SELECT *
FROM Orders
WHERE OrderStatus = 'Shipped';


-- =========================================================
-- 32. DISPLAY DELIVERED ORDERS
-- =========================================================

SELECT *
FROM Orders
WHERE OrderStatus = 'Delivered';


-- =========================================================
-- 33. COUNT ORDERS BY CUSTOMER
-- =========================================================

SELECT CustomerID,
       COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerID;


-- =========================================================
-- 34. TOTAL PURCHASE AMOUNT BY CUSTOMER
-- =========================================================

SELECT CustomerID,
       SUM(TotalAmount) AS TotalPurchase
FROM Orders
GROUP BY CustomerID;


-- =========================================================
-- 35. DISPLAY ORDER DETAILS
-- =========================================================

SELECT *
FROM Order_Details;


-- =========================================================
-- 36. DISPLAY DETAILS OF ORDER 501
-- =========================================================

SELECT *
FROM Order_Details
WHERE OrderID = 501;


-- =========================================================
-- 37. DISPLAY ORDERS CONTAINING PRODUCT 101
-- =========================================================

SELECT *
FROM Order_Details
WHERE ProductID = 101;


-- =========================================================
-- 38. CALCULATE ORDER TOTAL FROM ORDER DETAILS
-- =========================================================

SELECT OrderID,
       SUM(Quantity * UnitPrice) AS OrderTotal
FROM Order_Details
GROUP BY OrderID;


-- =========================================================
-- 39. DISPLAY LATEST ORDERS
-- =========================================================

SELECT *
FROM Orders
ORDER BY OrderDate DESC;


-- =========================================================
-- 40. DISPLAY PAYMENT INFORMATION
-- =========================================================

SELECT *
FROM Payment;


-- =========================================================
-- 41. DISPLAY PAID PAYMENTS
-- =========================================================

SELECT *
FROM Payment
WHERE PaymentStatus = 'PAID';


-- =========================================================
-- 42. DISPLAY CUSTOMER REVIEWS
-- =========================================================

SELECT *
FROM Review;


-- =========================================================
-- 43. DISPLAY 5-STAR REVIEWS
-- =========================================================

SELECT *
FROM Review
WHERE Rating = 5;


-- =========================================================
-- 44. DISPLAY DELIVERY STATUS
-- =========================================================

SELECT *
FROM Delivery;


-- =========================================================
-- 45. DISPLAY DELIVERED ORDERS
-- =========================================================

SELECT *
FROM Delivery
WHERE DeliveryStatus = 'DELIVERED';


-- =========================================================
-- 46. JOIN CUSTOMER AND ORDERS
-- =========================================================

SELECT
    Customer.CustomerID,
    Customer.CustomerName,
    Orders.OrderID,
    Orders.OrderDate,
    Orders.TotalAmount,
    Orders.OrderStatus
FROM Customer
JOIN Orders
ON Customer.CustomerID = Orders.CustomerID;


-- =========================================================
-- 47. JOIN PRODUCT AND CATEGORY
-- =========================================================

SELECT
    Product.ProductID,
    Product.ProductName,
    Product.Brand,
    Product.Price,
    Category.CategoryName
FROM Product
JOIN Category
ON Product.CategoryID = Category.CategoryID;


-- =========================================================
-- 48. JOIN ORDERS, CUSTOMER AND ORDER DETAILS
-- =========================================================

SELECT
    Orders.OrderID,
    Customer.CustomerName,
    Order_Details.ProductID,
    Order_Details.Quantity,
    Order_Details.UnitPrice
FROM Orders
JOIN Customer
ON Orders.CustomerID = Customer.CustomerID
JOIN Order_Details
ON Orders.OrderID = Order_Details.OrderID;


-- =========================================================
-- 49. JOIN INVENTORY AND PRODUCT
-- =========================================================

SELECT
    Inventory.InventoryID,
    Product.ProductName,
    Product.Brand,
    Inventory.Stock,
    Inventory.AvailabilityStatus
FROM Inventory
JOIN Product
ON Inventory.ProductID = Product.ProductID;


-- =========================================================
-- 50. JOIN PRODUCT AND CATEGORY WITH PRICE
-- =========================================================

SELECT
    Product.ProductName,
    Product.Brand,
    Category.CategoryName,
    Product.Price
FROM Product
JOIN Category
ON Product.CategoryID = Category.CategoryID
ORDER BY Product.Price DESC;