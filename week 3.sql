USE STEPSTYLE;


-- =========================================
-- WAREHOUSE STAFF TABLE
-- =========================================

CREATE TABLE WarehouseStaff
(
    StaffID INT PRIMARY KEY,
    StaffName VARCHAR(100),
    ContactNo VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(150)
);


-- =========================================
-- INSERT WAREHOUSE STAFF
-- =========================================

INSERT INTO WarehouseStaff VALUES
(201,"ARUN","9876500001","arun@gmail.com","Chennai"),
(202,"BALAJI","9876500002","balaji@gmail.com","Madurai"),
(203,"CHARAN","9876500003","charan@gmail.com","Coimbatore"),
(204,"DEEPAK","9876500004","deepak@gmail.com","Salem"),
(205,"ELANGO","9876500005","elango@gmail.com","Trichy"),
(206,"FAROOQ","9876500006","farooq@gmail.com","Chennai"),
(207,"GOKUL","9876500007","gokul@gmail.com","Madurai"),
(208,"HARISH","9876500008","harish@gmail.com","Coimbatore"),
(209,"IMRAN","9876500009","imran@gmail.com","Salem"),
(210,"JEEVA","9876500010","jeeva@gmail.com","Trichy"),
(211,"KARTHIK","9876500011","karthik@gmail.com","Chennai"),
(212,"LOKESH","9876500012","lokesh@gmail.com","Madurai"),
(213,"MANOJ","9876500013","manoj@gmail.com","Coimbatore"),
(214,"NAVEEN","9876500014","naveen@gmail.com","Salem"),
(215,"PRAVEEN","9876500015","praveen@gmail.com","Trichy"),
(216,"RAHUL","9876500016","rahul@gmail.com","Chennai"),
(217,"SANJAY","9876500017","sanjay@gmail.com","Madurai"),
(218,"SURYA","9876500018","surya@gmail.com","Coimbatore"),
(219,"VIGNESH","9876500019","vignesh@gmail.com","Salem"),
(220,"VISHAL","9876500020","vishal@gmail.com","Trichy"),
(221,"ADITYA","9876500021","aditya@gmail.com","Chennai"),
(222,"ASHWIN","9876500022","ashwin@gmail.com","Madurai"),
(223,"DINESH","9876500023","dinesh@gmail.com","Coimbatore"),
(224,"ROHIT","9876500024","rohit@gmail.com","Salem"),
(225,"SATHISH","9876500025","sathish@gmail.com","Trichy");

SELECT * FROM WarehouseStaff;


-- =========================================
-- INVENTORY TABLE
-- =========================================

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


-- =========================================
-- INSERT INVENTORY
-- =========================================

INSERT INTO Inventory VALUES
(301,101,201,"AVAILABLE",25),
(302,102,202,"AVAILABLE",15),
(303,103,203,"AVAILABLE",10),
(304,104,204,"AVAILABLE",12),
(305,105,205,"AVAILABLE",30),
(306,106,206,"AVAILABLE",20),
(307,107,207,"UNAVAILABLE",0),
(308,109,208,"AVAILABLE",18),
(309,110,209,"AVAILABLE",15),
(310,111,210,"AVAILABLE",30),
(311,112,211,"UNAVAILABLE",0),
(312,113,212,"AVAILABLE",15),
(313,114,213,"AVAILABLE",20),
(314,115,214,"UNAVAILABLE",0),
(315,116,215,"AVAILABLE",15),
(316,117,216,"AVAILABLE",12),
(317,118,217,"UNAVAILABLE",0),
(318,119,218,"AVAILABLE",10),
(319,120,219,"AVAILABLE",20),
(320,121,220,"UNAVAILABLE",0),
(321,122,221,"AVAILABLE",10),
(322,123,222,"AVAILABLE",5),
(323,124,223,"UNAVAILABLE",0),
(324,125,224,"AVAILABLE",15),
(325,101,225,"AVAILABLE",50);

SELECT * FROM Inventory;


-- =========================================
-- UPDATE INVENTORY
-- =========================================

UPDATE Inventory
SET Stock = 20,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 307;

SELECT * FROM Inventory
WHERE InventoryID = 307;


-- =========================================
-- UPDATE INVENTORY TO UNAVAILABLE
-- =========================================

UPDATE Inventory
SET Stock = 0,
    AvailabilityStatus = "UNAVAILABLE"
WHERE InventoryID = 302;

SELECT * FROM Inventory
WHERE InventoryID = 302;


-- =========================================
-- UPDATE INVENTORY TO AVAILABLE
-- =========================================

UPDATE Inventory
SET Stock = 15,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 311;

SELECT * FROM Inventory
WHERE InventoryID = 311;


-- =========================================
-- UPDATE WAREHOUSE STAFF
-- =========================================

UPDATE WarehouseStaff
SET ContactNo = "9876599999",
    Address = "Madurai"
WHERE StaffID = 201;

SELECT * FROM WarehouseStaff
WHERE StaffID = 201;


-- =========================================
-- DELETE INVENTORY RECORD
-- =========================================

DELETE FROM Inventory
WHERE InventoryID = 325;

SELECT * FROM Inventory;


-- =========================================
-- DISPLAY AVAILABLE PRODUCTS
-- =========================================

SELECT * FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";


-- =========================================
-- DISPLAY UNAVAILABLE PRODUCTS
-- =========================================

SELECT * FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";


-- =========================================
-- COUNT AVAILABLE PRODUCTS
-- =========================================

SELECT COUNT(*) AS AvailableProducts
FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";


-- =========================================
-- COUNT UNAVAILABLE PRODUCTS
-- =========================================

SELECT COUNT(*) AS UnavailableProducts
FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";


-- =========================================
-- DISPLAY INVENTORY IN DESCENDING STOCK
-- =========================================

SELECT * FROM Inventory
ORDER BY Stock DESC;


-- =========================================
-- DISPLAY COMPLETE INVENTORY
-- =========================================

SELECT * FROM Inventory;


-- =========================================
-- DISPLAY WAREHOUSE STAFF
-- =========================================

SELECT * FROM WarehouseStaff;