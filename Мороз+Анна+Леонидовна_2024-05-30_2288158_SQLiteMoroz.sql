CREATE TABLE Employees (
 id INTEGER,
 first_name TEXT,
 last_name TEXT,
 Age INTEGER,
 Salary INTEGER
);
INSERT INTO Employees (id, first_name, last_name, Age, Salary) VALUES
(1, 'John', 'Doe', 35, 50000),
(2, 'Alice', 'Smith', 28, 45000),
(3, 'Michael', 'Johnson', 40, NULL),
(4, 'Emily', 'Brown', 33, 60000),
(5, 'David', 'Wilson', 29, 48000),
(6, 'Sarah', 'Lee', 31, NULL),
(7, 'James', 'Anderson', 37, 55000),
(8, 'Olivia', 'Martinez', 26, 42000),
(9, 'Daniel', 'Taylor', 45, 70000),
(10, 'Sophia', 'Garcia', 30, NULL);
SELECT * FROM Employees;
SELECT first_name,last_name,age FROM Employees WHERE Age>30;
SELECT first_name,last_name FROM Employees WHERE salary IS NULL;
SELECT first_name,last_name,salary FROM Employees ORDER BY salary ASC;
SELECT AVG(Salary) as avg_salary  FROM employees;
ALTER TABLE Employees 
ADD COLUMN Department TEXT;
UPDATE Employees
SET Department='IT' WHERE id IN (1,4,9,10);
UPDATE Employees
SET Department='HR' WHERE id IN (2,3,5,6,7,8);
SELECT Department,COUNT(*) AS num_employees FROM Employees GROUP BY Department;
SELECT MAX(Salary) AS max_salary, MIN(Salary) as min_salary FROM Employees;
