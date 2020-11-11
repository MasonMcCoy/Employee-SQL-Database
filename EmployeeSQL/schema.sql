DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE employees (
	emp_no INTEGER NOT NULL,
	title_id VARCHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(25) NOT NULL,
	last_name VARCHAR(25) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
)
;

CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(18) NOT NULL,
	PRIMARY KEY (dept_no)
)
;

CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
		FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
		FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
)
;

CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
	emp_no INTEGER NOT NULL,
		FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
		FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
)
;

CREATE TABLE salaries (
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
		FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
)
;

CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL,
	title VARCHAR(18) NOT NULL
)
;