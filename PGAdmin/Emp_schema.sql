-- -- Drop tables that depend on others first
-- DROP TABLE IF EXISTS dept_manager;
-- DROP TABLE IF EXISTS dept_emp;
-- DROP TABLE IF EXISTS salaries;

-- -- Now drop the employees table, which depends on titles
-- DROP TABLE IF EXISTS employees;

-- -- Finally, drop the titles and departments tables
-- DROP TABLE IF EXISTS titles CASCADE; -- Assuming there might be other dependencies
-- DROP TABLE IF EXISTS departments CASCADE;


--Create Tables for Data Sources

CREATE TABLE departments (
		dept_no VARCHAR(10) PRIMARY KEY,
		dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE titles (
		title_id VARCHAR (5) PRIMARY KEY,
		title VARCHAR(30) NOT NULL
);

CREATE TABLE employees(
		emp_no VARCHAR (30) PRIMARY KEY, 
		emp_title_id VARCHAR(5) NOT NULL,
		birth_date DATE NOT NULL, 
		first_name VARCHAR(45) NOT NULL,
		last_name VARCHAR(45) NOT NULL,
		sex VARCHAR(1) NOT NULL,
		hire_date DATE NOT NULL,
		FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_manager(
		dept_no VARCHAR(10) NOT NULL,
		emp_no VARCHAR(30) NOT NULL,
		PRIMARY KEY (dept_no, emp_no),
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp(
		emp_no VARCHAR(30) NOT NULL,
		dept_no VARCHAR(10) NOT NULL,  
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
		emp_no VARCHAR(30) NOT NULL,
		salary INT NOT NULL,
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);









