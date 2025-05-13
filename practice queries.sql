-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS enrollment;
USE enrollment;

-- Create student1 table
CREATE TABLE student1 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    class VARCHAR(50),
    subject VARCHAR(50),
    isGraduated BOOLEAN,
    dob DATE
);

-- Insert data into student1 using column names
INSERT INTO student1 (name, class, subject, id)
VALUES
    ("naba", "10", "CS", 231020),
    ("naba", "10", "CS", 231021),
    ("naba", "10", "CS", 231022),
    ("naba", "10", "CS", 231023);

-- Create teacher table
CREATE TABLE teacher (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dob DATE,
    isSeniorLecturer BOOLEAN,
    subject VARCHAR(50),
    class VARCHAR(50)
);
	
-- Insert data into teacher without specifying column names (order must match table)
INSERT INTO teacher
VALUES
    (101, "naba", "2005-10-23", TRUE, "secondYear", "oop"),
    (102, "naba", "2005-10-23", TRUE, "secondYear", "oop"),
    (103, "naba", "2005-10-23", TRUE, "secondYear", "oop"),
    (104, "naba", "2005-10-23", TRUE, "secondYear", "oop");

-- Display table data
SELECT * FROM teacher;
SELECT * FROM student1;

-- Show table structures
DESCRIBE teacher;
DESCRIBE student1;

-- Add columns to student1
ALTER TABLE student1 
ADD email VARCHAR(50),
ADD age INT;

-- Modify the data type of subject column in teacher
ALTER TABLE teacher 
MODIFY COLUMN subject VARCHAR(100);

-- Truncate all data from teacher table
TRUNCATE TABLE teacher;

-- Delete the teacher record with id = 103
DELETE FROM teacher 
WHERE id = 103;

-- View student1 table data in descending order by id
SELECT * FROM student1
ORDER BY id DESC;

-- Update the name of the student with id = 231023
UPDATE student1
SET name = "laiba"
WHERE id = 231023;
