-- TCL
-- Transaction Control Language (TCL) is used to manage transactions in SQL, ensuring data integrity by controlling the beginning and ending of transactions.

USE amazon;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    stock_quantity INT DEFAULT 0
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- TCL Example: Managing transactions with BEGIN, COMMIT, and ROLLBACK
BEGIN;

-- Inserting data into Customers table
INSERT INTO Customers (customer_id, name, email) VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com'),
(2, 'Bob Smith', 'bob.smith@example.com'),
(3, 'Carol Taylor', 'carol.taylor@example.com');

-- Inserting data into Products table
INSERT INTO Products (product_id, product_name, stock_quantity) VALUES
(101, 'Laptop', 50),
(102, 'Headphones', 200);

-- Commit the transaction to make changes permanent
COMMIT;

-- Rollback example (commented out for now)
-- ROLLBACK;

-- Triggers
-- Triggers are special types of stored procedures that automatically execute when a specific event occurs in the database.

-- Example: Update stock_quantity in Products table after insertion into Orders
DELIMITER //
CREATE TRIGGER UpdateStockQuantity
AFTER INSERT ON Orders
FOR EACH ROW
BEGIN
    DECLARE new_stock INT;
    SELECT stock_quantity - NEW.quantity INTO new_stock FROM Products WHERE product_id = NEW.product_id;
    UPDATE Products SET stock_quantity = new_stock WHERE product_id = NEW.product_id;
END //
DELIMITER ;

-- Example insert into Orders triggering the update
INSERT INTO Orders (order_id, customer_id, product_id, order_date, quantity) VALUES
(1, 1, 101, '2024-06-24', 1);

-- Check if trigger updated stock_quantity in Products table
SELECT * FROM Products;

-- Views
-- Views are virtual tables created by a query. They can simplify complex queries and provide a layer of security by restricting access to certain columns.

-- Example: Create a view to display customer information with order details
CREATE VIEW CustomerOrderView AS
SELECT C.name AS customer_name, C.email, P.product_name, O.order_date, O.quantity
FROM Customers C
JOIN Orders O ON C.customer_id = O.customer_id
JOIN Products P ON O.product_id = P.product_id;

-- Query the view
SELECT * FROM CustomerOrderView;
