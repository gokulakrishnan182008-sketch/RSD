-- CREATE DATABASE
CREATE DATABASE StepStyleDB;
USE StepStyleDB;


-- 1. CUSTOMER TABLE
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    phone VARCHAR(15),
    address VARCHAR(255)
);


-- 2. CATEGORY TABLE
CREATE TABLE Category (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL
);


-- 3. PRODUCT TABLE
CREATE TABLE Product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    category_id INT,
    brand VARCHAR(50),
    size VARCHAR(10),
    color VARCHAR(30),
    price DECIMAL(10,2),
    stock_quantity INT DEFAULT 0,

    FOREIGN KEY (category_id)
    REFERENCES Category(category_id)
);


-- 4. CART TABLE
CREATE TABLE Cart (
    cart_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    quantity INT,

    FOREIGN KEY (customer_id)
    REFERENCES Customer(customer_id),

    FOREIGN KEY (product_id)
    REFERENCES Product(product_id)
);


-- 5. ORDERS TABLE
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10,2),
    order_status VARCHAR(30) DEFAULT 'Pending',

    FOREIGN KEY (customer_id)
    REFERENCES Customer(customer_id)
);


-- 6. ORDER DETAILS TABLE
CREATE TABLE Order_Details (
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),

    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id),

    FOREIGN KEY (product_id)
    REFERENCES Product(product_id)
);


-- 7. PAYMENT TABLE
CREATE TABLE Payment (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    payment_method VARCHAR(30),
    transaction_id VARCHAR(100),
    payment_status VARCHAR(30),

    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id)
);


-- 8. INVENTORY TABLE
CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    available_quantity INT,
    last_updated DATE,

    FOREIGN KEY (product_id)
    REFERENCES Product(product_id)
);


-- 9. REVIEW TABLE
CREATE TABLE Review (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    rating INT,
    review_text VARCHAR(255),

    FOREIGN KEY (customer_id)
    REFERENCES Customer(customer_id),

    FOREIGN KEY (product_id)
    REFERENCES Product(product_id)
);


-- 10. DELIVERY TABLE
CREATE TABLE Delivery (
    delivery_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    delivery_staff VARCHAR(100),
    delivery_status VARCHAR(30) DEFAULT 'Preparing',

    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id)
);


-- INSERT CUSTOMER DATA
INSERT INTO Customer
(customer_name, email, password, phone, address)
VALUES
('Gokul', 'gokul@gmail.com', 'gokul123', '9876543210', 'Chennai'),
('Anitha', 'anitha@gmail.com', 'anitha123', '9876543211', 'Tambaram');


-- INSERT CATEGORY DATA
INSERT INTO Category (category_name)
VALUES
('Sports Shoes'),
('Casual Shoes'),
('Formal Shoes'),
('Sandals'),
('Sneakers');


-- INSERT PRODUCT DATA
INSERT INTO Product
(product_name, category_id, brand, size, color, price, stock_quantity)
VALUES
('Running Shoes', 1, 'Nike', '8', 'Black', 2500.00, 20),
('Casual Sneakers', 2, 'Puma', '9', 'White', 2200.00, 15),
('Formal Leather Shoes', 3, 'Bata', '8', 'Brown', 1800.00, 10),
('Comfort Sandals', 4, 'Sparx', '7', 'Blue', 900.00, 25),
('Classic Sneakers', 5, 'Adidas', '9', 'Black', 3000.00, 12);


-- INSERT CART DATA
INSERT INTO Cart
(customer_id, product_id, quantity)
VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1);


-- INSERT ORDER DATA
INSERT INTO Orders
(customer_id, total_amount, order_status)
VALUES
(1, 6900.00, 'Confirmed'),
(2, 1800.00, 'Preparing');


-- INSERT ORDER DETAILS
INSERT INTO Order_Details
(order_id, product_id, quantity, price)
VALUES
(1, 1, 1, 2500.00),
(1, 2, 2, 2200.00),
(2, 3, 1, 1800.00);


-- INSERT PAYMENT DATA
INSERT INTO Payment
(order_id, payment_method, transaction_id, payment_status)
VALUES
(1, 'UPI', 'TXN10001', 'Paid'),
(2, 'Card', 'TXN10002', 'Paid');


-- INSERT INVENTORY DATA
INSERT INTO Inventory
(product_id, available_quantity, last_updated)
VALUES
(1, 20, '2026-08-27'),
(2, 15, '2026-08-27'),
(3, 10, '2026-08-27'),
(4, 25, '2026-08-27'),
(5, 12, '2026-08-27');


-- INSERT REVIEW DATA
INSERT INTO Review
(customer_id, product_id, rating, review_text)
VALUES
(1, 1, 5, 'Very comfortable shoes'),
(2, 3, 4, 'Good quality formal shoes');


-- INSERT DELIVERY DATA
INSERT INTO Delivery
(order_id, delivery_staff, delivery_status)
VALUES
(1, 'Kumar', 'Out for Delivery'),
(2, 'Arun', 'Preparing');


-- DISPLAY ALL CUSTOMERS
SELECT * FROM Customer;


-- DISPLAY ALL PRODUCTS
SELECT * FROM Product;


-- DISPLAY ALL CATEGORIES
SELECT * FROM Category;


-- DISPLAY ALL ORDERS
SELECT * FROM Orders;


-- DISPLAY PAYMENT DETAILS
SELECT * FROM Payment;


-- DISPLAY INVENTORY
SELECT * FROM Inventory;


-- DISPLAY REVIEWS
SELECT * FROM Review;


-- COMPLETE ORDER DETAILS
SELECT
    o.order_id,
    c.customer_name,
    p.product_name,
    od.quantity,
    od.price,
    o.total_amount,
    o.order_status
FROM Orders o
JOIN Customer c
    ON o.customer_id = c.customer_id
JOIN Order_Details od
    ON o.order_id = od.order_id
JOIN Product p
    ON od.product_id = p.product_id;


-- SEARCH PRODUCTS BY CATEGORY
SELECT
    p.product_name,
    c.category_name,
    p.brand,
    p.size,
    p.color,
    p.price
FROM Product p
JOIN Category c
    ON p.category_id = c.category_id
WHERE c.category_name = 'Sports Shoes';


-- FIND PRODUCTS BELOW ₹2000
SELECT *
FROM Product
WHERE price < 2000;


-- ORDER HISTORY OF A CUSTOMER
SELECT
    c.customer_name,
    o.order_id,
    o.order_date,
    o.total_amount,
    o.order_status
FROM Customer c
JOIN Orders o
    ON c.customer_id = o.customer_id
WHERE c.customer_id = 1;