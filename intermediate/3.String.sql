-- String function

-- length
select length('skyfall');
select length('  skyfall');

select first_name, length(first_name)
from parks_and_recreation.employee_demographics
order by 2;   # (refer the 2 colomn)


-- upper 

select upper("skyfall");
select lower("SKYFALL");

select first_name , upper(first_name) , lower(first_name)
from parks_and_recreation.employee_demographics;

-- trim (left and right)

select trim('     sky       fall    ');
select ltrim('              sky');
select rtrim('           sky              ');

select first_name,
left(first_name , 4),
right(first_name , 4),
substring(first_name,2,4),
birth_date,
substring(birth_date,6,2) as birth_month,
substring(birth_date,1,4) as birth_year,
substring(birth_date,9,2) as B_date
from parks_and_recreation.employee_demographics;

select first_name , replace(first_name , 'a' , 'z')
from parks_and_recreation.employee_demographics;

select locate('y' ,'aryan');

select first_name , last_name,
concat(first_name ,' ', last_name)
from parks_and_recreation.employee_demographics;



 

