-- 1. Total Salary of All Employees
SELECT SUM(salary) AS total_salary FROM employees;

-- 2. Average Salary of All Employees
SELECT AVG(salary) AS average_salary FROM employees;

-- 3. Total Number of Employees
SELECT COUNT(*) AS total_employees FROM employees;

-- 4. Total Salary by Department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- 5. Average Salary by Department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- 6. Departments with Total Salary > 100000
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 100000;
