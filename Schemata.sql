CREATE TABLE titles(
	title_id VARCHAR (255) PRIMARY KEY,
	title VARCHAR (255) NOT NULL
);

CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR (255) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (255) NOT NULL,
	last_name VARCHAR (255) NOT NULL,
	sex VARCHAR (255) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

CREATE TABLE departments(
	dept_no VARCHAR (255) PRIMARY KEY,
	dept_name VARCHAR (255) NOT NULL
);

CREATE TABLE department_managers(
	dept_no VARCHAR (255),
	emp_no INT PRIMARY KEY,
	FOREIGN KEY	(emp_no) REFERENCES	employees (emp_no)
);

CREATE TABLE department_employees(
	emp_no INT,
	dept_no VARCHAR (255) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
	
CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary MONEY,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

select * from departments;
