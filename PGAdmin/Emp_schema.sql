--Create Tables for Data Sources

CREATE TABLE departments (
		dept_no VARCHAR(10) PRIMARY KEY,
		dept_name VARCHAR(30)
);

CREATE TABLE titles (
		title_id VARCHAR (5) PRIMARY KEY,
		title VARCHAR(30) 
);

CREATE TABLE employees(
		emp_no VARCHAR (30) PRIMARY KEY, 
		emp_title_id VARCHAR(5),
		birth_date DATE, 
		first_name VARCHAR(45),
		last_name VARCHAR(45),
		sex VARCHAR(1),
		hire_date DATE,
		FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_manager(
		dept_no VARCHAR(10),
		emp_no VARCHAR(30),
		PRIMARY KEY (dept_no, emp_no),
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp(
		emp_no VARCHAR(30),
		dept_no VARCHAR(10),  
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
		emp_no VARCHAR(30),
		salary INT,
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);








