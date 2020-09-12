-- Question 1 
--List the following details of each employee: employee number, last name, first name, sex, and salary.

Select employees.emp_no as "EmployeeNumber", last_name as "LastName", first_name as "FirstName", sex,salary

from employees

INNER JOIN salaries ON employees.emp_no=salaries.emp_no

--2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date

From employees

where hire_date >= '1/1/1986' AND hire_date < '1/1/1987'

order by hire_date

--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
select departments.dept_no as "DepartmentNumber", departments.dept_name as "DepartmentName",
dept_manager.emp_no as "EmployeeNumber", employees.last_name, employees.first_name

from departments

INNER JOIN dept_manager ON departments.dept_no=dept_manager.dept_no
INNER JOIN employees ON dept_manager.emp_no=employees.emp_no;

--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
select dept_emp.emp_no as "EmployeeNumber", last_name as "LastName",
first_name as "FirstName", departments.dept_name as "DepartmentName"

From dept_emp

INNER JOIN departments ON dept_emp.dept_no=departments.dept_no
INNER JOIN employees ON dept_emp.emp_no=employees.emp_no

--5. List first name, last name, and sex 
--for employees whose first name is "Hercules" and last names begin with "B."

select employees.first_name as "FirstName", employees.last_name as "LastName",
employees.sex

from employees

where first_name = 'Hercules' AND last_name Like 'B%'

--5.List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.
--Use where clause


select dept_emp.emp_no AS "EmployeeNumber", employees.last_name AS "LastName",
employees.first_name as "FirstName", departments.dept_name as "Department"
From dept_emp

INNER JOIN departments ON dept_emp.dept_no=departments.dept_no
INNER JOIN employees ON dept_emp.emp_no=employees.emp_no

Where departments.dept_name = 'Sales'

-- Question 7
-- List all employees in the Sales and Development departments
--including their employee number, last name, first name, and department name.

select dept_emp.emp_no as "EmployeeNumber", employees.last_name as "LastName",
employees.first_name as "FirstName", departments.dept_name as "Department"
From dept_emp

INNER JOIN departments ON dept_emp.dept_no=departments.dept_no
INNER JOIN employees ON dept_emp.emp_no=employees.emp_no

Where departments.dept_name IN ('Sales','Development') 

-- Question 8
--In descending order, list the frequency count of employee last names,
--i.e., how many employees share each last name.

select employees.last_name as "LastName", COUNT(employees.emp_no) as "NumberofEmployees"

from employees

group by employees.last_name

order by COUNT(employees.emp_no) DESC