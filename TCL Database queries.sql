create database TCL;
use TCL;

create table orders (
order_id int primary key, 
customer_name varchar(100),
status varchar(50)
);
desc orders;

set autocommit =0 ;
-- start transaction
begin;
insert into orders values(101, 'Geet', 'pending');
insert into orders values(102, 'Bob', 'pending');
select * from orders;
rollback;

insert into orders values(101 , 'Geet', 'pending');
insert into orders values(102, 'bob', 'pending');
truncate table orders;
select * from orders;

-- for commit 
insert into orders values(101 , 'Alice', 'pending');
insert into orders values(102, 'bob', 'pending');
select * from orders;
commit;
rollback;
insert into orders values(103, 'rohit', 'pending');
rollback;
update orders set customer_name ='Raj' where order_id=102;
rollback;
-- insert few orders
insert into orders values (103, 'Om' , 'Pending');
insert into orders values (104, 'Sahil' , 'Pending');
savepoint sp1;
select * from orders;
-- update one order
update orders set status = "shipped" where order_id =104;
savepoint sp2;
rollback to sp1;

-- delete another order
delete from orders where  order_id =102;
savepoint sp3;
 -- we want to undo the delete but keep the update
rollback to savepoint sp1;
select * from orders;
rollback;


