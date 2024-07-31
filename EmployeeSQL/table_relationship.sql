Drop table employees;
Drop table departments;
Drop table titles;
Drop table dept_emp;
Drop table salaries;
Drop table dept_manager;

-- Create titles table
create table titles (
	title_id VARCHAR(5) PRIMARY KEY NOT NULL,
	title VARCHAR(40) NOT NULL
);
select * from titles;

-- Create employees table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(35) NOT NULL,
	last_name VARCHAR(35) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	foreign key (emp_title_id) references titles (title_id)
);

select * from employees;

-- Create departments table
create table departments (
	dept_no VARCHAR(4) primary key NOT NULL,
	dept_name VARCHAR(40) NOT NULL
);
select * from departments;


-- Create department employee table
create table dept_emp (
	emp_no INT NOT NULL, -- emp_no is not unique in employees table
	dept_no VARCHAR(8) NOT NULL, -- dept_no is not unique in departments table
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no),
<<<<<<< HEAD
	primary key (emp_no, dept_no)
=======
    primary key (dept_no, emp_no)  -- composite key
>>>>>>> a80f78b4c50d409697771211f5cfd3704c257eda
);

select * from dept_emp;

-- Create Department manager table
create table dept_manager (
	dept_no VARCHAR(8) NOT NULL, -- emp_no is not unique in departments table
	emp_no INT NOT NULL, -- dept_no is not unique in employees table
	foreign key (dept_no) references departments (dept_no),
<<<<<<< HEAD
    foreign key (emp_no) references employees (emp_no) ,
	primary key (dept_no, emp_no)  
=======
    foreign key (emp_no) references employees (emp_no),
    primary key (dept_no, emp_no)  -- composite key
>>>>>>> a80f78b4c50d409697771211f5cfd3704c257eda
);
select * from dept_manager;

-- Create salaries table
create table salaries (
	emp_no INT PRIMARY KEY NOT NULL,
	salary INT NOT NULL,
    foreign key (emp_no) references employees (emp_no)
);

select * from salaries;

