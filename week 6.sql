CREATE DATABASE IF NOT EXISTS STEPSTYLE;

USE STEPSTYLE;




CREATE TABLE Review
(
    ReviewID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ProductID INT,
    ReviewText VARCHAR(255),
    ReviewDate DATE
);




CREATE TABLE Rating
(
    RatingID INT PRIMARY KEY,
    ReviewID INT,
    Rating INT,
    FOREIGN KEY (ReviewID) REFERENCES Review(ReviewID)
);


-- 3. Insert Review Details

INSERT INTO Review VALUES
(1, 'Arun', 101, 'Good quality shoes', '2026-09-01'),
(2, 'Priya', 102, 'Comfortable shoes', '2026-09-02'),
(3, 'Kavin', 103, 'Poor quality', '2026-09-03'),
(4, 'Divya', 104, 'Very comfortable', '2026-09-04'),
(5, 'Rahul', 105, 'Average quality', '2026-09-05'),
(6, 'Anu', 106, 'Excellent shoes', '2026-09-06'),
(7, 'Vijay', 107, 'Not comfortable', '2026-09-07'),
(8, 'Meena', 108, 'Good design', '2026-09-08'),
(9, 'Suresh', 109, 'Very good shoes', '2026-09-09'),
(10, 'Nisha', 110, 'Poor design', '2026-09-10');


-- 4. Insert Rating Details

INSERT INTO Rating VALUES
(1, 1, 5),
(2, 2, 4),
(3, 3, 2),
(4, 4, 5),
(5, 5, 3),
(6, 6, 5),
(7, 7, 2),
(8, 8, 4),
(9, 9, 5),
(10, 10, 2);




SELECT * FROM Review;




SELECT * FROM Rating;




SELECT Review.ReviewID, CustomerName, ProductID,
       ReviewText, Rating
FROM Review
JOIN Rating
ON Review.ReviewID = Rating.ReviewID;


-- 8. Display 5-Star Ratings

SELECT * FROM Rating
WHERE Rating = 5;


-- 9. Display Ratings Below 3

SELECT * FROM Rating
WHERE Rating < 3;


-- 10. Search Good Reviews

SELECT * FROM Review
WHERE ReviewText LIKE '%Good%';


-- 11. Update Review

UPDATE Review
SET ReviewText = 'Very good quality shoes'
WHERE ReviewID = 2;


-- 12. Update Rating

UPDATE Rating
SET Rating = 5
WHERE RatingID = 2;


-- 13. Count Total Reviews

SELECT COUNT(*) AS TotalReviews
FROM Review;


-- 14. Calculate Average Rating

SELECT AVG(Rating) AS AverageRating
FROM Rating;


-- 15. Find Highest Rating

SELECT MAX(Rating) AS HighestRating
FROM Rating;