create database client;
show databases;
use client;
create table Employee (
emp_id int, 
emp_name varchar(20),
city varchar(20),
bdate date
);
desc employee;
create table Investor (
inv_no int,
inv_name varchar(20),
inv_date date,
inv_amount int,
emp_id int
);
desc investor;
insert into employee values
(1, 'Rohit Sharma' , 'Mumbai' , '1986-4-30'),
(2,	'Priya Patil', 'Delhi', '1999-08-22'),
(3,	'Amit Verma',	'Nashik', '2001-01-10'),
(4,	'Sneha Joshi', 'Pune', '1998-11-03'),
(5,	'Rohan Deshmukh', 'Nagpur','2000-03-18');
alter table employee add primary key (emp_id);
select * from employee;

insert into investor values
(101,	'Green Energy Fund',	'2025-01-15',	25000,	1),
(102,	'Sunrise Investments',	'2025-02-10',	40000,	2),
(103,	'Future Growth Fund',	'2025-03-20',	15000,	3),
(104,	'Smart Savings',	    '2025-04-05',	60000,	4),
(105,	'Blue Chip Capital',	'2025-05-12',	35000,	5);
alter table investor add primary key (inv_no);
alter table investor rename column inv_amount to inv_amt;
select * from investor;

alter table employee
add column age int,
add column salary int;
alter table employee add constraint chk_emp_age_salary
check  (Age<=50 and Salary>=10000);
alter table employee drop constraint chk_emp_age; -- we can use drop check 

alter table investor add column age int;
alter table investor modify inv_name text;
alter table investor rename column emp_id to e_id;
update employee set city = 'Nagpur' where emp_id =4;
select * from employee;

delete from investor where inv_no =105;
select * from investor;

alter table investor drop column age;
alter table investor add foreign key (e_id) references employee(emp_id);

select inv_no , inv_name , inv_date , inv_amt from investor;
 rename table investor to investment;
 select * from investment;
 truncate table investment;
 show create table investment;
  alter table investment drop foreign key investment_ibfk_1;
  truncate table employee;
  drop table employee;
  drop table investment;