--1- list of emp who asigned OBIEE and ORACLE department

Select * from employee E
where Exist (
        select * from department D where 
        E.ID=D.EMP_ID and 
        D.Department in ( 'OBIEE' , 'ORACLE')

--2 emploree who switched atleat twice 

select EMPLOYEE_ID , count(JOB_ID) from Employees group by  EMPLOYEE_ID having count(JOB_ID)>=2

--3-manager details
Select * from Employees M
where exists (select * from Employees E
            where  E.Manager_id=M.employee_id)

--4-
select * from employees 
where salary>(salect min_sal from salary_Grade where Grade=2)
and Salary< (salect max_sal from salary_Grade where Grade=3)