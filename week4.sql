-- Inserting a single record into the employees table
INSERT INTO employees (employee_id, first_name, last_name, department_id, salary)
VALUES (101, 'Jane', 'Doe', 1, 60000.00);

-- Inserting multiple records at once
INSERT INTO employees (employee_id, first_name, last_name, department_id, salary)
VALUES
(102, 'John', 'Smith', 2, 75000.00),
(103, 'Emily', 'Jones', 1, 58000.00),
(104, 'Chris', 'Davis', 3, 90000.00);

-- Updating the salary for a specific employee
UPDATE employees
SET salary = 65000.00
WHERE employee_id = 101;

-- Deleting an employee record based on their ID
DELETE FROM employees
WHERE employee_id = 103;

-- Using an INNER JOIN to retrieve employee names and their department names
SELECT e.first_name, e.last_name, d.department_name
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id;

-- Finding all employees with a last name that starts with 'S'
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'S%';