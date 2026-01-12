-- Having vs Where
/*
| Feature                      | WHERE                          | HAVING                |
| ---------------------------- | ------------------------------ | --------------------- |
| Filters                      | Rows                           |   Groups              |
| Used with                    | `SELECT`, `UPDATE`, `DELETE`   | `GROUP BY`            |
| Works on                     |   Before aggregation           |   After aggregation   |
| Can use aggregate functions? |   No (`SUM()`, `COUNT()` etc.) | ✅ Yes                |

*/

select gender , avg(age)
from parks_and_recreation.employee_demographics
group by gender
having avg(age) > 40;

select occupation , avg(salary)
from parks_and_recreation.employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 75000;
