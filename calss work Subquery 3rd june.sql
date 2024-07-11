--Oacle HR schema based Question

--Class questions
--1 2nd higest salary
SELECT    max(salary) FROM    employees     
  where Salary < (select max( salary) FROM    employees )

--2 find and delete duplicate rows
DELETE FROM EMPLOYEE WHERE 
EMPNO IN (
select EMPNO COUNT(*) FROM EMPLOYEE
GROU BY EMPNO HAVING COUNT(*)>1)


--3-Retrieve all product that cost more then avg price in catagoery 60
select prodcuct_id ,price from products 
where Price>(
            select avg(price) 
            from product 
            where category_id=60)


--4most recently hired emp in each department
WITH DEPT AS(
SELECT MAX(HIRE_DATE) AS MX,DEPARTMENT_ID FROM EMPLOYEES
GROUP BY DEPARTMENT_ID ORDER BY 1 )

SELECT EMPLOYEE_ID, FIRST_NAME,HIRE_DATE,E.DEPARTMENT_ID  FROM EMPLOYEES E INNER JOIN DEPT D ON (E.HIRE_DATE=D.MX AND E.DEPARTMENT_ID=D.DEPARTMENT_ID)ORDER BY HIRE_DATE

--5- find the employee who earn max salary and commission

SELECT   first_name,salary, comission FROM    employees     
  where (salary+comission) = (select max( salary+comission) FROM    employees )

--6-emps who earn more then their department avg salary
with dept as 
(Select Avg(Salary) sal,department_id  from  employees  group by   department_id order by 1 desc)
select Employee_id, First_name,Salary ,d.sal from Employees E left join dept D on(E.department_id=D.department_id)
where e.salary>
 
 7-- Emps from department with higest average salary
 with dept as 
(Select Avg(Salary) sal,department_id ,row_number()over(order by Avg(Salary) desc) RN 
from  employees  
group by   department_id )

select Employee_id, First_name,Salary ,d.sal Dept_avg_sal from Employees E left join dept D on(E.department_id=D.department_id)
where Rn=1
 