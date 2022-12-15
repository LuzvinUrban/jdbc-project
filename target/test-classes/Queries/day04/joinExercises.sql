select * from employees;

--1. Display all first_name and related department_name
--steven   Executive
--David  IT
select * from  EMPLOYEES;
select * from DEPARTMENTS;

select FIRST_NAME, DEPARTMENT_Name
from EMPLOYEES E inner join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

-- order list based firstname
select  FIRST_NAME,DEPARTMENT_NAME
from EMPLOYEES E inner join  DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID
order by FIRST_NAME;

--2.Display all first_name and department_name including the  department without employee
select  * from EMPLOYEES;
select * from DEPARTMENTS;

select * from EMPLOYEES e right join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--left  Join
select  FIRST_NAME, DEPARTMENT_NAME from  DEPARTMENTS d left join  EMPLOYEES  e
    on d.DEPARTMENT_ID = e.DEPARTMENT_ID;

--how many employee we have for each department name
select DEPARTMENT_NAME,count(*) from departments d left join employees e
                                                             on d.DEPARTMENT_ID = e.DEPARTMENT_ID
group by DEPARTMENT_NAME;


--3.Display all first_name and department_name including the  employee without department
select * from employees;
select * from DEPARTMENTS;

--Matching portion+unique Employee ---> Left JOIN
select  FIRST_NAME, DEPARTMENT_NAME from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID= d.DEPARTMENT_ID;


--Right Join
select  FIRST_NAME, DEPARTMENT_NAME from  DEPARTMENTS d right join employees e
on e.DEPARTMENT_ID= d.DEPARTMENT_ID;


--4.Display all first_name and department_name
--including the  department without employee  and  employees  without departments
select  FIRST_NAME,DEPARTMENT_NAME from DEPARTMENTS d full join EMPLOYEES e
on d.DEPARTMENT_ID = e.DEPARTMENT_ID;


--5.Display All cities and related country names
select city,country_name from LOCATIONS L inner join COUNTRIES C
on L.COUNTRY_ID= C.COUNTRY_ID;

--6.Display All cities and related country names  including with countries without city
select  * from  COUNTRIES;
select distinct  COUNTRY_ID from  LOCATIONS;


--Right JOin
select CITY, COUNTRY_NAME from  LOCATIONS L right join COUNTRIES C
on L.COUNTRY_ID = C.COUNTRY_ID;

--left join
select city, COUNTRY_NAME from COUNTRIES C left join LOCATIONS L
on C.COUNTRY_ID = L.COUNTRY_ID;




--7.Display all department name and  street adress
select DEPARTMENT_NAME,STREET_ADDRESS,L.LOCATION_ID from LOCATIONS L inner join DEPARTMENTS D
                                                                                on L.LOCATION_ID = D.LOCATION_ID;



--8.Display first_name,last_name and department_name,city for all employees
select first_name,last_name,department_name,city from EMPLOYEES E
                                                          inner join  DEPARTMENTS D
                                                                      on E.DEPARTMENT_ID = D.DEPARTMENT_ID
                                                          inner join LOCATIONS L
                                                                     on D.LOCATION_ID = L.LOCATION_ID;


-- where is the Kimberly ?
select first_name,last_name,department_name,city from EMPLOYEES E
                                                          left join  DEPARTMENTS D
                                                                     on E.DEPARTMENT_ID = D.DEPARTMENT_ID
                                                          left join LOCATIONS L
                                                                    on D.LOCATION_ID = L.LOCATION_ID;

-- How many employees departments we have  in each city ?
select city,count(*) from EMPLOYEES E
    ... (29 lines left)


--9.Display first_name,last_name and department_name,city,country_name for all employees
