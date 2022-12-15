select * from employees;


/*
 it limits row based on provided number
 */
select  * from EMPLOYEES
where rownum<11;

--display all information from employees who is getting 5 highest salary
select * from EMPLOYEES
where rownum<=6
order by SALARY desc;

--BAD practice
-- it is getting data before order the based salary and
--cut the list from line 6 then it tries to order them between first 5 rows
-- that is why we are getting wrong list
select  * from EMPLOYEES
where rownum<6
order by salary desc;

--correct answer
select * from (select * from EMPLOYEES order by SALARY desc)
where rownum<6;

-- display all information who is getting 5th highest salary
--display all different salaries in desc order
select distinct salary from EMPLOYEES order by  SALARY desc;

-- display 5th highest salary
select  min(salary) from (select distinct  salary from EMPLOYEES order by SALARY desc)
where rownum<6;


-- who is getting 5th highest salary
select * from EMPLOYEES
where SALARY = (select min(salary)from (select distinct salary from EMPLOYEES order by salary desc)
   where rownum<214);


-- IQ -->  display all information who is getting 213th highest salary
--  display all information who is getting 4th highest salary

select * from EMPLOYEES
where salary = (select min(salary) from (select  distinct salary  from EMPLOYEES order by salary desc)
                where rownum<5);


