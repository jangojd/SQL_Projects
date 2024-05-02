--- deleting the keys when foreign keys are associateed with them 
-- Table Created as ON DELETE SET NULL
Create TABLE branch(
    branch_id int primary key,
    branch_name VARCHAR(30),
    mgr_id int,
    mgr_start_date DATE,
    FOREIGN key (mgr_id) References employee(emp_id) on delete SET NULL -- this line of code says if  emp id deleted then set foreign key as null

);
DELETE FROM employee
where employee.emp_id=102;
SELECT * FROM employee; ---now if you run this querry you will see all foreign keys will 
--CREATING THE TABLE BASED ON "ON DELETE CASCADE0"
drop Table branch_supplier;
Create table branch_supplier(
    branch_id int,
    supplier_name Varchar(40),
    supply_type Varchar(40),
    primary key (branch_id,supplier_name),
    Foreign Key (branch_id) References branch(branch_id) On DELETE CASCADE
);
-- BY USING ON DELETE CASCADE YOU NOTICE THAT WHOLE ROW HAS BEEN ERADICATED
DELETE FROM branch_supplier
where branch_id= 2;
SELECT * from branch_supplier;
