-- Step_1: Create a sample table
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);

-- Step_2: Insert testing data
INSERT INTO employees (first_name, last_name, salary, hire_date) VALUES
('John', 'Doe', 50000.00, '2021-06-01'),
('Jane', 'Smith', 60000.00, '2020-01-15'),
('Alice', 'Johnson', 55000.00, '2019-11-22');

-- Step_3: SQL Functions

-- CONCAT() function
SELECT CONCAT(first_name, ' ', last_name) AS full_name, salary, * 
FROM employees;

-- ROUND() function
SELECT first_name, last_name, ROUND(salary, 0) AS rounded_salary, * 
FROM employees;

-- DATE_FORMAT() function
SELECT first_name, last_name, DATE_FORMAT(hire_date, '%W, %M %e, %Y') AS formatted_hire_date, * 
FROM employees;

