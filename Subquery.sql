

--Class questions
-- 2nd higest salary
SELECT    max(salary) FROM    employees     
  where Salary < (select max( salary) FROM    employees )

-- find and delete duplicate rows
DELETE FROM EMPLOYEE WHERE 
EMPNO IN (
select EMPNO COUNT(*) FROM EMPLOYEE
GROU BY EMPNO HAVING COUNT(*)>1)


--Retrieve all product that cost more then avg price in catagoery 60
select prodcuct_id ,price from products 
where Price>(
            select avg(price) 
            from product 
            where category_id=60)


--most recently hired emp in each department
WITH DEPT AS(
SELECT MAX(HIRE_DATE) AS MX,DEPARTMENT_ID FROM EMPLOYEES
GROUP BY DEPARTMENT_ID ORDER BY 1 )

SELECT EMPLOYEE_ID, FIRST_NAME,HIRE_DATE,E.DEPARTMENT_ID  FROM EMPLOYEES E INNER JOIN DEPT D ON (E.HIRE_DATE=D.MX AND E.DEPARTMENT_ID=D.DEPARTMENT_ID)ORDER BY HIRE_DATE

--4- find the employee who earn max salary and commission

SELECT   first_name,salary, comission FROM    employees     
  where (salary+comission) = (select max( salary+comission) FROM    employees )

--5-emps who earn more then their department avg salary
with dept as 
(Select Avg(Salary) sal,department_id  from  employees  group by   department_id order by 1 desc)
select Employee_id, First_name,Salary ,d.sal from Employees E left join dept D on(E.department_id=D.department_id)
where e.salary>
 
 6-- Emps from department with higest average salary
 with dept as 
(Select Avg(Salary) sal,department_id ,row_number()over(order by Avg(Salary) desc) RN 
from  employees  
group by   department_id )

select Employee_id, First_name,Salary ,d.sal Dept_avg_sal from Employees E left join dept D on(E.department_id=D.department_id)
where Rn=1




--------------------------
drop table customers;
 
create table  Customers (ID Integer,Name varchar(50),Age Integer, Address varchar(250), Sales Int);
 
insert into Customers (ID, Name, Age, Address, Sales) values (1, 'Ramesh', 32, 'Ahmedabad', 2000.00);
insert into Customers (ID, Name, Age, Address, Sales) values (2, 'Khilan', 25, 'Delhi' , 1500.00);
insert into Customers (ID, Name, Age, Address, Sales) values (3, 'kaushik', 23, 'Kota', 2000.00);
insert into Customers (ID, Name, Age, Address, Sales) values (4, 'Chaitali', 25, 'Mumbai', 6500.00);
insert into Customers (ID, Name, Age, Address, Sales) values (5, 'Hardik', 27, 'Bhopal', 8500.00);
insert into Customers (ID, Name, Age, Address, Sales) values (6,'Komal', 22, 'MP', 4500.00);
insert into Customers (ID, Name, Age, Address, Sales) values (7, 'Muffy', 24, 'Indore', 10000.00);
select * from customers;
SELECT NAME, Sales
FROM CUSTOMERS
WHERE SALES IN
(SELECT MAX(SALES)
FROM CUSTOMERS);
 
 
-------------Other examples------------
 
select * from emp_data where emp_salary > (select avg(emp_salary) from emp_data);
 
----scalar subqueries--
SELECT emp_name, emp_salary, employee_id
FROM employee
WHERE emp_salary = (SELECT min (emp_salary)
FROM employee);
 
select * from employee;
 
---Multiple Row Sub Query------------
select employee_id, emp_name, emp_city from employee 
where employee_id in (select employee_id from employee where emp_city in('Kolkata', 'Ghaziabad'));
 
----------Multiple Row Subquery in Oracle more examples--------
 
drop table employee;
CREATE TABLE EMPLOYEE
( 
        EMPNO NUMBER(4) NOT NULL,
        ENAME VARCHAR2(10),
        JOB VARCHAR2(9),
        MGR NUMBER(4),
        HIREDATE DATE,
        SAL NUMBER(7, 2),
        COMM NUMBER(7, 2),
        DEPTNO NUMBER(2)
);
 
INSERT INTO EMPLOYEE VALUES (7369, 'SMITH', 'CLERK',      7902, TO_DATE('17-DEC-1980', 'DD-MON-YYYY'), 800, NULL, 20);
INSERT INTO EMPLOYEE VALUES (7499, 'ALLEN',  'SALESMAN',  7698, TO_DATE('20-FEB-1981', 'DD-MON-YYYY'), 1600,  300, 30);
INSERT INTO EMPLOYEE VALUES (7521, 'WARD', 'SALESMAN',    7698, TO_DATE('22-FEB-1981', 'DD-MON-YYYY'), 1250,  500, 30);
INSERT INTO EMPLOYEE VALUES (7566, 'JONES',  'MANAGER',   7839, TO_DATE('2-APR-1981', 'DD-MON-YYYY'),  2975, NULL, 20);
INSERT INTO EMPLOYEE VALUES (7654, 'MARTIN', 'SALESMAN',  7698, TO_DATE('28-SEP-1981', 'DD-MON-YYYY'), 1250, 1400, 30);
INSERT INTO EMPLOYEE VALUES (7698, 'BLAKE',  'MANAGER',   7839, TO_DATE('1-MAY-1981', 'DD-MON-YYYY'),  2850, NULL, 30);
INSERT INTO EMPLOYEE VALUES (7782, 'CLARK',  'MANAGER',   7839, TO_DATE('9-JUN-1981', 'DD-MON-YYYY'),  2450, NULL, 10);
INSERT INTO EMPLOYEE VALUES (7788, 'SCOTT',  'ANALYST',   7566, TO_DATE('09-DEC-1982', 'DD-MON-YYYY'), 3000, NULL, 20);
INSERT INTO EMPLOYEE VALUES (7839, 'KING',   'PRESIDENT', NULL, TO_DATE('17-NOV-1981', 'DD-MON-YYYY'), 5000, NULL, 10);
INSERT INTO EMPLOYEE VALUES (7844, 'TURNER', 'SALESMAN',  7698, TO_DATE('8-SEP-1981', 'DD-MON-YYYY'),  1500,    0, 30);
INSERT INTO EMPLOYEE VALUES (7876, 'ADAMS',  'CLERK',     7788, TO_DATE('12-JAN-1983', 'DD-MON-YYYY'), 1100, NULL, 20);
INSERT INTO EMPLOYEE VALUES (7900, 'JAMES',  'CLERK',     7698, TO_DATE('3-DEC-1981', 'DD-MON-YYYY'),   950, NULL, 30);
INSERT INTO EMPLOYEE VALUES (7902, 'FORD',   'ANALYST',   7566, TO_DATE('3-DEC-1981', 'DD-MON-YYYY'),  3000, NULL, 20);
INSERT INTO EMPLOYEE VALUES (7934, 'MILLER', 'CLERK',     7782, TO_DATE('23-JAN-1982', 'DD-MON-YYYY'), 1300, NULL, 10);
 
select * from employees;

--Example1:
--Employee details whose employee job is same as the job of the employee “SMITH”, and “CLARK”?
--Solution:
 
SELECT * FROM EMPLOYEE WHERE JOB IN(SELECT JOB FROM EMPLOYEE WHERE ENAME='SMITH' OR ENAME = 'CLARK');
  select * from Employees where Job_id in (select job_id from employees where first_name in ('Alexander','Neena'))
--Example2:
--Display employee details who are getting min, max salaries?
--Solution:
 select * from Employees where 
 salary in(
        select max(salary) from Employees
        Union
        select min(salary) from Employees)
 
 
 
SELECT * FROM EMPLOYEE WHERE SAL IN
(SELECT MIN(SAL) FROM EMPLOYEE
UNION
SELECT MAX(SAL) FROM EMPLOYEE);
 
--Example3:
--Display all employees, whose salary is more than any “SALESMAN” salary?
--Solution:
 
SELECT * FROM EMPLOYEE WHERE SAL > ANY(SELECT SAL FROM EMPLOYEE WHERE JOB = 'SALESMAN');
 

 
 SELECT * FROM EMPLOYEES WHERE SALARY > ANY( SELECT SALARY FROM EMPLOYEES WHERE JOB_ID = 'IT_PROG') ORDER BY SALARY DESC;

--Example4:
--Display all employees, whose salary is more than all “SALESMAN” salaries?
Solution:
 SELECT * FROM EMPLOYEES WHERE SALARY > ALL( SELECT SALARY FROM EMPLOYEES WHERE JOB_ID = 'IT_PROG') ORDER BY SALARY DESC;
 