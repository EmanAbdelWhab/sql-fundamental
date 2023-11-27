select * from employees ;

--sysdate is a function that return the current database server date and time
select sysdate from dual;

--using artimetic operation with dates
select sysdate, sysdate+3 from dual;
select sysdate, sysdate-3 from dual;

--date-date =number of dayes
select employee_id, sysdate ,hire_date,sysdate-hire_date, round(sysdate-hire_date)
from employees;

select sysdate+5/24 from dual;

--Example: how many weeks the employees 'adam' work till now
select employee_id, first_name,sysdate-hire_date "no of days" ,(sysdate-hire_date)/7
from employees;

--date functions
--months_between
select employee_id, first_name,months_between(sysdate, hire_date), (sysdate-hire_date)/30
from employees;

--add months
select employee_id, first_name,hire_date,add_months(hire_date,4)
from employees;

select employee_id, first_name,hire_date,add_months(hire_date,-2)
from employees;

--next day
select sysdate,next_day(sysdate,'friday') from dual;

select sysdate,next_day(sysdate,1) from dual;

--last day
select sysdate,last_day(sysdate) from dual;

--display the employee number, first_name,hiredate,number of months emplyeed,
--six month review date, first friday after hire date
select employee_id,first_name,hire_date,months_between(sysdate,hire_date),
add_months(hire_Date,6),next_day(hire_date,'friday')
from employees
where months_between(sysdate,hire_date)<100;


-- round and trunc
select employee_id,first_name,hire_date,round(hire_date,'month'),trunc(hire_date,'month')
from employees
order by hire_date;


select employee_id,first_name,hire_date,round(hire_date,'year'),trunc(hire_date,'year')
from employees
order by hire_date;

--nested function
select first_name,upper(first_name),substr(upper(first_name),1,3),
lpad(substr(upper(first_name),1,3),10,'*')
from employees;

SELECT 
  'ahmed ali naser' AS full_name,
  SUBSTR('ahmed ali naser', 1, INSTR('ahmed ali naser', ' ', 1, 1) - 1) AS first_name,
  SUBSTR('ahmed ali naser', INSTR('ahmed ali naser', ' ', 1, 1) + 1, INSTR('ahmed ali naser', ' ', 1, 2) - INSTR('ahmed ali naser', ' ', 1, 1) - 1) AS middle_name,
  SUBSTR('ahmed ali naser', INSTR('ahmed ali naser', ' ', 1, 2) + 1) AS last_name
FROM dual;
