-- Unions

select first_name , last_name
from parks_and_recreation.employee_demographics
union
select first_name , last_name
from parks_and_recreation.employee_salary ;


-- union with distinct

select first_name , last_name
from parks_and_recreation.employee_demographics
union distinct
select first_name , last_name
from parks_and_recreation.employee_salary ;

-- union with All

select first_name , last_name
from parks_and_recreation.employee_demographics
union all
select first_name , last_name
from parks_and_recreation.employee_salary ;

-- lable

select first_name , last_name , 'Old Man' as label
from parks_and_recreation.employee_demographics
where age > 40 and gender = "Male"
union
select first_name , last_name , 'Old Lady' as label
from parks_and_recreation.employee_demographics
where age > 40 and gender = 'Female'
union
select first_name , last_name , 'highly paid employee' as label
from parks_and_recreation.employee_salary
where salary > 70000
order by first_name,last_name;