create database company_db;
use  company_db;
 create table Employees(EmpID int Not null , FirstName varchar(10), 
LastName varchar(10), EmpAge int);
desc Employees;

insert into Employees values (1, 'Riya' , 'Ram', 20);
select * from Employees;

-- unique key constraint;
create table employee1 (Empid int not null , firstnamme varchar(10), 
lastname varchar(10), unique (Empid));
desc employee1;

insert into employee1 values(Null, 'Ravi' , 'Kumar');
insert into employee1 values(1, 'Ravi', 'Kumar');

insert into employee1 values (1, 'Ravi', 'Kumar');
insert into employee1 values (2, 'Ravi', 'Kumar');
select * from employee1;
desc employee1;

create table employee3 (Empid int not null, Firstname varchar(10),lastname varchar(10), 
empage int, check(empage>20));
desc employee3;
insert into employee3 values(1, 'geeta', 'kumari', 15);
insert into employee3 values(1, 'geeta', 'kumari', 22);
select * from employee3;
alter table employee3 add column salary int, add check (salary>= 5000);
desc employee3;
select * from employee3;
update employee3 set salary = 2000;  
update employee3 set salary = 6000;  

-- check constraint on multiple columns
create table Employee7 (empid int primary key, firstname varchar(10), lastname varchar(10),
empage int);
insert into employee7  (empid, firstname, lastname, empage)
 values (1, 'virat' , 'kohli', 38);


alter table employee7 add column salary int; 
alter table employee7 add constraint chk_empage_salary
check(empage>20 and salary >=5000);
desc employee7;
select * from employee7;

alter table employee7 drop check chk_empage_salary ;
insert into employee7 values(5,'anushka','naik', 10, 1000);

-- default constraint set a default value for a column if no other 
-- value specified
create table employee4 (empid int not null, firstname varchar(10), lastname varchar(10),
empdept varchar(10) default 'operations');
desc employee4;
insert into employee4 ( Empid, firstname, lastname)
values (1, 'rohit' , 'sharma');
insert into employee4 (empid, firstname, lastname)
values (2, 'kirti' , 'girl');
select *  from employee4;






