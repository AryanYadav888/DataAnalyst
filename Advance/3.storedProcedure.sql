-- Stored Procedures

select *
from parks_and_recreation.employee_salary
where salary >= 50000;


create procedure large_salary()
select *
from parks_and_recreation.employee_salary
where salary >= 50000;

call large_salary();


DELIMITER $$
create procedure large_sal()
begin
	select *
    from parks_and_recreation.employee_salary
    where salary > 50000;
    select *
    from parks_and_recreation.employee_salary
    where salary > 70000;
end $$
DELIMITER ;

call large_sal();



 
