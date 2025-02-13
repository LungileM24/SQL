-- joins

select *
from employee_demographics;

select * 
from employee_salary;

select *
from employee_demographics as dem
left join employee_salary as sal
     on dem.employee_id = sal.employee_id
     ;
     
     -- self join
     
     select emp1.employee_id as emp_santa,
     emp1.first_name as first_name_santa,
     emp1.last_name as first_name_santa,
     emp2.first_name as emp_name,
     emp2.first_name as first_name_emp,
     emp2.last_name as last_name_emp
     from employee_salary emp1
     join employee_salary emp2
       on emp1.employee_id + 1 = emp2.employee_id
       ;
       
       -- joing multiple tables
	
    
    select *
from employee_demographics as dem
left join employee_salary as sal
     on dem.employee_id = sal.employee_id
     inner join pV BJ
     - VGBHNJMK,OL	1arks_departments pd 
     on  sal. dept_id = pd.department_id
     ;
     
     select * 
     from parks_departments;