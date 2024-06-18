-- String Functions
SELECT CHAR_LENGTH('Harsha');
SELECT ASCII('Sahojit');
SELECT ASCII('Prathmesh');
SELECT CONCAT('Hello', ' ', 'Sai');
SELECT INSTR('Venu is here', 'e');
SELECT INSTR('Harsha is here', 'x');
SELECT LCASE('HARSHA');
SELECT LOWER('Prathmesh');
SELECT UCASE('sai');
SELECT UPPER('venu');
SELECT SUBSTR('Hello, Harsha!', 8, 6);
SELECT SUBSTR('Welcome, Prathmesh', 1, 7);
SELECT LPAD('Sai', 10, '*');
SELECT RPAD('Venu', 10, '*');
SELECT TRIM('   Harsha   ');
SELECT RTRIM('   Sahojit   ');
SELECT LTRIM('   Prathmesh   ');

-- Date and Time Functions
SELECT CURRENT_DATE() AS today;
SELECT DATEDIFF('2023-05-10', '2023-05-01') AS day_difference;
SELECT DATE('2023-05-01 12:34:56') AS result;
SELECT CURRENT_TIME() AS now;
SELECT LAST_DAY('2023-05-01') AS last_day_of_may;
SELECT SYSDATE() AS `Timestamp`;
SELECT ADDDATE('2023-05-01', INTERVAL 7 DAY) AS one_week_later;

-- Numeric Functions
SELECT AVG(salary) AS avg_salary
FROM employees;
SELECT COUNT(*) AS total_employees
FROM employees;
SELECT POW(2, 3) AS result;
SELECT MIN(salary) AS min_salary
FROM employees;
SELECT MAX(age) AS max_age, department
FROM employees
GROUP BY department;
SELECT ROUND(3.1416, 2) AS result; 
SELECT ROUND(3.1416) AS result;
-- Output: 3
SELECT SQRT(25) AS result;
-- Output: 5
SELECT FLOOR(3.8) AS result;
-- Output: 3
SELECT FLOOR(-3.8) AS result; 
-- Output: -4
