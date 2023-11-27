-- case statment
UPDATE employees
SET job_id = 
    CASE 
        WHEN employee_id = 1 THEN 'IT'
        WHEN employee_id = 2 THEN 'HR'
        WHEN employee_id = 3 THEN 'AI'
    END;

-- case expression

SELECT FIRST_NAME, job_id,salary,
    CASE job_id WHEN 'IT' THEN 1.10*SALARY
                WHEN 'HR' THEN 1.15*SALARY
                WHEN 'AI' THEN 1.20*SALARY 
                ELSE SALARY
                END AS new_salary
                
FROM employees;

-- case expression
-- if the first condition is met then it show the resuls regardless another conditions
SELECT salary,
CASE WHEN SALARY>50000 THEN 'salary > 50000'
    WHEN SALARY>55000 THEN'salary > 55000'
    WHEN SALARY>60000 THEN'salary > 60000'
END fff
FROM  EMPLOYEES;

SELECT salary,
CASE
    WHEN SALARY>60000 THEN'salary > 60000'
    WHEN SALARY>55000 THEN'salary > 55000'
    WHEN SALARY>50000 THEN 'salary > 50000'
END good
FROM  EMPLOYEES;

--decode statment
SELECT LAST_NAME, job_id, SALARY,
    DECODE(job_id, 'IT', 1.10*SALARY,
                    'HR', 1.15*SALARY,
                    'AI', 1.20*SALARY,
            SALARY) 
    new_salary
FROM EMPLOYEES;













