use cds16;
select*from customer;
select*from record;
-- Fetch the customer details whose age is greater than average age 

select*
from customer
where age > (select avg(age) 
from customer);

select*
from record
where amount = (select max(amount)
from record);
-- Get the customer details 
select*from customer
where customer_id=(select customer_id from record 
where amount = (select max(amount) from record));

select*from customer 
where customer_id in (select customer_id from record
where amount > (select avg(amount) from record));

select*from customer 
where age =  (select min(age) from customer);

use classicmodels;
describe payments;

select*from customers 
where customerNumber in (select customerNumber
from payments
where amount > (select avg(amount) from payments));

-- Fetch the customer details who purchase the vintage car 

select * from customers
where customernumber in (select customernumber from orders
where ordernumber in (select ordernumber from orderdetails
where productcode in (select productcode from products 
where productline = 'vintage cars')));

select*from employees;
select*from offices;
-- fetch the employee details who work in Boston
select*from employees
where officecode = (select officecode from offices
where city = 'Boston');







