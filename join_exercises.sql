USE employees;

SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = dm.dept_no
WHERE dm.to_date > now()
ORDER BY d.dept_name;

-- Find the name of all departments currently managed by women.

SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date > now() AND gender = 'F'
ORDER BY d.dept_name;

-- Find the current titles of employees currently working in the Customer Service department.

SELECT t.title, COUNT(*)
FROM titles as t
JOIN dept_emp AS de
ON t.emp_no = de.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01' AND dept_name = 'Customer Service' AND t.to_date = '9999-01-01'
GROUP BY t.title;

-- Find the current salary of all current managers.
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager,
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date > now()
ORDER BY d.dept_name;