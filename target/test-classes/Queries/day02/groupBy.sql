select * from EMPLOYEES;

--Task1 : display average for IT_PROG
select avg(salary)from EMPLOYEES
where JOB_ID='IT_PROG';


--Task2: display averae salasry for SA_REP
select avg(SALARY) from EMPLOYEES
where JOB_ID='SA_REP';


--TASKT 3: display average salasry fpr SA_REP
select  avg(SALARY) from EMPLOYEES
where JOB_ID='MK_MAN';


--How mnay different job id we have?
select count(distinct JOB_ID) from EMPLOYEES;

/*
 INSTEAD OF TYPING SAME QUERY FROM DIFFERENT JOB ID'S
 WE ARE GONNA GROUP THEM BASED ON JOB ID AND GET VERAGE SALARY IN ONE SHOT
 */
 select * from EMPLOYEES;
select JOB_ID,avg(SALARY),min(SALARY), max(SALARY),count(*) from EMPLOYEES
group by JOB_ID;

--get me total salary for EACH department from employyes table
select DEPARTMENT_ID, sum(SALARY),count(*),max(SALARY),min (SALARY),round(avg(SALARY))from EMPLOYEES
where DEPARTMENT_ID is not null -- to remove null department id from result
group by DEPARTMENT_ID;

--order result based on max salary in asc
select DEPARTMENT_ID, sum(SALARY),count(*),max(SALARY),min (SALARY),round(avg(SALARY))from EMPLOYEES
where DEPARTMENT_ID is not null -- to remove null department id from result
group by DEPARTMENT_ID
order by max(SALARY);


--order result based on max salary in asc and main salary desc
select DEPARTMENT_ID, sum(SALARY),count(*),max(SALARY),min (SALARY),round(avg(SALARY))from EMPLOYEES
where DEPARTMENT_ID is not null -- to remove null department id from result
group by DEPARTMENT_ID
order by max(SALARY), min(SALARY) desc;

--display how may departments we have in each location
select LOCATION_ID,count(*) from DEPARTMENTS
group by LOCATION_ID;

--order result based on number ID departments in Desc
select LOCATION_ID,count(*) from DEPARTMENTS
group by LOCATION_ID
order by count(*)desc;


select LOCATION_ID,count(*) from DEPARTMENTS
group by LOCATION_ID
order by 2 desc;

--display how many countries we have in each regions
select REGION_ID, count(*) from COUNTRIES
    group by REGION_ID;

--order them based number of countries in desc
select REGION_ID, count(*) from COUNTRIES
group by REGION_ID
order by 2 desc;










