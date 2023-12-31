SELECT FIRST_NAME
FROM EMPLOYEES
WHERE DEPARTMENT_ID=2
ORDER BY FIRST_NAME;

--listagg
SELECT LISTAGG(FIRST_NAME, ', ')
    WITHIN GROUP (ORDER BY FIRST_NAME) "emp_list"
FROM EMPLOYEES
WHERE DEPARTMENT_ID=2;

--using groupby

SELECT DEPARTMENT_ID , SUM(SALARY)
FROM EMPLOYEES
group by DEPARTMENT_ID;

SELECT DEPARTMENT_ID,job_id, SUM(SALARY)
    FROM EMPLOYEES
    group by DEPARTMENT_ID,job_id
    ORDER by 1,2 ;

-- error ,can't make group by using alias
SELECT DEPARTMENT_ID D, SUM(SALARY)
FROM EMPLOYEES
group by D ;

SELECT DEPARTMENT_ID , SUM(SALARY)
FROM EMPLOYEES
WHERE DEPARTMENT_ID > 1
group by DEPARTMENT_ID
ORDER BY DEPARTMENT_ID;

-- error messages, can't restrict wuth groupby
SELECT DEPARTMENT_ID , SUM(SALARY)
FROM EMPLOYEES
WHERE SUM(SALARY) > 100000
group by DEPARTMENT_ID
ORDER BY DEPARTMENT_ID;

--so using having
SELECT DEPARTMENT_ID, SUM(SALARY) 
FROM EMPLOYEES 
group by DEPARTMENT_ID
HAVING  SUM(SALARY)> 15000
ORDER BY DEPARTMENT_ID;











