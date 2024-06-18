USE amazon;
-- GROUP BY , HAVVING , ORDER BY 
SELECT cname, COUNT(*) AS Number
FROM customer
GROUP BY cname
HAVING Number >= 1;

SELECT location, GROUP_CONCAT(DISTINCT pname) AS product_names
FROM products
GROUP BY location;

SELECT location, SUM(stock) AS total_stock
FROM products
GROUP BY location;

SELECT pid, pname, price
FROM products
ORDER BY price ASC;

SELECT cid, cname, age
FROM customer
ORDER BY age DESC;

SELECT pid, pname, stock
FROM products
GROUP BY pid, pname, stock
HAVING stock < 10;

SELECT location, SUM(stock) AS total_stock
FROM products
GROUP BY location
HAVING SUM(stock) > 50;

-- SELECT

SELECT DISTINCT cname, addr
FROM customer;

SELECT *
FROM orders;

SELECT oid
FROM orders;

SELECT *
FROM customer
WHERE cname LIKE "%Ra%";

SELECT *
FROM customer
WHERE cname LIKE "Ra%";

SELECT *
FROM customer
WHERE cname LIKE "%vi";

SELECT cid, cname,
       CASE WHEN cid > 102 THEN 'Pass' ELSE 'Fail' END AS 'Remark'
FROM customer;

SELECT cid, cname,
       IF(cid > 102, 'Pass', 'Fail') AS 'Remark'
FROM customer;

SELECT *
FROM customer
ORDER BY cid
LIMIT 2;

SELECT *
FROM customer
WHERE cname = "Ravi";

