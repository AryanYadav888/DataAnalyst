-- Case statement

select first_name,last_name,
case
	when age <= 30 then 'Young'
    when age between 31 and 60 then 'old'
    when age >= 61 then "on death's door"
end as age_bracket
from parks_and_recreation.employee_demographics;

-- pay increase and bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- finance = 10% bonus

select first_name,last_name,salary,occupation,
concat(first_name,' ',last_name) as full_name,
case
	when salary < 50000 then salary * 1.05
    when salary > 50000 then salary * 1.07
end as Full_pay ,
case 
	when dept_id = 6 then salary *0.1
end as bonus
from parks_and_recreation.employee_salary;