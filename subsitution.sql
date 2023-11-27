/*
use substitution variables to:
temporarly store values with with (&) and(&)
*/
--1
select employee_id, last_name, department_id
from employees
where employee_id = &employee_num; --when using & the variable will be discard after is used

--2 use '' when using varchar
select employee_id, last_name, department_id
from employees
where first_name = &name
order by =2;

--3 specifying column names, expression, and text
--&column_name=salary &condition=salary>1000 &order_column=employee_id
select employee_id, last_name, &column_name
from employees
where &condition
order by &order_column;

--4 use the define command to create and assign a value to variable
-- use undefined command to remove a variable
define employee_num =200;
where employee_id= &employye_num;
undefine employee_num

--5 change the prompt message as follow
accept dept_id prompt 'please enter dept id';
select * from emplyees
where department_id=$dept_id;

undefined dept_id

--6 using && to define the variable and assign the value and can reuse
select employee_id, last_name, &&column_name
from employees
order by &order_column;

