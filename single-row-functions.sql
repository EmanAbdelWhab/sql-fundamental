INSERT INTO employees (first_name, last_name, salary, department_id, employee_id)
VALUES ('Alice', 'Williams', 70000, 2, 3);


-- character functions
-- there are 2 types 
--1 case conversion functions(upper, lower, initcap)
select employee_id , first_name,upper(first_name), lower(first_name), initcap(first_name)
from employees;

select employee_id , first_name,upper(first_name), lower(first_name), initcap(first_name)
from employees
where upper(first_name)='JANE' ;

select employee_id , first_name,upper(first_name), lower(first_name), initcap(first_name)
from employees
where upper(first_name)=upper('JANE')
order by upper(first_name);

--2 character manipulation function

--concat function
select employee_id, first_name,last_name,concat(first_name,last_name)
from employees;
-- the concat function only took 2 args, but || more flixable
SELECT employee_id, first_name, last_name, first_name || ' ' || last_name || TO_CHAR(salary) AS full_name_salary
FROM employees;


-- substr function
-- substr(column|expression,m ,n)
-- m is the starting position, n the character long

select Employee_id, 
first_name,
substr(first_name,1,3),
substr(first_name,2,4),
substr(first_name,2), -- from second char to the end
substr(first_name,-3) -- start count from the end
from employees;

-- length function
select first_name, length(first_name)
from employees;

--instr function 
--instr(column|expression,m ,n)
--m is the start searching position,n the occeurance
--1 is the default for m and n
select first_name,
instr(first_name,'e'),
instr(first_name,'e',2),
instr(first_name,'e',5),
instr(first_name,'e',1,2)
from employees
where first_name='Alice';

--lpad and rpad
select employee_id, first_name,salary, lpad(salary,10,'#'),rpad(salary,10,'*')
from employees;

--replace function
select employee_id, first_name,replace(first_name,'a','*'),replace(first_name,'en','#')
from employees;

--trim ([[leading| Trailing|both] trim_character from ] string)
select trim(' ' from '  HELLO WORLD  ') v from dual;
select trim(leading ' ' from '  HELLO WORLD  ') v from dual; -- from the begining
select trim(trailing ' ' from '  HELLO WORLD  ') v from dual; -- from the end
select trim(both ' ' from '  HELLO WORLD  ') v from dual;
select trim('H' from '  HELLO WORLD  ') v from dual;



















