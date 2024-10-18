select emp.last_name, dept.department_name, street_address, region_name
from employees emp inner join departments dept
on emp.department_id = dept.department_id
inner join locations loc on (loc.location_id = dept.location_id)
inner join countries c on (c.country_id = loc.country_id)
inner join regions reg on (reg.region_id = c.region_id);

select emp.last_name, dept.department_name, 
    dept.department_id PK, 
    emp.department_id FK
from employees emp full outer join departments dept
on emp.department_id = dept.department_id;

-- filho: pela FK e pai juncao externa

select boss.last_name boss, boss.job_id BOSS_ID, emp.last_name worker, emp.job_id JOB_ID 
from employees boss join employees emp
on boss.employee_id = emp.manager_id; //pk = fk

select * from departments where manager_id = 103;

select last_name from employees where employee_id = 103;;

select last_name from employees where department_id is null;

select table_name from user_tab_columns
where column_name = 'REGION_NAME';

select b.last_name, d.department_name
from employees b join departments d
on b.employee_id = d.manager_id;
