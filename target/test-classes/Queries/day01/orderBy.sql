select * from employees;

/*
 ORDERBY

 -it allows us to sort data based on provided column
 -AS A DEFAULT it will order the result ascending order(A-Z,0-9)
 -If you wanna sort it DESCENDING order we need to specify right after column name

 */

 --display all employees based salary in ascending order
 select * from EMPLOYEES
order by SALARY;

select * from EMPLOYEES
order by SALARY asc;

--display all employees based salary in descending order
select  * from EMPLOYEES
order by salary desc;

select * from EMPLOYEES
order by  FIRST_NAME desc;

---Can we use index to order result?
--Yes we can
--Index needs to within limit from column number
select  * from EMPLOYEES
order by 8 desc;

select  first_name,last_name,email from EMPLOYEES
order by 3 desc;

--display all information from employees
--where employee id is smaller than 120 and order them based on salary desc order
select * from EMPLOYEES
where EMPLOYEE_ID<120
order by SALARY desc;

--display all information from employees and order them based firstname asc
select * from EMPLOYEES
order by FIRST_NAME;

--IQ--> display all information from employees and order them based firstname asc based on lastname desc
select  * from  EMPLOYEES
order by FIRST_NAME,LAST_NAME DESC;

/*
 it will first order result based on firstname
 after getting result if we have the same names it will order them based in desc order

 David Austin
 David Berstein
 David Lee

 --After execution
 David Lee
 David Berstein
 David Austin
 */
select * from EMPLOYEES
order by LAST_NAME DESC;
























