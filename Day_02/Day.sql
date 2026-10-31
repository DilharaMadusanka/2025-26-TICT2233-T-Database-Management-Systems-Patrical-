CREATE DATABASE TICT2233db;

USE TICT2233db;

CREATE TABLE Student(
    student_id INT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Date_Of_Birth DATE,
    GPA DECIMAL(3,2)
);

DESC Student

INSERT INTO Student (student_id, first_name, last_name, date_of_birth, gpa) VALUES
(1, 'Alice', 'Johnson', '2002-03-15', 3.85),
(2, 'Bob', 'Smith', '2001-07-22', 3.50),
(3, 'Charlie', 'Brown', '2003-01-10', 3.75),
(4, 'Diana', 'Miller', '2000-11-05', 3.90),
(5, 'Ethan', 'Clark', '2004-04-18', 3.65),
(6, 'Fiona', 'Taylor', '2001-06-25', 3.80),
(7, 'George', 'Anderson', '2002-09-12', 3.45),
(8, 'Hannah', 'Martinez', '2003-08-30', 3.95),
(9, 'Ian', 'Roberts', '2000-10-11', 3.70),
(10, 'Julia', 'White', '2004-02-14', 3.60);

SELECT * FROM Student;

ALTER TABLE Student MODIFY COLUMN First_Name VARCHAR(100);

alter table Student modify column Last_Name VARCHAR(100);

alter table Student add column Cource_Name VARCHAR(20);

UPDATE Student 
SET cource_name = CASE 
    WHEN student_id = 1 THEN 'ICT'
    WHEN student_id = 2 THEN 'ET'
    WHEN student_id = 3 THEN 'BST'
    WHEN student_id = 4 THEN 'ICT'
    WHEN student_id = 5 THEN 'ET'
    WHEN student_id = 6 THEN 'BST'
    WHEN student_id = 7 THEN 'ICT'
    WHEN student_id = 8 THEN 'ET'
    WHEN student_id = 9 THEN 'BST'
    WHEN student_id = 10 THEN 'ICT'
END;
