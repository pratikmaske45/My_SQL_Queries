create database user;
show databases;

use user;
create table customer (custid int, custname varchar(15), city varchar(15),
product varchar(15), price int);

desc customer;
alter table customer add primary key (custid);
insert into customer value(1 , 'Om' , 'Pune', 'Mobile' , 15000);
insert into customer value(2 , 'Rucha' , 'Nagpur', 'Laptop' , 40000);
insert into customer value(3 , 'Raj' , 'Mumbai', 'Mouse' , 300);

select * from customer;
select custname , product from customer;

-- clone table
create table clonetable as select * from customer;
select * from clonetable;
drop table clonetable;

select custname, city from customer;

select custname, city from customer where custid =1;

select custname , product , price from customer where price > 15000;
select custname , product , price from customer where price < 15000;
select * from customer where price >= 15000;

select * from customer where custid =1;
select * from customer where city = 'Nagpur';

-- sorting data using order by single column
select * from customer order by price;
select * from customer order by price desc;


select * from customer order by custid desc; -- (descending)
select * from customer order by custid;

select * from customer order by city;

-- sorting multiple order by multiple columns
select * from customer order by city, price;
select * from customer order by price, city;
-- gives priority to the first column and data gets sorted according to first column
-- 2nd column gets sorted as per first column
select * from customer order by city desc , price asc; -- (ascending)

-- single row functions
--  case conversation functions 
select upper(custname) , lower(product) from customer
where custid<3; -- upper case and lower case functions

alter table customer add column last_name varchar(15);
update customer set last_name = 'Sharma' where custid = 1; 
update customer set last_name = 'Verma' where custid = 2;
update customer set last_name = 'Kohli' where custid = 3;  
select * from customer;

-- concat two columns
select concat(custname , last_name) from customer;
select concat( custname, ' ' , last_name) from customer;
select concat(custname, ' ', last_name) as fullname from customer;

-- use of substr(substring) and instr(instring) functions
select * from customer;
select substr(custname , 1,3 ) from customer;

select instr(custname, 'a') as position from customer;
