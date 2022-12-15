-- first name and department ID and last name start with Y


select  * from EMPLOYEES;
select FIRST_NAME,DEPARTMENT_ID from EMPLOYEES
where LAST_NAME like 'K%';


--second highest salary
SELECT MAX(salary) FROM employees
WHERE salary NOT IN (SELECT MAX(salary) FROM employees);

--lowest salary
SELECT first_name, last_name, salary, job_id FROM employees WHERE salary = (SELECT MIN(salary) From employees);


--highest salary from employees
SELECT MAX(salary) FROM employees
WHERE salary NOT IN (SELECT MAX(salary) FROM employees);

--duplicate names from employees
SELECT first_name, COUNT (first_name) FROM employees GROUP BY first_name();


--salaries below average
select *
from (SELECT first_name, salary
      FROM employees
      WHERE salary <= (SELECT AVG(salary) FROM employees))








