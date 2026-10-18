-- ============================================================
-- Student Management System (MySQL)
-- Safe to run multiple times: the script rebuilds the table.
-- ============================================================

-- Create Database
CREATE DATABASE IF NOT EXISTS StudentManagement;
USE StudentManagement;

-- Create Students Table
DROP TABLE IF EXISTS Students;
CREATE TABLE Students (
    StudentID    INT PRIMARY KEY AUTO_INCREMENT,
    Name         VARCHAR(50) NOT NULL,
    Gender       CHAR(1)     NOT NULL CHECK (Gender IN ('M', 'F')),
    Age          INT         NOT NULL CHECK (Age BETWEEN 5 AND 25),
    Grade        VARCHAR(2)  NOT NULL,
    MathScore    INT         NOT NULL CHECK (MathScore    BETWEEN 0 AND 100),
    ScienceScore INT         NOT NULL CHECK (ScienceScore BETWEEN 0 AND 100),
    EnglishScore INT         NOT NULL CHECK (EnglishScore BETWEEN 0 AND 100)
);

-- Insert Data
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES
('Amit',   'M', 16, '10', 85, 78, 82),
('Neha',   'F', 15, '9',  72, 88, 90),
('Rahul',  'M', 17, '11', 91, 86, 89),
('Pooja',  'F', 16, '10', 67, 74, 80),
('Karan',  'M', 15, '9',  88, 90, 85),
('Sneha',  'F', 17, '11', 92, 91, 93),
('Arjun',  'M', 16, '10', 76, 70, 68),
('Riya',   'F', 15, '9',  81, 79, 84),
('Vikas',  'M', 17, '11', 69, 65, 72),
('Anjali', 'F', 16, '10', 90, 88, 91);

-- ============================================================
-- Queries
-- ============================================================

-- 1. Show all students
SELECT * FROM Students;

-- 2. Average score in each subject
SELECT
    ROUND(AVG(MathScore), 2)    AS AvgMath,
    ROUND(AVG(ScienceScore), 2) AS AvgScience,
    ROUND(AVG(EnglishScore), 2) AS AvgEnglish
FROM Students;

-- 3. Top performer (highest total score)
SELECT Name,
       (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;

-- 4. Count students per grade
SELECT Grade, COUNT(*) AS TotalStudents
FROM Students
GROUP BY Grade
ORDER BY CAST(Grade AS UNSIGNED);

-- 5. Average score by gender
SELECT Gender,
       ROUND(AVG(MathScore), 2)    AS AvgMath,
       ROUND(AVG(ScienceScore), 2) AS AvgScience,
       ROUND(AVG(EnglishScore), 2) AS AvgEnglish
FROM Students
GROUP BY Gender;

-- 6. Students with MathScore > 80
SELECT Name, MathScore
FROM Students
WHERE MathScore > 80
ORDER BY MathScore DESC;

-- 7. Update a student's grade
UPDATE Students
SET Grade = '11'
WHERE Name = 'Amit';
