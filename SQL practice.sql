-- Write a query to fetch the EmpFname from the EmployeeInfo table in upper case and use the ALIAS 
-- name as EmpName.
select Upper(EmpFname) as Empname  from EmployeeInfo ;
-- Write a query to fetch the number of employees working in the department ‘HR’.
select count(*) from employeeinfo
where department = 'HR';
-- Write a query to get the current date.
select sysdate();
-- Write a query to retrieve the first four characters of  EmpLname from the EmployeeInfo table.
select substring( EmpLname,1,4) from EmployeeInfo;
-- Write a query to fetch only the place name(string before brackets) from the Address column
-- of EmployeeInfo table.
select mid( Address, 0, Locate('(',Address)) from employeeinfo;
-- Write a query to create a new table which consists of data and structure copied from the other table.
select * into newtable from employeeinfo where 1 = 0;
-- Write q query to find all the employees whose salary is between 50000 to 100000.
select * from employeeposition where salary between '50000' and '10000';
-- Write a query to find the names of employees that begin with ‘S’
select* from employeeinfo where empfname like 's%';
-- Write a query to fetch top N records.
select*from employeeinfo order by salary desc limit N;
-- Write a query to retrieve the EmpFname and EmpLname in a single 
-- column as “FullName”. The first name and the last name must be separated with space
select concat ('empfname',' ','emplname') as fullname from employeeinfo;
-- Write a query find number of employees whose DOB is between 02/05/1970 to 31/12/1975 
-- and are grouped according to gender
select count(*),Gender as dob where DOB between 02/05/1970 and 31/12/1975 group by Gender;




