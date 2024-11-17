------------------create tables------------------------

Create table customers(
customerID varchar(10),
name varchar(255) not null,
emailid varchar(255),
address varchar(1000),
Primary Key (customerID)
);

Create table Products(
product_ID varchar(10),
product_name varchar(255) not null,
product_category varchar(255) not null,
description varchar(255),
price decimal not null,
Primary Key (product_ID)
);

Create table Orders(
order_ID varchar(10),
customerID varchar(10) not null,
order_date date,
product_id varchar(10),
order_quantity int,
total_amount decimal not null,
Primary Key (order_ID),
FOREIGN KEY (customerID) REFERENCES customers(customerID),
FOREIGN KEY (product_id) REFERENCES products(product_id)

);

Create table Inventory(
product_id varchar(10),
stock_quantity int,
Primary Key (product_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);

Create table Reviews(
review_ID varchar(10),
product_id varchar(10),
customerID varchar(10),
Rating int,
Review varchar(1000),
Review_date date,
Primary Key (review_id),
FOREIGN KEY (product_id) REFERENCES products(product_id),
FOREIGN KEY (customerID) REFERENCES customers(customerID)

);


------------------insert scripts----------------------------

INSERT INTO Customers (customerID, name, emailid, address) VALUES 
('C001', 'Maheep Chawla', 'maheep@gmail.com', '123 William Lott Dr, Oshawa, ON'),
('C002', 'Poorva Sharma', 'psharma@gmail.com', '456 Elm St, Oshawa, ON'),
('C003', 'Mushkan Banu', 'mushkan@yahoo.com', '789 Oak St, Oshawa, ON'),
('C004', 'Abhinav Sharma', 'abhisharma@yahoo.com', '101 Rossland St, Oshawa, ON'),
('C005', 'Vijesh Sehravat', 'vs10001@gmail.com', '202 Rossland St, Oshawa, ON'),
('C006', 'Raman Kumar', 'rk2401@gmail.com', '303 Cedar St, Himachal, IN');

INSERT INTO Products (product_ID, product_name, product_category, description, price) VALUES 
('P001', 'Laptop', 'Electronics', '15-inch laptop with 8GB RAM', 899.99),
('P002', 'T-shirt', 'Clothing', 'Cotton t-shirt in various colors', 29.99),
('P003', 'Book: Learning SQL', 'Books', 'A comprehensive guide to SQL', 59.99),
('P004', 'Smartphone', 'Electronics', 'Latest model smartphone with 128GB storage', 799.99),
('P005', 'Jeans', 'Clothing', 'Denim jeans with a classic fit', 49.99),
('P006', 'Wireless Headphones', 'Electronics', 'Noise-cancelling wireless headphones', 149.99),
('P007', 'Cap', 'Accessories', 'Under Armour Cap', 34.99),
('P008', 'Wallet', 'Accessories', 'Fossil Wallet - Leather finish', 39.99),
('P009', 'Cookbook', 'Books', 'Easy recipes for everyday cooking', 20.99);

INSERT INTO Orders (order_ID, customerID, order_date, product_id, order_quantity, total_amount) VALUES 
('O001', 'C001', '2024-10-01', 'P001', 1, 899.99),
('O002', 'C002', '2024-10-02', 'P002', 3, 89.97),
('O003', 'C003', '2024-10-03', 'P003', 2, 119.98),
('O004', 'C004', '2024-10-04', 'P004', 1, 799.99),
('O005', 'C005', '2024-10-05', 'P005', 2, 99.98),
('O006', 'C003', '2024-10-03', 'P003', 2, 119.98),
('O007', 'C004', '2024-10-04', 'P006', 1, 149.99),
('O008', 'C002', '2024-10-05', 'P007', 2, 69.98),
('O009', 'C003', '2024-10-03', 'P008', 2, 79.98),
('O010', 'C001', '2024-10-04', 'P009', 1, 20.99),
('O011', 'C005', '2024-10-05', 'P002', 2, 59.98),
('O012', 'C006', '2024-10-06', 'P006', 1, 149.99);


INSERT INTO Inventory (product_id, stock_quantity) VALUES 
('P001', 50),
('P002', 100),
('P003', 75),
('P004', 30),
('P005', 60),
('P006', 40),
('P007', 60),
('P008', 40),
('P009', 80);


INSERT INTO Reviews (review_ID, product_id, customerID, Rating, Review, Review_date) VALUES 
('R001', 'P001', 'C001', 5, 'Excellent performance and build quality!', '2024-10-04'),
('R002', 'P002', 'C002', 4, 'Very comfortable and good value for money.', '2024-10-05'),
('R003', 'P003', 'C003', 5, 'Highly informative and well-written!', '2024-10-09'),
('R004', 'P004', 'C004', 3, 'Great phone, but a bit pricey.', '2024-10-07'),
('R005', 'P005', 'C005', 5, 'Perfect fit and very stylish!', '2024-10-05'),
('R006', 'P006', 'C004', 3, 'Good sound quality, but battery life could be better.', '2024-10-09'),
('R007', 'P007', 'C002', 4, 'Perfect fit and trendy!', '2024-10-11');



select * from customers
select * from products
select * from orders
select * from Inventory
select * from Reviews