USE employees;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT emp_no, first_name, last_name
FROM employees WHERE gender = 'M'
AND (
            first_name = ('Irena')
            OR first_name = ('Vidya')
            OR first_name = ('Maya')
        )
ORDER BY last_name DESC, first_name DESC;


-- Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

-- Find all employees hired in the 90s — 135,214 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE hire_date BETWEEN 1989 AND 2000;

-- Find all employees born on Christmas — 842 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE hire_date = '%%%%-12-25';

-- Find all employees with a 'q' in their last name — 1,873 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
    OR last_name LIKE '%E';

-- Duplicate the previous query and update it to find all employees
-- whose last name starts and ends with 'E' — 899 rows.
SELECT CONCAT(first_name, last_name)
FROM employees
WHERE last_name LIKE 'E%'
   AND (
       last_name LIKE '%E'
    );

-- Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT DATEDIFF(NOW(), hire_date)
FROM employees
WHERE hire_date LIKE '199%'
    AND(
        birth_date LIKE '%-12-25'
    )
ORDER BY birth_date ASC, hire_date DESC;



-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
AND(
    last_name NOT LIKE 'qu'
    );
