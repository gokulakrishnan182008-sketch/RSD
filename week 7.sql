USE STEPSTYLE;


-- =========================================================
-- CATEGORY
-- =========================================================

SELECT * FROM Category;

SELECT DISTINCT CategoryName
FROM Category;

SELECT *
FROM Category
WHERE CategoryID = 1;

SELECT *
FROM Category
ORDER BY CategoryName;


-- =========================================================
-- PRODUCT
-- =========================================================

SELECT * FROM Product;

SELECT DISTINCT CategoryID
FROM Product;

SELECT *
FROM Product
WHERE Price > 100;

SELECT *
FROM Product
ORDER BY Price DESC;


-- =========================================================
-- SELLER
-- =========================================================

SELECT * FROM Seller;

SELECT DISTINCT Address
FROM Seller;

SELECT *
FROM Seller
WHERE Address = "Chennai";

SELECT *
FROM Seller
ORDER BY SellerName;


-- =========================================================
-- INVENTORY
-- =========================================================

SELECT * FROM Inventory;

SELECT DISTINCT AvailabilityStatus
FROM Inventory;

SELECT *
FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";

SELECT *
FROM Inventory
ORDER BY Stock DESC;


-- =========================================================
-- ORDERS
-- =========================================================

SELECT * FROM Orders;

SELECT DISTINCT OrderStatus
FROM Orders;

SELECT *
FROM Orders
WHERE OrderStatus = "Pending";

SELECT *
FROM Orders
ORDER BY TotalAmount DESC;


-- =========================================================
-- ORDER DETAILS
-- =========================================================

SELECT * FROM Order_Details;

SELECT DISTINCT ProductID
FROM Order_Details;

SELECT *
FROM Order_Details
WHERE Quantity >= 2;

SELECT *
FROM Order_Details
ORDER BY UnitPrice DESC;


-- =========================================================
-- PAYMENT
-- =========================================================

SELECT * FROM Payment;

SELECT DISTINCT PaymentMode
FROM Payment;

SELECT *
FROM Payment
WHERE PaymentStatus = "SUCCESSFUL";

SELECT *
FROM Payment
ORDER BY PaymentAmount DESC;


-- =========================================================
-- REVIEW
-- =========================================================

SELECT * FROM Review;

SELECT DISTINCT CustomerID
FROM Review;

SELECT *
FROM Review
WHERE ReviewText LIKE "%Good%";

SELECT *
FROM Review
ORDER BY ReviewID DESC;


-- =========================================================
-- RATING
-- =========================================================

SELECT Rating
FROM Review;

SELECT DISTINCT Rating
FROM Review;

SELECT *
FROM Review
WHERE Rating >= 4;

SELECT *
FROM Review
ORDER BY Rating DESC;