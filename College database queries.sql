create database college;
use college;
show databases;
create table Employees(EmpID int, FirstName varchar(10), 
LastName varchar(10), EmpAge int, Empzone varchar(10));
desc Employees;

insert into Employees values(1, 'Rita', 'zade', 20, 'west');
select * from Employees;

insert into Employees(EmpID, FirstName, LastName, EmpAge,Empzone)
values (2,'Ram' , 'Joshi' , 22, 'North'),
	    (2, Null, 'Joshi' , 24, 'North'),
        (3, 'Ram' , Null , 25, Null);
        
insert into Employees (EmpID, Firstname, Lastname)
values ( 5, 'Geeta' ,'Rao'),
       (6, null, 'Garg');        
       
update Employees set Firstname ='Sita' where Empage = 24;       