-- UNIONS 

SELECT first_name, last_name
FROM employee_demographics
union all
select first_name, last_name
FROM employee_salary;



SELECT first_name, last_name, 'old man' as label
FROM employee_demographics
where age > 40 and gender = 'male'
union
SELECT first_name, last_name, 'old lady' as label
FROM employee_demographics
where age > 40 and gender = 'female'
union
SELECT first_name, last_name, 'highly paid employee' as label
FROM employee_salary
where salary > 70000
order by first_name, last_name 
;