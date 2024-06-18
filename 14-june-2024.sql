-- Introduction to SQL with detailed examples and comments

-- =========================================
-- Data Definition Language (DDL) Commands
-- =========================================

-- 1. CREATE
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);

-- 2. ALTER
ALTER TABLE Employees
ADD Email VARCHAR(100);

ALTER TABLE Employees
MODIFY COLUMN Salary DECIMAL(12, 2);

-- 3. DROP
DROP TABLE Employees;

-- 4. TRUNCATE
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    HireDate DATE,
    Salary DECIMAL(12, 2),
    Email VARCHAR(100)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, BirthDate, HireDate, Salary, Email)
VALUES
(1, 'Harsha', 'Doe', '1980-01-01', '2020-01-15', 60000.00, 'harsha.doe@example.com'),
(2, 'Sahojit', 'Smith', '1985-02-20', '2018-03-10', 75000.00, 'sahojit.smith@example.com');

TRUNCATE TABLE Employees;

-- =========================================
-- Data Manipulation Language (DML) Commands
-- =========================================

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    HireDate DATE,
    Salary DECIMAL(12, 2),
    Email VARCHAR(100)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, BirthDate, HireDate, Salary, Email)
VALUES
(1, 'Harsha', 'Doe', '1980-01-01', '2020-01-15', 60000.00, 'harsha.doe@example.com'),
(2, 'Sahojit', 'Smith', '1985-02-20', '2018-03-10', 75000.00, 'sahojit.smith@example.com'),
(3, 'Prathmesh', 'Brown', '1990-05-15', '2019-07-22', 55000.00, 'prathmesh.brown@example.com');

-- 1. SELECT
SELECT * FROM Employees;

SELECT FirstName, LastName, HireDate FROM Employees;

SELECT FirstName, LastName FROM Employees
WHERE Salary > 60000;

SELECT FirstName, LastName, Salary FROM Employees
ORDER BY Salary DESC;

-- 2. INSERT
INSERT INTO Employees (EmployeeID, FirstName, LastName, BirthDate, HireDate, Salary, Email)
VALUES (4, 'Sai', 'Johnson', '1988-03-14', '2021-06-01', 70000.00, 'sai.johnson@example.com');

INSERT INTO Employees (EmployeeID, FirstName, LastName, BirthDate, HireDate, Salary, Email)
VALUES
(5, 'Venu', 'Williams', '1992-09-23', '2022-02-20', 50000.00, 'venu.williams@example.com'),
(6, 'Harsha', 'Davis', '1995-12-10', '2021-08-15', 80000.00, 'harsha.davis@example.com');

-- 3. UPDATE
UPDATE Employees
SET Salary = 65000.00
WHERE EmployeeID = 1;

UPDATE Employees
SET Salary = Salary * 1.10
WHERE HireDate < '2021-01-01';

-- 4. DELETE
DELETE FROM Employees
WHERE EmployeeID = 6;

DELETE FROM Employees
WHERE Salary < 60000;

DELETE FROM Employees;

-- =========================================
-- Data Control Language (DCL) Commands
-- =========================================

-- 1. GRANT
GRANT SELECT, INSERT ON Employees TO 'username';

-- 2. REVOKE
REVOKE INSERT ON Employees FROM 'username';

-- =========================================
-- Transaction Control Language (TCL) Commands
-- =========================================

-- 1. COMMIT
BEGIN TRANSACTION;

INSERT INTO Employees (EmployeeID, FirstName, LastName, BirthDate, HireDate, Salary, Email)
VALUES (7, 'Prathmesh', 'Miller', '1987-07-07', '2023-01-01', 90000.00, 'prathmesh.miller@example.com');

COMMIT;

-- 2. ROLLBACK
BEGIN TRANSACTION;

INSERT INTO Employees (EmployeeID, FirstName, LastName, BirthDate, HireDate, Salary, Email)
VALUES (8, 'Sahojit', 'Taylor', '1993-11-11', '2023-02-15', 62000.00, 'sahojit.taylor@example.com');

ROLLBACK;

-- 3. SAVEPOINT
BEGIN TRANSACTION;

INSERT INTO Employees (EmployeeID, FirstName, LastName, BirthDate, HireDate, Salary, Email)
VALUES (9, 'Venu', 'Moore', '1984-05-25', '2022-05-05', 77000.00, 'venu.moore@example.com');

SAVEPOINT BeforeUpdate;

UPDATE Employees
SET Salary = 80000.00
WHERE EmployeeID = 9;

ROLLBACK TO BeforeUpdate;

COMMIT;
