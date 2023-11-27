ALTER TABLE employees ADD commission_pct NUMBER;
ALTER TABLE employees ADD job_id VARCHAR(50);


UPDATE employees
SET commission_pct = 
  CASE 
    WHEN employee_id = 1 THEN 10
    WHEN employee_id = 2 THEN 20
  END;
  
--1 nvl  function
SELECT EMPLOYEE_ID, FIRST_NAME,commission_pct,NVL(commission_pct ,0)
FROM EMPLOYEES;

SELECT EMPLOYEE_ID, FIRST_NAME,job_id,NVL(job_id,'no job id')
FROM EMPLOYEES;

SELECT EMPLOYEE_ID, FIRST_NAME,HIRE_DATE,NVL(HIRE_DATE ,'1-jan-2007')
FROM EMPLOYEES;

SELECT EMPLOYEE_ID, FIRST_NAME,commission_pct,NVL(TO_CHAR(commission_pct) ,'no commission')
FROM EMPLOYEES;

--2 nvl2 function
SELECT EMPLOYEE_ID, FIRST_NAME,commission_pct,NVL2(commission_pct,commission_pct ,0)
FROM EMPLOYEES;

SELECT EMPLOYEE_ID, FIRST_NAME,commission_pct,NVL2(commission_pct ,'sal and comm','only salary') income
FROM EMPLOYEES;

--3 nullif function
SELECT FIRST_NAME,LENGTH(FIRST_NAME),LAST_NAME,LENGTH(LAST_NAME),
NULLIF(LENGTH(FIRST_NAME),LENGTH(LAST_NAME)) resuls --if equal return null else return FIRST_NAME LENGTH
FROM EMPLOYEES;

--4 coalesce function
--it returns the first non-null value
SELECT EMPLOYEE_ID, FIRST_NAME,commission_pct,SALARY,job_id,COALESCE(commission_pct,SALARY,job_id),
NVL(nvl(commission_pct,SALARY),job_id)  --nested nvl equal to coalesce
FROM EMPLOYEES;












