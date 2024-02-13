use classicmodels;
select*from employees;
-- Retrieve the unique job titles from the employees table.
select distinct jobTitle
from employees;
-- List the employee_id, first_name, and last_name of employees who have a officecode in between 1 to 6
select employeeNumber, firstname, Lastname , officecode
from employees
where officecode between 1 and 6 ;
-- Count the number of employees in each job title.
select jobtitle, count(*) as count
from employees
group by jobtitle;

use cds16;
select*from customer;
select*from record;

select r.order_id, c.customer_id, r.amount, c.f_name 
from customer as c inner join record as r
on c.customer_id = r.customer_id;

select r.order_id, c.customer_id, r.amount, c.f_name 
from customer as c right join record as r
on c.customer_id = r.customer_id;

select r.order_id, c.customer_id, r.amount, c.f_name 
from customer as c left join record as r
on c.customer_id = r.customer_id;




