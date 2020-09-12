CREATE TABLE employees(
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(20) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	sex VARCHAR (5) NOT NULL,
	hire_date DATE NOT NULL

);

CREATE TABLE departments(
	dept_no VARCHAR (20) PRIMARY KEY NOT NULL,
	dept_name VARCHAR (50) NOT NULL
);

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR (15) NOT NULL
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(20) NOT NULL,
	emp_no INT NOT NULL
);

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL
);

CREATE TABLE titles(
	title_id VARCHAR (20) PRIMARY KEY NOT NULL,
	title VARCHAR (100) NOT NULL
);
	
	