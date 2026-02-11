CREATE DATABASE Library;
USE Library;

CREATE TABLE Book (
    Book_Id INT PRIMARY KEY,
    Title VARCHAR(100),
    Language_Id INT,
    MRP DECIMAL(8,2),
    Publisher_Id INT,
    Publisher_Date DATE,
    Volume INT,
    Status VARCHAR(20)
);

CREATE TABLE Author (
    Author_Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone_Number VARCHAR(15),
    Status VARCHAR(20)
);

CREATE TABLE Book_Author (
    Book_Id INT PRIMARY KEY,
    Author_Id INT PRIMARY KEY,
    FOREIGN KEY (Book_Id) REFERENCES Book(Book_Id),
    FOREIGN KEY (Author_Id) REFERENCES Author(Author_Id)
);

CREATE TABLE Publisher (
    Publisher_Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(200)
);

CREATE TABLE Member (
    Member_Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Branch_Code VARCHAR(10),
    Roll_Number VARCHAR(20),
    Phone_Number VARCHAR(15),
    Email_Id VARCHAR(100),
    Date_of_Join DATE,
    Status VARCHAR(20)
);

CREATE TABLE Book_Issue (
    Issue_Id INT PRIMARY KEY,
    Date_of_Issue DATE,
    Book_Id INT,
    Member_Id INT,
    Expected_Date_of_Return DATE,
    Status VARCHAR(20),
    FOREIGN KEY (Book_Id) REFERENCES Book(Book_Id),
    FOREIGN KEY (Member_Id) REFERENCES Member(Member_Id)
);

CREATE TABLE Book_Return (
    Issue_Id INT PRIMARY KEY,
    Actual_Date_of_Return DATE,
    Late_Days INT,
    Late_Fee DECIMAL(8,2),
    FOREIGN KEY (Issue_Id) REFERENCES Book_Issue(Issue_Id)
);


CREATE TABLE Language (
    Language_Id INT PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE Late_Fee_Rule (
    FromDays INT,
    ToDays INT,
    Amount DECIMAL(8,2)
);


ALTER TABLE Book
ADD Edition VARCHAR(20);

ALTER TABLE Member
MODIFY Phone_Number VARCHAR(20);

TRUNCATE TABLE Publisher;

DROP TABLE Author;

RENAME TABLE Late_Fee_Rule TO Fine;

SELECT Issue_Id,
       CASE
           WHEN Late_Days BETWEEN 0 AND 7 THEN 10
           WHEN Late_Days BETWEEN 8 AND 30 THEN 100
           WHEN Late_Days > 30 THEN Late_Days * 10
       END AS Fine
FROM Book_Return;
