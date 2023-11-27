-- number function
--take number and return number

--1 round function
select ROUND(10.5) FROM DUAL; -- if you didn't specify decimal places, then round without decimal
select ROUND(150.49) FROM DUAL; 
select ROUND(10.49,1) FROM DUAL; 
select ROUND(10.499,1) FROM DUAL; 
select ROUND(10.499,2) FROM DUAL; 
select ROUND(10.493,2) FROM DUAL; 
select ROUND(65.993,-1) FROM DUAL;-- 5
select ROUND(65.493,-2) FROM DUAL; --6
select ROUND(765.993,-2) FROM DUAL;


--2 trunc function
select TRUNC(10.6565) from dual;
select TRUNC(10.6565,2) from dual;
select TRUNC(1092.6565,-2) from dual;

-- mod function
--return the reminder
select mod(15,2) from dual;
select mod(15,3) from dual;

-- the mod function is often use to know if number is odd or even 
select mod(100,2) from dual; --if return 0 the even
select mod(101,2) from dual; --if return 1 the odd










