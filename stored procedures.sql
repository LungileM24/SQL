-- stored procedures

select *
from employee_salary
where salary >- 50000;


create procedure large_salaries()
select *
from employee_salary
where salary >= 50000;

call large_salaries();

delimiter $$
create procedure large_salaries3()
begin
select *
from employee_salary
where salary >= 50000;
select *
from employee_salary
where salary >= 10000;
END $$
delimiter ; 

call large_salaries3()



delimiter $$
create procedure large_salaries4( huggymuffin int)
begin
select salary
from employee_salary
where employee_id = huggymuffin
;
END $$
delimiter ; 

call large_salaries4(1)