NVL(Name,'Unknown')

drop table customers;
 
CREATE TABLE customers (
first_name varchar2(100),
last_name varchar2(100),
country varchar2(20),
full_address CLOB,
employees number,
start_date date
);

INSERT INTO customers (first_name, last_name, country, full_address, employees, start_date)
VALUES ('John', 'Smith', 'USA', '10 Long Road', 4, '12-APR-2010');
INSERT INTO customers (first_name, last_name, country, full_address, employees, start_date)
VALUES ('Sally', 'Jones', 'USA', '50 Market Street', 10, '04-JUL-2011');
INSERT INTO customers (first_name, last_name, country, full_address, employees, start_date)
VALUES ('Steve', 'Brown', 'Canada', '201 Flinders Lane', 15, '21-MAR-2009');
INSERT INTO customers (first_name, last_name, country, full_address, employees, start_date)
VALUES ('Mark', 'Allan', 'UK', '8 Smith Street', 23, '1-FEB-2001');
INSERT INTO customers (first_name, last_name, country, full_address, employees, start_date)
VALUES ('Adam', 'Cooper', 'USA', '14 Wellington Road', 55, NULL);
INSERT INTO customers (first_name, last_name, country, full_address, employees, start_date)
VALUES ('Josh', 'Thompson', NULL, '80 Victoria Street', 1, '10-FEB-2012');
INSERT INTO customers (first_name, last_name, country, full_address, employees, start_date)
VALUES ('Peter', 'Manson', 'France', '5 Johnson St', NULL, '16-OCT-2012');
INSERT INTO customers (first_name, last_name, country, full_address, employees, start_date)
VALUES (Null, '', NULL, '155 Long Road', NULL, '16-OCT-2012');
INSERT INTO customers (first_name, last_name, country, full_address, employees, start_date)
VALUES ('','Kapoor', NULL, '155 Long Road', NULL, '16-OCT-2012');
INSERT INTO customers (first_name, last_name, country, full_address, employees, start_date)
VALUES ('RANA','Kapoor', NULL, '155 Long Road', NULL, '16-OCT-2012');

Select * from CUSTOMERS
--is Null--Returun null values 

select * from customers
Where employees  Is NUll 

---NVL
SELECT FIRST_NAME, NVL(FIRST_NAME,'UNKNOWN'),EMPLOYEES,NVL(EMPLOYEES,0)FROM CUSTOMERS

--NULLIF
SELECT
FIRST_NAME ,
LAST_NAME ,
NULLIF(LAST_NAME,'Smith'),
nullif(EMPLOYEES,10)
TEST FROM CUSTOMERS
--COALESCE
SELECT
first_name,
last_name,
COALESCE(first_name, last_name) AS coal
FROM customers;

--------------------------------------
---This will replace any NULL values in column_name with 'default_value'
SELECT NVL(column_name, 'default_value') AS new_column
FROM table_name;

-----If column_name is not NULL, it returns 'not_null_value'; if it is NULL, it returns 'null_value'.
SELECT NVL2(column_name, 'not_null_value', 'null_value') AS new_column
FROM table_name;

--This will return the first non-NULL value among column1, column2, and 'default_value'.
SELECT first_name, last_name, COALESCE(first_name, last_name, 'default_value') AS new_column
FROM customers;

--This will return NULL if column1 is equal to column2; otherwise, it returns the value of column1
SELECT NULLIF(column1, column2) AS new_column
FROM table_name;

select * from customers
Where employees  Is NUll 
