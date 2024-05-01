-- find the names of the employees who have sold upto 30000 to a single client
SELECT employee.first_name, works_with.total_sales 
from employee
JOIN 
works_with On 
employee.emp_id=works_with.emp_id
Where works_with.total_sales>30000 ;
--- Nested Queries are starting from here 
SELECT employee.first_name,employee.last_name
from employee
Where employee.emp_id IN (
        SELECT works_with.emp_id
        From works_with
        Where works_with.total_sales> 30000
);

-- Find all the client that are managed by branch
-- that michael scott manages 
-- Assume that you know the id
-- first breaking down the qurry
-- this querry gives thr branch where mamanger works at 
SELECT branch.branch_id
from branch
where branch.mgr_id=102;
-- now changing this querry from nested querry  
SELECT client.client_name
from client
where client.branch_id =(
    SELECT branch.branch_id
    from branch
    where branch.mgr_id=102
    limit 1
);

 