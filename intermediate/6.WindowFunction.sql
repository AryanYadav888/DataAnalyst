-- Window Function (over())

select dem.first_name,dem.last_name , gender , avg(salary) as avg_salary
from parks_and_recreation.employee_demographics as dem
join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id
group by dem.first_name,dem.last_name,gender;



select dem.first_name,dem.last_name , gender , avg(salary) over(partition by gender)
from parks_and_recreation.employee_demographics as dem
join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
    
    -------------------------------------------------------------------------------------
    
 select dem.first_name,dem.last_name , gender , sum(salary) as sum
from parks_and_recreation.employee_demographics as dem
join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id
group by dem.first_name,dem.last_name,gender;   
    
select dem.first_name,dem.last_name , gender , salary,
sum(salary) over(partition by gender order by dem.employee_id) as rolling_total
from parks_and_recreation.employee_demographics as dem
join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
    ------------------------------------------------------------------------------------------
    
    
select dem.employee_id,dem.first_name,dem.last_name , gender , salary,
row_number() over(partition by gender order by salary desc) as row_num,
rank() over(partition by gender order by salary desc) as rank_num,
dense_rank() over(partition by gender order by salary desc) as dense_num
from parks_and_recreation.employee_demographics as dem
join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id;