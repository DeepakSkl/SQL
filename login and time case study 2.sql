CREATE TABLE users (
    USER_ID INT PRIMARY KEY,
    USER_NAME VARCHAR(20) NOT NULL,
    USER_STATUS VARCHAR(20) NOT NULL
);

CREATE TABLE logins (
    USER_ID INT,
    LOGIN_TIMESTAMP DATE NOT NULL,
    SESSION_ID INT PRIMARY KEY,
    SESSION_SCORE INT,
    FOREIGN KEY (USER_ID) REFERENCES USERS(USER_ID)
);

-- Users Table
INSERT INTO USERS VALUES (1, 'Alice', 'Active');
INSERT INTO USERS VALUES (2, 'Bob', 'Inactive');
INSERT INTO USERS VALUES (3, 'Charlie', 'Active');
INSERT INTO USERS  VALUES (4, 'David', 'Active');
INSERT INTO USERS  VALUES (5, 'Eve', 'Inactive');
INSERT INTO USERS  VALUES (6, 'Frank', 'Active');
INSERT INTO USERS  VALUES (7, 'Grace', 'Inactive');
INSERT INTO USERS  VALUES (8, 'Heidi', 'Active');
INSERT INTO USERS VALUES (9, 'Ivan', 'Inactive');
INSERT INTO USERS VALUES (10, 'Judy', 'Active');

-- Logins Table 

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE)  
VALUES (1, TO_DATE('2023-07-15 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1001, 85);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (2, TO_DATE('2023-07-22 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1002, 90);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (3, TO_DATE('2023-08-10 11:15:00', 'YYYY-MM-DD HH24:MI:SS'), 1003, 75);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (4, TO_DATE('2023-08-20 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1004, 88);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE)  
VALUES (5, TO_DATE('2023-09-05 16:45:00', 'YYYY-MM-DD HH24:MI:SS'), 1005, 82);


INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE)  
VALUES (6, TO_DATE('2023-10-12 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1006, 77);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE)  
VALUES (7, TO_DATE('2023-11-18 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1007, 81);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (8, TO_DATE('2023-12-01 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1008, 84);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE)  
VALUES (9, TO_DATE('2023-12-15 13:15:00', 'YYYY-MM-DD HH24:MI:SS'), 1009, 79);



-- 2024 Q1
INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (1, TO_DATE('2024-01-10 07:45:00', 'YYYY-MM-DD HH24:MI:SS'), 1011, 86);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (2, TO_DATE('2024-01-25 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1012, 89);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (3, TO_DATE('2024-02-05 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1013, 78);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (4, TO_DATE('2024-03-01 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1014, 91);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (5, TO_DATE('2024-03-15 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1015, 83);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (6, TO_DATE('2024-04-12 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1016, 80);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (7, TO_DATE('2024-05-18 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), 1017, 82);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (8, TO_DATE('2024-05-28 10:45:00', 'YYYY-MM-DD HH24:MI:SS'), 1018, 87);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (9, TO_DATE('2024-06-15 13:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1019, 76);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (10, TO_DATE('2024-06-25 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1010, 92);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (10, TO_DATE('2024-06-26 15:45:00', 'YYYY-MM-DD HH24:MI:SS'), 1020, 93);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (10, TO_DATE('2024-06-27 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1021, 92);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (10, TO_DATE('2024-06-28 15:45:00', 'YYYY-MM-DD HH24:MI:SS'), 1022, 93);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (1, TO_DATE('2024-01-10 07:45:00', 'YYYY-MM-DD HH24:MI:SS'), 1101, 86);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (3, TO_DATE('2024-01-25 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1102, 89);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (4, TO_DATE('2024-01-25 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1142, 96);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (5, TO_DATE('2024-01-15 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1103, 78);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (2, TO_DATE('2023-11-10 07:45:00', 'YYYY-MM-DD HH24:MI:SS'), 1201, 82);

INSERT INTO LOGINS (USER_ID, LOGIN_TIMESTAMP, SESSION_ID, SESSION_SCORE) 
VALUES (4, TO_DATE('2023-11-25 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1202, 84);

INSERT INTO LOGINS (c E) 
VALUES (6, TO_DATE('2023-11-15 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1203, 80);


-------------------------------------------------------------------------------
--usres who dint login in last 6 months
-Select * from 

with Test as(
select user_id,
latest_date
from (Select user_id, add_months(SYSDATE,-5) lag_date, max(login_timestamp) latest_date from Logins group by User_id )l
where latest_date< lag_date)

select U.USER_NAME from Test T left join users u on (u.USER_ID=T.USER_ID)

--------------------------
--user and session count by quarter fitsr date
select 
count(distinct USER_ID),
Count(session_id),
trunc( Login_timestamp,'Q') First_Q
from Logins

Group by 
trunc( Login_timestamp,'Q') 
order by trunc( Login_timestamp,'Q') desc ;
--------------------------------------------
--2-user who login in 2024 but not login in Nov-2023
select user_id,Login_timestamp from Logins
where extract(year from Login_timestamp)=2024
and user_id not in
( select user_id from Logins 
where extract(year from Login_timestamp)=2023
and extract(month from Login_timestamp)=11
)
----------------OR-----------------
select 
distinct user_id 
from Logins l2
where extract(year from Login_timestamp)=2024
and not exists
( select * from Logins L1
where extract(year from Login_timestamp)=2023
and extract(month from Login_timestamp)=11
and L1.user_id=L2.user_id
)

--4----
--on 2nd query add ,session count from previous Q, and percenage change in
select  First_Q, TS,
lag(TS)over( Order by FIRST_Q),
round ((TS-lag(TS)over( Order by FIRST_Q))/lag(TS)over( Order by FIRST_Q)*100,2) as Percent_change
 from 
(select 
trunc( Login_timestamp,'Q') First_Q,
Count(session_id) TS
from Logins
Group by 
trunc( Login_timestamp,'Q') 
order by trunc( Login_timestamp,'Q') desc )T ;

--5--------------

--user with higest seeion score for each day

select LOGIN_TIMESTAMP, USER_ID,SESSION_SCORE,
dense_rank()over (partition by LOGIN_TIMESTAMP order by SESSION_Score desc) SN
from Logins

--6-find user who logged in every day since their first login day
with 
First_Login as(
Select distinct
User_id , 
to_date(min(login_timestamp)over (partition by User_id  order by user_id )) First_Login,
trunc((select max(login_timestamp)from logins))latest_date ,
cast(((select max(login_timestamp)from logins))-trunc(min(login_timestamp)over (partition by User_id  order by user_id ))as int) LX
from logins),

Actual as(
Select User_id,count(distinct login_timestamp) LA from logins group by User_id)

Select * from Actual A
where exists
 (SELECT * FROM  First_Login F
   where F.User_id=A.User_id
         and F.LX=A.LA)
  
--7 what date there wer no login at all (user recurcive CTE for date range generation
 


WITH RECURSIVE_DATE_CTE (First_Login, Latest_Date) AS (
    SELECT 
        TRUNC(MIN(LOGIN_TIMESTAMP)) AS First_Login,
        TRUNC(MAX(LOGIN_TIMESTAMP)) AS Latest_Date
    FROM LOGINS
    UNION ALL
    SELECT 
        First_Login + 1,
        Latest_Date
    FROM RECURSIVE_DATE_CTE
    WHERE First_Login + 1 <= Latest_Date
)
SELECT distinct trunc(First_Login)
FROM RECURSIVE_DATE_CTE R
where not exists
 (select * from logins L
   where trunc(L.LOGIN_TIMESTAMP)=trunc(R.First_Login)) order by 1


--------------------------------------------------------------
----sample date function
select login_timestamp ,
to_char(current_timestamp ,'YYYY-MM-DD HH:MI:SS'),
current_timestamp-login_timestamp,
substr(login_timestamp,1,10),
extract(DAY from current_timestamp-login_timestamp)|| ' day',
extract(DAY from current_timestamp-login_timestamp)*24 + extract(DAY from current_timestamp-login_timestamp) || ' hours'
from Logins
order by login_timestamp  desc























