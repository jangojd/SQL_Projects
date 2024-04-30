SELEct * From employee
ORDER BY sex,first_name,last_name
limit 5;
--2
select first_name,last_name 
from employee;
--3
select first_name as forename,last_name as surname from employee;
--4
select Distinct branch_id from employee;
--5   FUNCTIONS
--find the number of emoloyees
select COUNT(emp_id)
from employee;
-- find the number of female employees born after 1970
select count(emp_id) from employee
where sex="F" AND birth_day>"1970-01-01";
-- calculating the average salary of the employees
select AVG(salary) from employee;
-- average salary of male employee
select AVG(salary) from employee
where sex= "M";
--average salary of the female employee
select AVG(salary) from employee
where sex= "F";
--total employee salary
select Sum(salary) from employee;
-- how many males and females are there 
select Count(sex),sex from employee
Group By sex;
--- finding the total sales of the each employee
select sum(total_sales),emp_id 
from works_with
GROUP BY emp_id;
--wild card queries 
-- find a client name whose name ends with LLC
Select * 
from Client
Where client_name LIKE("%LLC");
-- find client whoese name ends with EX
Select * 
from Client
Where client_name LIKE("%EX");--it will check the pattern where "EX" lies and % used for all the digits before
-- Find an emoloyee born in october
-- % means many digits, _ means single digit
Select * from employee
Where birth_day LIKE("____-10%");
-- Find clientd who are  Schools
SELECT * from CLIENT
WHERE client_name LIKE ("%school%")
-- UNION   used to combine two different querries
--create list of employee and branch they are working 
select first_name
from employee
Union
SELECT branch_name
From branch ;
- UNION   used to combine two different querries
--create list of employee and branch they are working 
--in both statements there should be the same  number of columns other wise union wont work for you.
select first_name
from employee
Union
SELECT branch_name
From branch 
UNION 
Select client_name
from CLIENT;
-- find the list of all suppliers and branch and clinets
SELECT client_name,branch_id from CLIENT
UNION
SELECT supplier_name,branch_id
from branch_supplier;


-- find the list of all the money earned or spent by the company
Select salary 
from employee
UNION
SELECT total_sales 
from works_with;


