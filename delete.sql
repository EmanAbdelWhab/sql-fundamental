CREATE TABLE dept_copy
as SELECT * FROM DEPARTMENTS;

SELECT * FROM dept_copy ;

SELECT * from dept_copy
where DEPARTMENT_ID=1;

DELETE from dept_copy
where DEPARTMENT_ID=1;

SELECT * from dept_copy
where DEPARTMENT_ID=1;

DELETE dept_copy
where DEPARTMENT_ID=1;

DELETE FROM dept_copy; -- delete all rows

-- rolttback the delete
rollback;

SELECT * FROM dept_copy ;

DELETE FROM dept_copy2
where DEPARTMENT_ID in (SELECT DEPARTMENT_ID from dept_copy2 where DEPARTMENT_NAME LIKE '%is%' );


SELECT * FROM EMPLOYEES
where DEPARTMENT_ID=2;

--can't delete from FK
DELETE FROM DEPARTMENTS
where DEPARTMENT_ID=2;

--truncate : DELETE all rows, no rollback,recover space

TRUNCATE TABLE dept_copy1;

TRUNCATE TABLE dept_copy2;



