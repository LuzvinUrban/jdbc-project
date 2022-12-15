select  * from  employees;

/*
 AGGREATE FUNCTIONS - MULTI ROWS - GROUP FUNCTIONS


 -count--> it will count rows
 -max -->  it will give max value
 -min -->  it will give min value
 -sum-->> it will give total value
 -avg --> it will give average vales


 Aggreate functions takes multi row and return one result

 NOTE --> All aggreate function will ignore NULL values
 */

--How many departments we have?
select * from departments;
select count(*) from departments;

 --How many locations we have?
 select * from LOCATIONS;
select count(*) from LOCATIONS;



--NULL VALUES
select *from employees;

--count(*) will count all rows after execution that is why we have result as 1
select count(*)from EMPLOYEES
where DEPARTMENT_ID is null; --she is Kimberly


--count(DEPARTMENT_ID) will count only department ID
select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is null; --She is Kimberly

--BOTH EXECUTION WILL GIVE SAME RESULT SINCE WE DONT HAVE ANY NULL VALUES DEPARTMENT ID
select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is not null;


select count(*) from EMPLOYEES
where DEPARTMENT_ID is null; --She is Kimberly

--how many different firstname we have?
select count(distinct FIRST_NAME) from EMPLOYEES;


--how many employees working as IT_PROG or SA_REP
select count (*) from EMPLOYEES
where JOB_ID in ('IT_PROG','SA_REP');


--HOW many employees getting salary more than 6000
select count(*) from EMPLOYEES
where SALARY>6000;

--MAX
select  FIRST_NAME,SALARY from EMPLOYEES;
select max(salary) from EMPLOYEES;

--MIN
select min(salary)from EMPLOYEES;

--Avg
select avg(SALARY)from EMPLOYEES;

select round(avg(SALARY))from EMPLOYEES;
select round(avg(SALARY),1)from EMPLOYEES;
select round(avg(SALARY),2)from EMPLOYEES;
select round(avg(SALARY),3)from EMPLOYEES;

--SUM
select sum(SALARY)from EMPLOYEES;
