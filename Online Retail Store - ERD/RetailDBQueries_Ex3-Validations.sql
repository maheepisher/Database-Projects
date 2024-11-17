---- a. Check if all orders are associated with existing customers----

SELECT o.order_ID
FROM Orders o
LEFT JOIN Customers c ON o.customerID = c.customerID
WHERE c.customerID IS NULL;

---- b. Find products that have not been reviewed-------

SELECT p.product_ID, p.product_name
FROM Products p
LEFT JOIN Reviews r ON p.product_ID = r.product_id
WHERE r.review_ID IS NULL;

--------------SQL Views---------------------------------
---- a. View to show all products and their average ratings-----

CREATE VIEW Product_Average_Ratings AS
SELECT p.product_ID, p.product_name, AVG(r.Rating) AS average_rating
FROM Products p
LEFT JOIN Reviews r ON p.product_ID = r.product_id
GROUP BY p.product_ID, p.product_name;


-----b. View to show customer details along with their total spending-----

CREATE VIEW Customer_Total_Spending AS
SELECT c.customerID, c.name, SUM(o.total_amount) AS total_spending
FROM Customers c
LEFT JOIN Orders o ON c.customerID = o.customerID
GROUP BY c.customerID, c.name;


select * from Product_Average_Ratings
select * from Customer_Total_Spending