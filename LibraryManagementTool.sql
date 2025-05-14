create database libraryManagementSystem;
use libraryManagementSystem;
CREATE TABLE Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    MemberName VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    Phone VARCHAR(20)
);

INSERT INTO Members (MemberName, Email, Phone) 
VALUES
('Kiprotich Korir', 'KK@gmail.com', '1234567890'),
('Mugo Munene', 'MM@example.com', '0987654321'),
('Ouma Otienda', 'OO@example.com', '1112223333');

-- Table: Books
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(100),
    PublishedYear YEAR,
    Genre VARCHAR(50)
);

INSERT INTO Books (Title, Author, PublishedYear, Genre) VALUES
('The Peaky Blinders', 'F. Scott Fitzgerald', 1925, 'Fiction'),
('Power Book','Korir', 1949, 'Fiction'),
('Facing Mt. Kenya', 'Maina',  1960, 'History');

-- Table: Staff
CREATE TABLE Staff (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    StaffName VARCHAR(50) NOT NULL,
    Role VARCHAR(50),
    Email VARCHAR(100)
);

INSERT INTO Staff (staffName, Role, Email) VALUES
('Omari Thompson', 'Librarian', 'emma.thompson@library.com'),
('Liam Wambua', 'Assistant', 'liam.brown@library.com');

-- Table: Borrowing
CREATE TABLE Borrowing (
    BorrowID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT NOT NULL,
    BookID INT NOT NULL,
    StaffID INT NOT NULL,
    BorrowDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);

INSERT INTO Borrowing (MemberID, BookID, StaffID, BorrowDate, ReturnDate) VALUES
(1, 2, 1, '2024-01-10', '2024-01-20'),
(2, 1, 2, '2024-02-15', NULL),
(3, 3, 1, '2024-03-01', '2024-03-10');
