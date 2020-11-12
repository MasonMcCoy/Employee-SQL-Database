--QUERY #1
SELECT employees.emp_no, last_name, first_name, sex, salary
FROM employees
LEFT JOIN salaries
USING (emp_no)
;

--QUERY #2
SELECT first_name, last_name, hire_date
FROM employees
WHERE date_part('year', hire_date) = '1986'
;

--QUERY #3
SELECT dept_no, dept_name, emp_no, last_name, first_name
FROM employees
LEFT JOIN dept_manager
USING (emp_no)
LEFT JOIN departments
USING (dept_no)
WHERE dept_no IS NOT NULL
;

--QUERY #4
SELECT emp_no, last_name, first_name, dept_name
FROM employees
LEFT JOIN dept_emp
USING (emp_no)
LEFT JOIN departments
USING (dept_no)
;

--QUERY #5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
;

--QUERY #6
SELECT emp_no, last_name, first_name, dept_name
FROM employees
LEFT JOIN dept_emp
USING (emp_no)
LEFT JOIN departments
USING (dept_no)
WHERE dept_name = 'Sales'
;

--QUERY #7
SELECT emp_no, last_name, first_name, dept_name
FROM employees
LEFT JOIN dept_emp
USING (emp_no)
LEFT JOIN departments
USING (dept_no)
WHERE dept_name = 'Sales'

UNION

SELECT emp_no, last_name, first_name, dept_name
FROM employees
LEFT JOIN dept_emp
USING (emp_no)
LEFT JOIN departments
USING (dept_no)
WHERE dept_name = 'Development'
;

--QUERY #8
SELECT last_name, COUNT(last_name)
FROM employees 
GROUP BY last_name
ORDER BY COUNT(last_name) DESC
;