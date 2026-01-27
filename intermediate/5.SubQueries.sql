-- Subqueries

select * 
from parks_and_recreation.employee_demographics
where employee_id in (
	select employee_id
    from parks_and_recreation.employee_salary
    where dept_id = 1
);

select *
from parks_and_recreation.employee_salary;