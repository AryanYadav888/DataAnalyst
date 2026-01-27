-- Temporary Tables

create temporary table temp_table
(first_name varchar(50),
last_name varchar(50),
fav_movie varchar(100)
);

select *
from temp_table;

insert into temp_table
value('alex','freberg','lord of rings');


---------------------------------------------------------

select *
from parks_and_recreation.employee_salary;

create temporary table salary_over_50k
select *
from parks_and_recreation.employee_salary
where salary >= 50000;

select *
from salary_over_50k;          /* if i run it after reopen it then it not work*/

