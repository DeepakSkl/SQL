create table employee
( emp_ID int primary key
, emp_NAME varchar(50) not null
, DEPT_NAME varchar(50)
, SALARY int);
 

1 --query to display only the details of employees who either earn the highest salary or the lowest salary in each department from the employee table.


with Cte as(
select 
first_name,
Employee_id,
department_id,salary,
sum(salary) over(order by first_name ),
dense_rank()over(partition by department_id order by salary desc) Rank_high,
dense_rank()over(partition by department_id order by salary asc) rank_low
from employees order by department_id
order by first_name
)

select * from Cte where 
rank_high=1 Or Rank_low=1
--------------------------
question2
Day             Revenue
2019-01-01        10800        
2019-01-02        10807       
2020-01-01        13720        
2020-01-02        13720       
2021-01-01        12262        
 
-2--write a query for  year, month, current_month_revenue,prev_month__revenue, rev diff





with CTE as
(
select distinct
extract(MONTH from to_date(order_date,'DD-MM-YYYY')) as months,
extract(Q from to_date(order_date,'DD-MM-YYYY'))
extract(YEAR from to_date(order_date,'DD-MM-YYYY'))as Years,
sum(sales)over (partition by years, months order by years, months  ) as current_month_sale
from orders
order by 2,1)

select months,Years ,current_month_sale,
lag(current_month_sale) over(order by years, months ),
current_month_sale-lag(current_month_sale) over(order by years, months ) as rev diff

from CTE c




select 

department_id,first_name,

salary,
sum(salary) over(partition  by department_id order by first_name ),
dense_rank()over(partition by department_id order by salary desc) Rank_high

from employees 
order by  department_id,first_name


Round 2-
---sql query to find out wich quarter and which category made highets sale


select * from orders

with CTE as (

select 
category,
extract(YEAR FROM to_date(order_date,'dd-mm-yyyy')) y,
'Q'||extract(QUARTER FROM to_date(order_date,'dd-mm-yyyy') ) q,
dense_rank()over(partition by y,q order by Sum(sales) desc ) rn,
Sum(sales)
from orders
group by 1,2,3.4
)

select * from CTE where rn=1
