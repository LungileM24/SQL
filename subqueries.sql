-- subqueries

select * 
from employee_demographics
where employee_id in 
					(select employee_id, dept_id
                     from employee_salary
                     where dept_id = 1 )
                     ;


select first_name, salary,
(SELECT AVG(salary)
FROM employee_salary)
FROM EMPLOYEE_SALARY;




select gender, avg(age), max(age), min(age), count(age)
from employee_demographics;
group by gender;


select  avg(`max(age)`)
From
(Select gender, 
avg(age) as avg_age, 
max(age) as max_age,
min(age), as min_age,
count(age)
from employee_demographics
group by gender) as agg_table
;
