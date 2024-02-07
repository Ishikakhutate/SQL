show databases;

create database cds16;
create database sample;
drop database sample;
show tables;

use cds16;

CREATE TABLE employee_details(
emp_id VARCHAR(8),
emp_name VARCHAR(20),
emp_designation VARCHAR(20),
emp_age INT);

create table Student_details(
id varchar(10),
Stu_name varchar(20),
contact varchar(20),
address varchar(20),
Stu_age int);
show tables;
drop table Student_details;

Insert into employee_details VALUES
('1101', 'Ishika','Data scientist', 22);
show tables;

select*from employee_details;
Insert into employee_details VALUES
('1101', 'Ishika','Data scientist', 22),
('1102', 'Mihir', 'Student', 20),
('1103', 'Sudarshan','Topper', 22);

update employee_details 
SET emp_age = 23 
WHERE emp_id='1102';

update employee_details 
set emp_age = 10 , emp_name = 'Isha'
where emp_id ='1103';
select*from employee_details;

delete from employee_details where emp_id = '1101';
describe employee_details;
show columns from employee_details;

alter table employee_details ADD city_name varchar(20);
describe employee_details;

alter table employee_details Drop column city_name;

alter table employee_details modify emp_designation varchar(50);

alter table employee_details rename column  emp_age to age;

alter table employee_details 
rename to employee; 

select* from employee;

Truncate table employee;

use cds16;

select*from advertising;

use classicmodels;

select*from customers;
select contactLastName,contactFirstName,country from customers;

select*from employees;
select employeeNumber,lastname,firstname from employees;

select*from offices;
select city,phone,state,country from offices;

select*from orderdetails;
select orderNumber,quantityOrdered from orderdetails;

select*from orders;
select orderNumber,status from orders;

select*from payments;
select amount from payments;

select distinct(country)
from customers;

select contactLastName,contactFirstName,country 
from customers
where country='USA';

select customerName,creditLimit
from customers
where creditLimit>100000;

select customerName,creditLimit
from customers
where creditLimit<50000;

select customerName,creditLimit,country
from customers
where creditLimit>80000 and country='USA';

select customerName,creditLimit,country
from customers
where creditLimit>100000 or country='France';

select customerName,creditLimit,country
from customers
where not country='USA';

select customerName,creditLimit,country
from customers
order by creditLimit;
select customerName,creditLimit,country
from customers
order by creditLimit desc;
select contactLastName,contactFirstName,country 
from customers
order by contactfirstname;
select contactLastName,contactFirstName,country 
from customers
order by contactlastname desc;

select contactLastName,contactFirstName,country 
from customers 
where country='Italy'
order by creditlimit desc;

select*from customers 
where state is null;
select contactLastname,contactFirstName,state 
from customers
where state is not null;

select* from customers
limit 5;

select contactLastname,contactFirstName,state,country 
from customers
where country='UK'
order by creditlimit desc 
limit 5;









