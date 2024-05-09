CREATE TABLE TRIGGER_TEST(
    message Varchar (100)


);
 
DELIMITER $$
CREATE 
    Trigger my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO TRIGGER_TEST  VALUES("new emoloyee added");
    END$$
DELIMITER ;

INSERT INTO employee 
VALUES(109,"oscar","martinez","1968-02-03","M",6300,106,3);
SELECT * FROM TRIGGER_TEST;