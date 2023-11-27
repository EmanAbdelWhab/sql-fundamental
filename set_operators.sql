SELECT * FROM employees
WHERE EMPLOYEE_ID=1;

SELECT * FROM job_history
where EMPLOYEE_ID=1;

--union : eliminate duplicates, sort output
SELECT EMPLOYEE_ID,JOB_ID
FROM
EMPLOYEES
union
SELECT EMPLOYEE_ID,JOB_ID
FROM
job_history;
--union all : keep duplicates
SELECT EMPLOYEE_ID,JOB_ID
FROM
EMPLOYEES
union all
SELECT EMPLOYEE_ID,JOB_ID
FROM
job_history;

--intersect 
SELECT EMPLOYEE_ID,JOB_ID
FROM
EMPLOYEES
intersect
SELECT EMPLOYEE_ID,JOB_ID
FROM
job_history;

SELECT EMPLOYEE_ID,JOB_ID, DEPARTMENT_ID
FROM
EMPLOYEES
intersect
SELECT EMPLOYEE_ID,JOB_ID,DEPARTMENT_ID
FROM
job_history;
--minus :in first column only
SELECT EMPLOYEE_ID
FROM
EMPLOYEES
minus
SELECT EMPLOYEE_ID
FROM
job_history;

--matching dummy column
SELECT EMPLOYEE_ID,JOB_ID,email
from EMPLOYEES
union 
SELECT EMPLOYEE_ID,JOB_ID,TO_CHAR(null) email
from job_history;

SELECT EMPLOYEE_ID,JOB_ID,SALARY
from EMPLOYEES
union 
SELECT EMPLOYEE_ID,JOB_ID,0 SALARY
from job_history;

-- order by come last and only once
SELECT EMPLOYEE_ID,JOB_ID,SALARY
from EMPLOYEES
union 
SELECT EMPLOYEE_ID,JOB_ID,0 SALARY
from job_history
order by EMPLOYEE_ID;