# Creating Tables and Inserting data 
Drop Table BOOKS;
Create Table BOOKS(
    book_Id int AUTO_INCREMENT,
    name VARCHAR(30) UNIQUE,
    Genre VARCHAR(20),
    Valuation int,
    Primary Key (book_Id)
);
Select * from BOOKS;
INSERT INTO  BOOKS(Name,Genre,Valuation) Values("Selfish gene","Science",2506);
INSERT INTO  BOOKS(Name,Genre,Valuation) Values("Beauty and Beast","Romance",25000);
INSERT INTO  BOOKS(Name,Genre,Valuation) Values("Broken","Romance",25000);
INSERT INTO  BOOKS(Name,Genre,Valuation) Values("DUNE","Fiction",25000);
# now Updating the table
UPDATE BOOKS 
Set Genre = "Sci_fi"
Where Genre="Science"Or Genre="Fiction";
# index one will be updated based on given information
UPDATE BOOKS
Set Name="Monkey man",Genre="Undecided"
Where Book_id=1;
-- more basic queries
SELECT  Book_id ,Name From BOOKS;
#3
SELECT BOOKS.Name,BOOKS.Valuation
FROM BOOKS
ORDER BY Name; # column to start with
SELECT * From BOOKS
WHERE Genre= "Sci_fi" OR Genre="Romance";
-- Some other basic queries 
SELECT Name, Genre From BOOKS
WHERE Genre<>"Romance";-- <> this openration means not equal
Select Name ,Genre From BOOKS
WHERE Book_id <=4 AND Name<>"Selfish gene";
-- Use of the IN Ipererator
SELECT * from BOOKS
WHERE Name IN ("Selfish gene","Beauty and BEast")
SELECT * from BOOKS
where Valuation <100000;
SELECT * from BOOKS
Where Genre IN ("sfi_ci","Romance")
