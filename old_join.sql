SELECT EMPLOYEE_ID, FIRST_NAME, DEPARTMENT_ID
from EMPLOYEES;

SELECT DEPARTMENT_ID, department_name
from departments;

SELECT 
EMPLOYEES.EMPLOYEE_ID,
EMPLOYEES.FIRST_NAME,
DEPARTMENts.DEPARTMENT_ID,
DEPARTMENts.department_name
FROM EMPLOYEES,departments
ORDER BY EMPLOYEE_ID;

--1 Equijoin or simple join or inner join
SELECT 
EMPLOYEES.EMPLOYEE_ID,
EMPLOYEES.FIRST_NAME,
DEPARTMENts.DEPARTMENT_ID,
DEPARTMENts.department_name
FROM EMPLOYEES,departments
WHERE EMPLOYEES.DEPARTMENT_ID=DEPARTMENtS.DEPARTMENT_ID 
ORDER BY EMPLOYEE_ID;

--using table alias
SELECT 
EMP.EMPLOYEE_ID,
EMP.FIRST_NAME,
DEP.DEPARTMENT_ID,
DEP.department_name
FROM EMPLOYEES emp,departments dep
WHERE EMP.DEPARTMENT_ID=DEP.DEPARTMENT_ID 
ORDER BY EMPLOYEE_ID;

--using more than 2 tables 
SELECT 
EMP.EMPLOYEE_ID,
EMP.FIRST_NAME,
DEP.DEPARTMENT_ID,
DEP.department_name
dep.location_id,
loc.city
FROM EMPLOYEES emp,departments dep, location loc
WHERE EMP.DEPARTMENT_ID=DEP.DEPARTMENT_ID AND
dep.location_id =loc.location_id
ORDER BY EMPLOYEE_ID; 

--2 NonEquijoin
CREATE TABLE job_grades
    (
    job_level VARCHAR2(3),
    lowest_sal NUMBER,
    highest_sal NUMBER
    );

-- insert the records
INSERT into job_grades (job_level, lowest_sal, highest_sal)
values('A',40000,50000);
INSERT into job_grades (job_level, lowest_sal, highest_sal)
values('B',50001,59999);
INSERT into job_grades (job_level, lowest_sal, highest_sal)
values('C',60000,70000);

select * from job_grades;

select EMP.employee_id, EMP.FIRST_NAME, emp.salary,GRADES.job_level 
from EMPLOYEES emp,
job_grades GRADES
WHERE EMP.SALARY between grades.lowest_sal and grades.highest_sal;

-- outer join
-- case 1
SELECT 
EMP.EMPLOYEE_ID,
EMP.FIRST_NAME,
DEP.DEPARTMENT_ID,
DEP.department_name
FROM EMPLOYEES emp,departments dep
WHERE EMP.DEPARTMENT_ID=DEP.DEPARTMENT_ID(+) -- all in emp.DEPARTMENT_ID
ORDER BY EMPLOYEE_ID;

-- case 2
SELECT 
EMP.EMPLOYEE_ID,
EMP.FIRST_NAME,
DEP.DEPARTMENT_ID,
DEP.department_name
FROM EMPLOYEES emp,departments dep
WHERE EMP.DEPARTMENT_ID(+)=DEP.DEPARTMENT_ID --all in dep.DEPARTMENT_ID
ORDER BY EMPLOYEE_ID;

--self join 
select
worker.EMPLOYEE_ID,
worker.FIRST_NAME,
worker.manager_id,
manager.FIRST_NAME
from EMPLOYEES worker, EMPLOYEES manager
WHERE worker.manager_id=manager.EMPLOYEE_ID;

select
worker.EMPLOYEE_ID,
worker.FIRST_NAME,
worker.manager_id,
manager.FIRST_NAME
from EMPLOYEES worker, EMPLOYEES manager
WHERE worker.manager_id=manager.EMPLOYEE_ID(+);

--












