-- string functions

select length('skyfall')

select first_name, length(first_name)
from employee_demographics
order by 2;

select upper('sky')
select lower('sky')

select first_name, upper(first_name)
from employee_demographics


select ltrim('           sky    ');


select first_name, 
left(first_name, 4),
Right(first_name, 4),
substring(first_name,3,2),
birth_date,
from employee_demographics;



select first_name, replace(first_name, 'a', 'z')
from employee_demographics;


select locate('x','alexander')

select first_name, last_name
concat(first_name,'',last_name) as full_name 
from employee_demographics;