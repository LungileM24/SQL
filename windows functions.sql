-- window function


select dem.first_name,dem.last_name, avg(salary) as avg_salary
from employee_demographics dem
join employee_salary sal 
  on dem.employee_id = sal.employee_id 
  group by dem.first_name,dem.last_name, gender;
 
select dem.first_name,dem.last_name, avg(salary) over(partition by gender)
from employee_demographics dem
join employee_salary sal 
  on dem.employee_id = sal.employee_id 
 
SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
Row_number() over(partition by gender order by salary desc) as row_num,
rank() over(partition by gender order by salary desc) rank_num,
dense_rank() Over(partition by gender order by salary desc) dense_rank_num
from employee_demographics dem
join employee_salary sal 
  on dem.employee_id = sal.employee_id;

