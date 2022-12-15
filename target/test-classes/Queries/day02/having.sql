select * from employees;

--display jobids where their avg salary mre than 5k
select JOB_ID, avg(SALARY)from EMPLOYEES
group by JOB_ID
having avg(SALARY)>5000
order by 2 desc;


--display department id where employees count is bigger than 5
select DEPARTMENT_ID, count(*) from EMPLOYEES
group by DEPARTMENT_ID
having count(*)>5
order by 2 desc;


--IQ--> display duplicate first names from employees table
select FIRST_NAME, count(*) firstname_count from EMPLOYEES
group by  FIRST_NAME
having count(*)>1
order by 2 desc;







