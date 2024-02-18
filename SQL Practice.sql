-- Write a query to fetch all the records from the EmployeeInfo table ordered by EmpLname in descending 
-- order and Department in the ascending order
select*from employeeinfo 
order by EmpLname desc, Department asc;
-- Write a query to fetch details of employees whose EmpLname ends with an alphabet ‘A’
--  and contains five alphabets.
select*from employeeinfo where empLname like '_____a';
-- Write a query to fetch details of all employees excluding the employees with first names,
--  “Sanjay” and “Sonia” from the EmployeeInfo table.
select*from employeeinfo where empFname not in ('Sanjay','Sonia');
-- Write a query to fetch details of employees with the address as “DELHI(DEL)%”.
select*from employeeinfo where address like 'DELHI(DEL)%';
-- Write a query to fetch all employees who also hold the managerial position.
select e.empfname, e.emplname,  p.EmpPosition
from employeeinfo as e inner join employeeposition as p
on e.empid = p.empid and p.empposition in ('Manager');
--  Write a query to fetch the department-wise count of employees sorted by department’s
-- count in ascending order.
select department,count(empid)  as empcount
from employeeinfo 
group by department 
order by empcount  asc;
-- Write a query to calculate the even and odd records from a table.
select empid from (select rowno, empid from EmployeeInfo) WHERE MOD(rowno,2)=0;
SELECT EmpID FROM (SELECT rowno, EmpID from EmployeeInfo) WHERE MOD(rowno,2)=1;
-- Write a query to retrieve duplicate records from a table.
SELECT EmpID, EmpFname, Department COUNT(*) 
FROM EmployeeInfo GROUP BY EmpID, EmpFname, Department 
HAVING COUNT(*) > 1;
-- Write a query to fetch 50% records from the EmployeeInfo table.
select * from employeeinfo 
where empid <= ( select count(empid)/2 from employeeinfo);
-- Write a query to retrieve EmpPostion along with total salaries paid for each of them.
 select empposition, sum(salary) from employeeinfo group by empposition;
 -- Write a query to retrieve Departments who have less than 2 employees working in it.
select department, count(empid) from employeeinfo group by department having count(empD)<2;
-- Write a query to display the first and the last record from the EmployeeInfo table.
select * from employeeinfo where empid = (select min(empid) from employeeinfo);
select * from employeeinfo where empid = (select max(empid) from employeeinfo);
-- Write a query to retrieve the last 3 records from the EmployeeInfo table.
SELECT *
FROM EmployeeInfo
ORDER BY EmployeeID DESC
LIMIT 3;







