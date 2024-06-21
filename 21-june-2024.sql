USE amazon;

-- Example procedure to select all products
DELIMITER $$
CREATE PROCEDURE select_all_products()
BEGIN
    SELECT * FROM products;
END$$
DELIMITER ;

CALL select_all_products();

-- Example function to calculate total revenue for completed orders
DELIMITER $$
CREATE FUNCTION get_total_revenue()
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total_revenue DECIMAL(10,2);
    SELECT SUM(p.amount) INTO total_revenue
    FROM payment p
    INNER JOIN orders o ON p.order_id = o.order_id
    WHERE o.status = 'Completed';
    RETURN total_revenue;
END$$
DELIMITER ;

SELECT get_total_revenue();

-- Example procedure with an IN parameter to retrieve product details
DELIMITER $$
CREATE PROCEDURE get_product_details(IN product_id INT)
BEGIN
    SELECT * FROM products WHERE product_id = product_id;
END$$
DELIMITER ;

CALL get_product_details(5);

-- Example procedure with an OUT parameter to get product count
DELIMITER $$
CREATE PROCEDURE get_product_count(OUT total_count INT)
BEGIN
    SELECT COUNT(*) INTO total_count FROM products;
END$$
DELIMITER ;

CALL get_product_count(@count);
SELECT @count AS total_products;

-- Example using predefined SUM() cursor to calculate total price of electronics
DELIMITER $$
CREATE PROCEDURE calc_total_electronics_price(OUT total_price DECIMAL(10,2))
BEGIN
    SELECT SUM(price) INTO total_price
    FROM products
    WHERE category = 'Electronics';
END$$
DELIMITER ;

CALL calc_total_electronics_price(@total);
SELECT @total AS total_electronics_price;

-- Example using a cursor to print product names
DELIMITER $$
CREATE PROCEDURE print_product_names()
BEGIN
    DECLARE product_name VARCHAR(100);
    DECLARE done INT DEFAULT FALSE;
    DECLARE product_cursor CURSOR FOR SELECT name FROM products;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN product_cursor;

    get_names: LOOP
        FETCH product_cursor INTO product_name;
        IF done THEN
            LEAVE get_names;
        END IF;
        SELECT product_name;
    END LOOP get_names;

    CLOSE product_cursor;
END$$
DELIMITER ;
