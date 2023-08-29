-- Data Analysis

--List the employee number, last name, first name, sex, and salary of each employee.

select e.emp_no ,
e.last_name ,
e.first_name ,
e.sex ,
s.salary 
from employees e 
left join salaries s 
on e.emp_no = s.emp_no 
order by emp_no ;

-- List the first name, last name, and hire date for the employees who were hired in 1986.

select e.first_name,
e.last_name,
e.hire_date
from employees e 
where date_part('year',hire_date) = 1986 
order by e.hire_date ;

--List the manager of each department along with their department number,
  --department name, employee number, last name, and first name.

select dm.dept_no,
departments.dept_name ,
dm.emp_no ,
employees.last_name ,
employees.first_name 
from dept_manager dm 
left join departments
on dm.dept_no = departments.dept_no 
left join employees
on dm.emp_no = employees.emp_no 
order by emp_no ;

--List the department number for each employee along with that employee’s employee number,
-- last name, first name, and department name.

select e.emp_no,
e.last_name ,
e.first_name ,
de.dept_no ,
d.dept_name 
from employees e 
inner join dept_emp de on e.emp_no = de.emp_no 
inner join departments d on d.dept_no = de.dept_no 
order by emp_no ;

--List first name, last name, and sex of each employee whose first name is Hercules
-- and whose last name begins with the letter B.

select * from employees e 
where first_name = 'Hercules' and last_name like 'B%';

--List each employee in the Sales department, including their employee number,
-- last name, and first name.

select e.emp_no ,
e.last_name,
e.first_name
from employees e 
left join dept_emp de 
on e.emp_no = de.emp_no 
inner join departments d 
on d.dept_no = de.dept_no 
where d.dept_name = 'Sales' ;

--List each employee in the Sales and Development departments, including their employee number,
-- last name, first name, and department name

select e.emp_no,
e.last_name,
e.first_name,
d.dept_name 
from employees e
left join dept_emp de 
on e.emp_no = de.emp_no 
inner join departments d 
on d.dept_no = de.dept_no  
where d.dept_name in ('Sales', 'Development') ;

--List the frequency counts, in descending order,
-- of all the employee last names (that is, how many employees share each last name).

select last_name, count(*) as freq_count
from employees e 
group by last_name 
order by freq_count desc ;