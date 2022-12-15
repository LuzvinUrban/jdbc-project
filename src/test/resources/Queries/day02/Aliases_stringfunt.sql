select * from employees;
--1.column alaiass

--2. Table alisases--> before JOINS

--Note --> just displaying


select FIRST_NAME from EMPLOYEES;
--It makes column name uppercase to show in display. We can give any space too
select FIRST_NAME as given_name from EMPLOYEES;
--it will show column as it is
select FIRST_NAME as" given name" from EMPLOYEES;

--display annual salary for all employees as annual_salary
select FIRST_NAME, SALARY*12 from   EMPLOYEES;

select FIRST_NAME, SALARY*12 as annual_salary from   EMPLOYEES;

/*
 String FUNCTIONS
 --concatenation
 -- java -->>  firstname+""+lastname
 --SQL -->     firstname||''||lastname

 */

-- add email to @gmail domain for all employees and show column name as full_email
select  * from EMPLOYEES; --> Sking@gmail.com

select EMAIL || '@gmail.com' as full_email from EMPLOYEES;

--CONCAT(values1, value2)
select concat(EMAIL,'gmail.com')as full_emai from EMPLOYEES;

select concat('Cydeo ', EMAIL,'gmail.com')as full_emai from EMPLOYEES;














