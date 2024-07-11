drop table iphone
CREATE TABLE iphone (
    USER_ID INT ,
    I_Model VARCHAR(20) NOT NULL   
);


insert into iphone (USER_ID, I_Model) values (1,'i-11');
insert into iphone (USER_ID, I_Model) values (1,'i-15');
insert into iphone (USER_ID, I_Model) values (2,'i-15');
insert into iphone (USER_ID, I_Model) values (3,'i-12');
insert into iphone (USER_ID, I_Model) values (3,'i-15');
insert into iphone (USER_ID, I_Model) values (1,'i-12');
insert into iphone (USER_ID, I_Model) values (1,'i-13');
insert into iphone (USER_ID, I_Model) values (1,'i-14');
CREATE TABLE iphone_model (
   
    I_Model VARCHAR(20) NOT NULL   
);
insert into iphone_model ( I_Model) values ('i-11');
insert into iphone_model ( I_Model) values ('i-12');
insert into iphone_model ( I_Model) values ('i-13');
insert into iphone_model ( I_Model) values ('i-14');
insert into iphone_model ( I_Model) values ('i-15');

select * from iphone_model
--qurery to find User who amde first purchase as I_15
select user_id from iphone T
where I_model = 'i-15'
and not exists
 ( select * from iphone t1
    where I_model <>'i-15'
    and t1.user_id=T.user_id)
  

  
  
--Find user who upgrade forom I-12 to I15
--select * from iphone
select user_id from iphone T
where I_model = 'i-15'
and  exists
 ( select * from iphone t1
 where I_model ='i-12'
  and t1.user_id=T.user_id)
  
--------------
--Total give me count of user who buying i-15 for first time and count of those who upgrading to i-15

with First15 as
(
select count (user_id )U1
from iphone T
where I_model = 'i-15'
and not exists
 ( select * from iphone t1
    where I_model <>'i-15'
    and t1.user_id=T.user_id)
),
Upgrad as(

select count(user_id) U2
from iphone T
where I_model = 'i-15'
and  exists
 ( select * from iphone t1
    where I_model <>'i-15'
    and t1.user_id=T.user_id)
)

select U1,U2 from First15 left join Upgrad on (1=1)

need rework
-----------------------------------------------------------
--user who has all model 
select * from iphone
select * from iphone_model

select I_model, User_id 
from iphone I
where  I_model = any (select I_model from iphone_model M where M.I_model=I.I_model)

select count (distinct I.I_model) CN , User_id from iphone I 
group by  User_id
having  count (distinct I.I_model) =( select  count (distinct I_model) from iphone_model)

