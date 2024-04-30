SELECT * from branch;
INSERT INTO branch VALUES(4,"Girrafe",NULL,NULL);
-- find all the branches and find their managers 
-- inner join only ssame rows from both tables get recognised 
select employee.emp_id,employee.first_name,branch.branch_name
 from employee
 JOIN branch ON
 employee.emp_id=branch.mgr_id;
-- LEFT JOIN smae values in both tables and all values of left table will be recognised
select employee.emp_id,employee.first_name,branch.branch_name
 from branch
 LEFT JOIN employee ON
 employee.emp_id=branch.mgr_id;-- here by shifting order and putting branch as left table we get differnt result
 -- RIGHT JOIN
 select employee.emp_id,employee.first_name,branch.branch_name
 from employee
RIGHT JOIN branch ON -- focused on right table i.e brach table 
 employee.emp_id=branch.mgr_id;
 