-- Where Clause

select *
from parks_and_recreation.employee_salary
where first_name = 'Leslie';

select *
from parks_and_recreation.employee_salary
where occupation = 'Office Manager';

select *
from parks_and_recreation.employee_salary;

select * 
from parks_and_recreation.employee_salary
where salary >= 50000;

select * 
from parks_and_recreation.employee_demographics
where gender != 'female';

select * 
from parks_and_recreation.employee_demographics
where birth_date > '1985-01-01';


-- And or not -- logical operator
select *
from parks_and_recreation.employee_demographics
where birth_date > '1958-01-01'
 and gender = 'male';
 
 
 -- LIKE Statement
 -- %(anything) and _(Specific value)
 
 select *
 from parks_and_recreation.employee_demographics
 where first_name like 'A%';
 
 select *
 from parks_and_recreation.employee_demographics
 where first_name like 'a__';    # Ann   a__ = Ann 2 place specific
 
 select *
 from parks_and_recreation.employee_demographics
 where first_name like 'A__%';
