
-- Create Database
CREATE DATABASE StudentManagement;
USE StudentManagement;

-- Create Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Gender CHAR(1),
    Age INT,
    Grade VARCHAR(2),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);

-- Insert Data
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES
('Amit', 'M', 16, '10', 85, 78, 82),
('Neha', 'F', 15, '9', 72, 88, 90),
('Rahul', 'M', 17, '11', 91, 86, 89),
('Pooja', 'F', 16, '10', 67, 74, 80),
('Karan', 'M', 15, '9', 88, 90, 85),
('Sneha', 'F', 17, '11', 92, 91, 93),
('Arjun', 'M', 16, '10', 76, 70, 68),
('Riya', 'F', 15, '9', 81, 79, 84),
('Vikas', 'M', 17, '11', 69, 65, 72),
('Anjali', 'F', 16, '10', 90, 88, 91);

-- Queries

-- Show all students
SELECT * FROM Students;

-- Average score in each subject
SELECT 
    AVG(MathScore) AS AvgMath,
    AVG(ScienceScore) AS AvgScience,
    AVG(EnglishScore) AS AvgEnglish
FROM Students;

-- Top performer
SELECT Name, 
       (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;

-- Count students per grade
SELECT Grade, COUNT(*) AS TotalStudents
FROM Students
GROUP BY Grade;

-- Average score by gender
SELECT Gender,
       AVG(MathScore) AS AvgMath,
       AVG(ScienceScore) AS AvgScience,
       AVG(EnglishScore) AS AvgEnglish
FROM Students
GROUP BY Gender;

-- Students with MathScore > 80
SELECT Name, MathScore
FROM Students
WHERE MathScore > 80;

-- Update student's grade
UPDATE Students
SET Grade = '11'
WHERE Name = 'Amit';
