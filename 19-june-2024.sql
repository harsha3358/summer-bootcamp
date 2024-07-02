-- Inner Join between sales and customers to get customer details for each sale
SELECT s.sale_id, s.quantity, s.sale_date, c.first_name, c.last_name, c.email
FROM sales s
INNER JOIN customers c ON s.customer_id = c.customer_id;

-- Inner Join between sales and products to get product details for each sale
SELECT s.sale_id, s.quantity, s.sale_date, p.product_name, p.category, p.price
FROM sales s
INNER JOIN products p ON s.product_id = p.product_id;

-- Inner Join to get all information about sales, including customer and product details
SELECT s.sale_id, s.quantity, s.sale_date, c.first_name, c.last_name, c.email, p.product_name, p.category, p.price
FROM sales s
INNER JOIN customers c ON s.customer_id = c.customer_id
INNER JOIN products p ON s.product_id = p.product_id;

-- Left Join to get all customers and their sales (if any)
SELECT c.first_name, c.last_name, s.sale_id, s.quantity, s.sale_date
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id;

-- Right Join to get all sales and the respective customer details (if any)
SELECT s.sale_id, s.quantity, s.sale_date, c.first_name, c.last_name
FROM sales s
RIGHT JOIN customers c ON s.customer_id = c.customer_id;

-- Full Outer Join to get all customers and all sales, combining left and right join
SELECT c.first_name, c.last_name, s.sale_id, s.quantity, s.sale_date
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
UNION
SELECT c.first_name, c.last_name, s.sale_id, s.quantity, s.sale_date
FROM sales s
RIGHT JOIN customers c ON s.customer_id = c.customer_id;

-- Cross Join to get all combinations of customers and products
SELECT c.first_name, c.last_name, p.product_name, p.category
FROM customers c
CROSS JOIN products p;

-- Aggregate function to get total sales amount for each product
SELECT p.product_name, SUM(s.quantity * p.price) AS total_sales
FROM sales s
INNER JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name;

-- Aggregate function to get the number of sales for each customer
SELECT c.first_name, c.last_name, COUNT(s.sale_id) AS number_of_sales
FROM sales s
INNER JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.customer_id;

-- Using built-in functions to get the highest and lowest priced products
SELECT product_name, price
FROM products
WHERE price = (SELECT MAX(price) FROM products)
UNION
SELECT product_name, price
FROM products
WHERE price = (SELECT MIN(price) FROM products);
