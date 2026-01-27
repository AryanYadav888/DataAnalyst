--- CTEs
with cte_example as (                   
select gender,avg(salary) as avg_sal , max(salary) as max_sal,
min(salary) as min_sal , count(salary) as count
from parks_and_recreation.employee_demographics as dem
join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender
)
select *
from cte_example;


with cte_example as (
select gender,avg(salary) as avg_sal , max(salary) as max_sal,
min(salary) as min_sal , count(salary) as count
from parks_and_recreation.employee_demographics as dem
join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender
)
select avg(avg_sal)
from cte_example;



--------------------------------------------------------------------------------------

with cte_example as (
select employee_id ,gender,birth_date
from parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
),
cte_example2 as (
select * 
from parks_and_recreation.employee_salary
where salary > 50000
)
select *
from cte_example as first_cte
join cte_example2 as second_cte
	on first_cte.employee_id = second_cte.employee_id;
    



