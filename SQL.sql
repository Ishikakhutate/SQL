use classicmodels;

select*from employees;
select employeeNumber,lastname,firstname,jobTitle from employees; 

select distinct jobTitle from employees;

select employeeNumber,firstname,lastname,officeCode
from employees
Where officecode=1;

select employeeNumber,firstname,lastname,officeCode,jobtitle
from employees
where jobtitle = 'VP Marketing' and officeCode = 1;

select employeeNumber,firstname,lastname,officeCode,jobtitle
from employees
where jobtitle = 'VP Marketing' or officeCode = 1;

select employeeNumber,firstname,lastname,officeCode
from employees 
order by officecode desc;

select*from employees
where jobtitle is null;

select*from employees
limit 3;




