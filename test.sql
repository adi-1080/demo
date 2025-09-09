CREATE DATABASE school_db;

USE school_db;

CREATE TABLE student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    age INT CHECK (age >= 0),
    gender ENUM('Male', 'Female', 'Other'),
    email VARCHAR(100) UNIQUE,
    enrollment_date DATE DEFAULT CURRENT_DATE
);

INSERT INTO student (first_name, last_name, age, gender, email)
VALUES
('Shivam', 'Singh', 20, 'Male', 'shivam@example.com'),
('Priya', 'Sharma', 21, 'Female', 'priya@example.com'),
('Rahul', 'Mehta', 19, 'Male', 'rahul@example.com');

SELECT * FROM student;
