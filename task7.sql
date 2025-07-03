
-- 1. Create Tables
CREATE TABLE employees (
    emp_id INTEGER PRIMARY KEY,
    name TEXT,
    department TEXT,
    salary INTEGER
);

CREATE TABLE departments (
    dept_name TEXT PRIMARY KEY,
    location TEXT
);

-- 2. Insert Sample Data into Tables
INSERT INTO employees VALUES (1, 'Alice', 'HR', 50000);
INSERT INTO employees VALUES (2, 'Bob', 'Engineering', 75000);
INSERT INTO employees VALUES (3, 'Charlie', 'Engineering', 60000);
INSERT INTO employees VALUES (4, 'Diana', 'HR', 55000);
INSERT INTO employees VALUES (5, 'Eve', 'Marketing', 45000);

INSERT INTO departments VALUES ('HR', 'Delhi');
INSERT INTO departments VALUES ('Engineering', 'Bangalore');
INSERT INTO departments VALUES ('Marketing', 'Mumbai');

-- 3. Create Views

-- a. View: High Salary Employees
CREATE VIEW high_salary_employees AS
SELECT name, salary, department
FROM employees
WHERE salary > 55000;

-- b. View: Employee with Department Location
CREATE VIEW employee_department_info AS
SELECT e.name, e.department, d.location
FROM employees e
JOIN departments d ON e.department = d.dept_name;

-- c. View: Average Salary by Department
CREATE VIEW avg_salary_by_department AS
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- d. View: HR Employees Only (with CHECK OPTION - optional in SQLite)
-- (Note: SQLite supports CHECK OPTION syntax but does not enforce it)
CREATE VIEW hr_employees AS
SELECT * FROM employees
WHERE department = 'HR';

-- 4. Querying the Views

-- View a: High Salary Employees
SELECT * FROM high_salary_employees;

-- View b: Employee and Department Location
SELECT * FROM employee_department_info;

-- View c: Average Salary by Department
SELECT * FROM avg_salary_by_department;

-- View d: Only HR Employees
SELECT * FROM hr_employees;


DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    emp_id INTEGER PRIMARY KEY,
    name TEXT,
    department TEXT,
    salary INTEGER
);

INSERT INTO employees VALUES (1, 'Alice', 'HR', 50000);
INSERT INTO employees VALUES (2, 'Bob', 'Engineering', 75000);

CREATE VIEW hr_employees AS
SELECT * FROM employees
WHERE department = 'HR';

SELECT * FROM hr_employees;