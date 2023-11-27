-- this a  comment
/* comments
few lines
*/
--1 to select all the columns/rows in a table
SELECT *
FROM departments;

--2 to select specific columns
SELECT department_id, department_name
FROM department;

--3 using arithetics expression (=,-,*,/)
SELECT employment_id, first_name,salary+100,salary+(salary*0.10)
from employees;

--4 to know all null values
SELECT last_name, commission 
from employees;

--5 define a column alias (Rename a column heading)
select last_name as name
,lastname name,
last_name "name'
from employees;

--6 concatenation operator || links columns or charachter strings
select first_name, last_name , first_name || last_name "full name",
first_name|| ' ' || last_name "full name with space"
from employees;

--7 using distinct
SELECT department_id
from employees;

SELECT DISTINCT department_id
from employees;

-- you can use many columns in distinct
SELECT department_id, jop_id
from employees;

--8 DESCRIBE 
DESCRIBE employees;
DESC employees;

--9 where to limit the rows that are selected
select * 
from employees
where department_id =90;

-- charachter strings and date values are enclosed with single quote
select employee_id, first_name,last_name,jop_id
from employees
where first_name= 'steven'; -- steven is case sensitive

-- using where in date column
-- the defualt date display format is DD-MM-YY
select * 
from emplyees
where hire_date= "17-oct-03";

-- using the comparison operator
select * from employees
where salary >=10000;

-- using between and
select * from employees
where salary between 10000 and 20000; -- alwys the lower limit first

-- use operator in varchar
select * from employees
where first_name between 'a' and 'c';

select * from employees
where first_name> 'Adam'

-- use in operator
select * from employees
where salary in (1000,25000,170000); --  the order is not important

-- using like operator and i come usually with _ and % 
select *  from employees
where first_name like 's%'; -- All the first name which start with s

select *  from employees
where first_name like '%s'; -- All the first name which end with s

select *  from employees
where first_name like '%am%'; -- All the first name which include am

select *  from employees
where first_name like '_s%'; -- All the first name which has s in second letter

-- now suppose there is value in any column contain _ or % 
-- this will pick all the jop_id contain SA followed by any charachter
select jop_id
from jobs
where job_id like 'sa_%';

-- this is the correct select
select job_id
from jobs
where job_id like 'sa/_%' escape '/';

--pick allthe job id thathave % charachter
select * from jobs
where job_id like '5/%%' escape '/';

-- using is null operation
select 8
from employees
where comission_pctis null;

-- using not
-- not like, not in ,is not null ,not between and
select * from employees
where employee_id not in (100,101);

-- defining condition using the logical operators (and ,or, not)
select * from employees
where salary >=1000
And department_id=90;

-- first condition job_id ='ad_press'and salsry > 15000
-- second condition job_id ='sa_rep'
select last_name, job_id,salary
from employees
where job_id = 'sa__reb'
or job_id = 'ad_press'
and salary>15000;

-- using parantheses() over ride priorities
select last_name, job_id,salary
from employees
where (job_id = 'sa__reb' or job_id = 'ad_press')
and salary>15000;

--order by
select * from employees
order by hire_date; -- the default order ASC

select * from employees
order by hire_date desc;

-- by default null comes last
select * from employees
order by commission_pct NULLS FIRST;

-- sort using column alias
select First_name n
from employees
order by n;

-- sort by more than one column
select department_id, fisrt_name, salary
from employees
order by department_id, first_name;

-- sort by column number
select department_id, fisrt_name, salary
from employees
order by 1; --mean the first column in select 

-- limitting clause in a query
select department_id, fisrt_name
from employees
order by employee_id
fetch fist 5 rows only;

select department_id, fisrt_name
from employees
order by employee_id
fetch fist 50 percent rows only;

select department_id, fisrt_name
from employees
order by employee_id
offset 5 fetch fist 5 rows only; -- from 5th row fetch

select department_id, fisrt_name
from employees
order by salary
fetch fist 2 rows with ties; --mean last row fetch the duplicate in salary
























