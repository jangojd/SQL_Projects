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