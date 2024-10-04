select last_name, salary FROM employees
WHERE salary > 12000;

select last_name, department_id FROM employees
WHERE employee_id = 176;

select last_name, salary FROM employees
WHERE salary not between 5000 and 12000;

select last_name, manager_id, hire_date FROM employees
WHERE last_name = 'Matos'
OR last_name = 'Taylor'
ORDER BY hire_date;

select last_name, department_id from employees
WHERE department_id in (20,50)
ORDER BY last_name ASC;

select last_name "eMPLOYEE", salary "Monthly salary"
FROM employees
WHERE salary between 5000 and 12000
AND department_id in (20,50);

select last_name, job_id 
from employees
where hire_date LIKE '%94';

SELECT last_name, salary, commission_pct
FROM employees
WHERE manager_id is null;

select last_name, salary, commission_pct
from employees
order by salary, commission_pct desc;

select first_name, last_name
from employees
where first_name LIKE '__a%';

select first_name, last_name
from employees
where first_name LIKE '%a%'
and first_name LIKE '%e%';

select last_name, job_id, salary
from employees
where job_id in ('SA_REP', 'ST_CLERK')
and salary not in (2500, 3500, 7000);

select last_name "eMPLOYEE", salary "Monthly salary", commission_pct "Comission"
FROM employees
WHERE commission_pct = .2;




