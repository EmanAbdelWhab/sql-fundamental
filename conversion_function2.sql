-- using to_char with number
SELECT TO_CHAR(1500) FROM DUAL;

SELECT TO_CHAR(1598,'9,999') FROM DUAL;

SELECT TO_CHAR(1598,'$9,999') FROM DUAL;

SELECT TO_CHAR(21598,'9,999') FROM DUAL; -- will display ## 

SELECT TO_CHAR(159.88,'999.99') FROM DUAL;

SELECT TO_CHAR(159.88,'999.9') FROM DUAL; -- it will be rounded 

SELECT TO_CHAR(159,'0999999') FROM DUAL;

SELECT TO_CHAR(1588,'9g999') FROM DUAL;

-- using to_number
SELECT TO_NUMBER('1,000','9,999') FROM DUAL;

SELECT TO_NUMBER('$1,000','$9,999') FROM DUAL;

SELECT TO_NUMBER('88') FROM DUAL;

SELECT TO_NUMBER('1,000','9G999') FROM DUAL;


-- using to_date
SELECT TO_DATE('10-11-2015' /*CHAR [ DEFAULT RETURN_VALUE ON CONVERSION ERROR ]*/,
            'dd-mm-yyyy' /*FMT*/) FROM DUAL;

SELECT * FROM employees WHERE hire_date > TO_DATE('10-11-2015','dd-mm-yyyy');

SELECT * FROM employees WHERE hire_date > TO_DATE('10-11-    2015','dd-mm-yyyy') ;--Oracle remove spaces

SELECT * FROM employees WHERE hire_date > TO_DATE('10-11-  2015','fxdd-mm-  yyyy') ;-- when put fx then exact should be match


SELECT TO_DATE('10-11-85','dd-mm-rr') FROM DUAL; --85

SELECT TO_CHAR(TO_DATE('10-11-85','dd-mm-rr'),'yyyy') FROM DUAL; --1985

SELECT TO_DATE('10-11-85','dd-mm-yy') FROM DUAL;--85

SELECT TO_CHAR(TO_DATE('10-11-85','dd-mm-yy'),'yyyy') FROM DUAL; --2085











