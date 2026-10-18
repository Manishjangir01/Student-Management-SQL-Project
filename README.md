# Student Management SQL Project

A small MySQL project that creates a `Students` table, loads sample data and
answers common analysis questions with SQL.

## Database

- Database: `StudentManagement`
- Table: `Students`

| Column         | Type        | Notes                       |
|----------------|-------------|-----------------------------|
| `StudentID`    | INT         | Primary key, auto increment |
| `Name`         | VARCHAR(50) | Required                    |
| `Gender`       | CHAR(1)     | `M` or `F`                  |
| `Age`          | INT         | 5 to 25                     |
| `Grade`        | VARCHAR(2)  | Class, e.g. `9`, `10`, `11` |
| `MathScore`    | INT         | 0 to 100                    |
| `ScienceScore` | INT         | 0 to 100                    |
| `EnglishScore` | INT         | 0 to 100                    |

## Queries included

1. Show all student records
2. Average score in each subject
3. Top performer (highest total score)
4. Number of students per grade
5. Gender-wise average scores
6. Students with a Math score above 80
7. Update a student's grade

## How to run

Requires MySQL 8.0.16 or newer (needed for `CHECK` constraints).

```bash
mysql -u <your-user> -p < student_management.sql
```

The script uses `DROP TABLE IF EXISTS`, so it can be run again at any time
and always starts from the same sample data.

## Files

- `student_management.sql`: table structure, sample data and queries
- `SQL_merged.pdf`: printed output report with results

## Use cases

- SQL practice
- Internship and college tasks
- Resume / LinkedIn showcase
