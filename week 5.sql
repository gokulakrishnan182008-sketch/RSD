USE STEPSTYLE;


-- =========================================
-- REMOVE OLD PAYMENT TABLE
-- =========================================

DROP TABLE IF EXISTS Payment;


-- =========================================
-- CREATE PAYMENT TABLE
-- =========================================

CREATE TABLE Payment
(
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentMode VARCHAR(20),
    PaymentDate DATE,
    PaymentAmount DECIMAL(10,2),
    PaymentStatus VARCHAR(20),

    FOREIGN KEY (OrderID)
    REFERENCES Orders(OrderID)
);


-- =========================================
-- INSERT PAYMENT VALUES
-- =========================================

INSERT INTO Payment
(PaymentID, OrderID, PaymentMode, PaymentDate, PaymentAmount, PaymentStatus)
VALUES
(601, 501, 'UPI',  '2026-09-01', 7000.00, 'SUCCESSFUL'),
(602, 502, 'CARD', '2026-09-02', 7600.00, 'SUCCESSFUL'),
(603, 503, 'CASH', '2026-09-03', 9000.00, 'FAILED'),
(604, 504, 'UPI',  '2026-09-04', 6400.00, 'SUCCESSFUL'),
(605, 505, 'CARD', '2026-09-05', 3600.00, 'SUCCESSFUL'),
(606, 506, 'CASH', '2026-09-06', 8800.00, 'SUCCESSFUL'),
(607, 507, 'UPI',  '2026-09-07', 2800.00, 'FAILED'),
(608, 508, 'CARD', '2026-09-08', 3000.00, 'SUCCESSFUL'),
(609, 509, 'CASH', '2026-09-09', 6500.00, 'SUCCESSFUL'),
(610, 510, 'UPI',  '2026-09-10', 10000.00, 'SUCCESSFUL');


-- =========================================
-- DISPLAY ALL PAYMENTS
-- =========================================

SELECT * FROM Payment;


-- =========================================
-- UPDATE PAYMENT STATUS
-- =========================================

UPDATE Payment
SET PaymentStatus = 'SUCCESSFUL'
WHERE PaymentID = 603;

UPDATE Payment
SET PaymentStatus = 'SUCCESSFUL'
WHERE PaymentID = 607;


-- =========================================
-- DISPLAY UPDATED PAYMENTS
-- =========================================

SELECT *
FROM Payment
WHERE PaymentID IN (603, 607);


-- =========================================
-- SUCCESSFUL PAYMENTS
-- =========================================

SELECT *
FROM Payment
WHERE PaymentStatus = 'SUCCESSFUL';


-- =========================================
-- FAILED PAYMENTS
-- =========================================

SELECT *
FROM Payment
WHERE PaymentStatus = 'FAILED';


-- =========================================
-- UPI PAYMENTS
-- =========================================

SELECT *
FROM Payment
WHERE PaymentMode = 'UPI';


-- =========================================
-- CARD PAYMENTS
-- =========================================

SELECT *
FROM Payment
WHERE PaymentMode = 'CARD';


-- =========================================
-- CASH PAYMENTS
-- =========================================

SELECT *
FROM Payment
WHERE PaymentMode = 'CASH';


-- =========================================
-- NUMBER OF TRANSACTIONS BY MODE
-- =========================================

SELECT
    PaymentMode,
    COUNT(*) AS NumberOfTransactions
FROM Payment
GROUP BY PaymentMode;


-- =========================================
-- TOTAL SUCCESSFUL AMOUNT BY MODE
-- =========================================

SELECT
    PaymentMode,
    SUM(PaymentAmount) AS TotalAmountReceived
FROM Payment
WHERE PaymentStatus = 'SUCCESSFUL'
GROUP BY PaymentMode;


-- =========================================
-- TOTAL PAYMENT AMOUNT
-- =========================================

SELECT
    SUM(PaymentAmount) AS TotalPaymentAmount
FROM Payment;


-- =========================================
-- SUCCESSFUL PAYMENT COUNT
-- =========================================

SELECT
    COUNT(*) AS SuccessfulPayments
FROM Payment
WHERE PaymentStatus = 'SUCCESSFUL';


-- =========================================
-- FAILED PAYMENT COUNT
-- =========================================

SELECT
    COUNT(*) AS FailedPayments
FROM Payment
WHERE PaymentStatus = 'FAILED';


-- =========================================
-- PAYMENT WITH ORDER INFORMATION
-- =========================================

SELECT
    Payment.PaymentID,
    Payment.OrderID,
    Payment.PaymentMode,
    Payment.PaymentDate,
    Payment.PaymentAmount,
    Payment.PaymentStatus,
    Orders.CustomerID,
    Orders.OrderDate,
    Orders.OrderStatus
FROM Payment
JOIN Orders
ON Payment.OrderID = Orders.OrderID;


-- =========================================
-- PAYMENTS IN DATE ORDER
-- =========================================

SELECT *
FROM Payment
ORDER BY PaymentDate;


-- =========================================
-- LATEST PAYMENTS
-- =========================================

SELECT *
FROM Payment
ORDER BY PaymentDate DESC;