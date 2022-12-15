select * from employees;


--max salary
select max(salary) from EMPLOYEES;

--if we know max salary can we find whi is getting
select * from EMPLOYEES
where SALARY=24000; --> it is Hardcoded.

--if the Steven King salary changes we cant find person who is getting max salary

--max it dynamic
select * from EMPLOYEES
where SALARY=(select max(salary)from EMPLOYEES);

-- give me all information who is getting min salary


--min salary
select  min(SALARY)from EMPLOYEES; --2100

--if we know min salary can we find who is getting
select * from EMPLOYEES
where SALARY= 2100;

--solution --> make it dynamic
select * from EMPLOYEES
where SALARY=(select min(salary )from EMPLOYEES);

-- display all information who is getting highest salary?

--find  max salary
select  max(SALARY)from EMPLOYEES; --24k

--second highest
select max(SALARY) from EMPLOYEES
where SALARY<24000;

--find second highest dynamically
select max(salary)from EMPLOYEES
where SALARY<(select max(salary) from EMPLOYEES);-- 17k


--find who is getting 2nd highest salary
select * from EMPLOYEES
where SALARY=17000; --> still hard coded

-- make it dynamic
select * from EMPLOYEES
where SALARY=(select max(SALARY)from EMPLOYEES
        where SALARY<(select max(SALARY)from EMPLOYEES));

--display all information who is getting more than average?
--find avg salary
select  avg( SALARY)from EMPLOYEES;


-- display who is getting over avg
select * from EMPLOYEES
where SALARY>6462;

--make it dynamic
select * from EMPLOYEES
where SALARY>(select avg(salary)from EMPLOYEES)

--HomeWork --> display all information who is getting second minimum salary.






















