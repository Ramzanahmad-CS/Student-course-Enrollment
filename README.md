# University Course Enrollment Management System

## Project Overview

This project is a simple **University Course Enrollment Management System** developed for a Database Systems lab assignment. The system manages:

* Student records
* Course records
* Instructor records
* Student course enrollments

The project is implemented using SQL and can be executed on MySQL-compatible platforms such as RunSQL.com, and MySQL Workbench.

## Database Schema

### 1. Students Table

Stores student information.

| Column Name | Data Type         |
| ----------- | ----------------- |
| StudentID   | INT (Primary Key) |
| StudentName | VARCHAR(100)      |
| Department  | VARCHAR(50)       |
| Semester    | INT               |

### 2. Courses Table

Stores course information.

| Column Name | Data Type         |
| ----------- | ----------------- |
| CourseID    | INT (Primary Key) |
| CourseName  | VARCHAR(100)      |
| CreditHours | INT               |

### 3. Instructors Table

Stores instructor information.

| Column Name    | Data Type         |
| -------------- | ----------------- |
| InstructorID   | INT (Primary Key) |
| InstructorName | VARCHAR(100)      |
| Specialization | VARCHAR(100)      |

### 4. Enrollments Table

Stores enrollment information and links students with courses and instructors.

| Column Name  | Data Type         |
| ------------ | ----------------- |
| EnrollmentID | INT (Primary Key) |
| StudentID    | INT (Foreign Key) |
| CourseID     | INT (Foreign Key) |
| InstructorID | INT (Foreign Key) |
| Semester     | VARCHAR(50)       |

## Relationships

* One Student can enroll in multiple courses.
* One Course can have multiple students.
* One Instructor can teach multiple courses.
* The Enrollments table acts as a bridge between Students, Courses, and Instructors.

## Sample Data

The database contains:

* 16 Students
* 8 Courses
* 8 Instructors
* 16 Enrollment Records

## SQL Queries Used

### Display All Students

sql query

SELECT * FROM Students;
+-----------+-----------------+------------+----------+
| StudentID | StudentName     | Department | Semester |
+-----------+-----------------+------------+----------+
|         1 | Ahmad           | BSCS       |        3 |
|         2 | Ali Raza        | BSIT       |        5 |
|         3 | Usman Ahmad     | BSCS       |        3 |
|         4 | Zeeshan Hammed  | BSIT       |        5 |
|         5 | Hassan Raza     | BSCS       |        2 |
|         6 | Sana Iqbal      | BSIT       |        4 |
|         7 | Ahmed Raza      | BSCS       |        2 |
|         8 | Hira Aslam      | BSIT       |        4 |
|         9 | Abdul Rehman    | BSCS       |        6 |
|        10 | Iqra Hassan     | BSIT       |        8 |
|        11 | Bilal Ahmed     | BSCS       |        6 |
|        12 | Maryam Khan     | BSIT       |        8 |
|        13 | Daniyal Hussain | BSCS       |        3 |
|        14 | Laiba Akram     | BSIT       |        1 |
|        15 | Farhan Ali      | BSCS       |        3 |
|        16 | Alishba Noor    | BSIT       |        1 |
+-----------+-----------------+------------+----------+


### Display All Courses

sql query
SELECT * FROM Courses;
+----------+--------------------------------+-------------+
| CourseID | CourseName                     | CreditHours |
+----------+--------------------------------+-------------+
|      101 | Database Systems               |           3 |
|      102 | Data Science                   |           2 |
|      103 | Data Structures and Algorithms |           3 |
|      104 | Aritifical Intelligence        |           5 |
|      105 | Software Engineering           |           3 |
|      106 | Programming Fundamental        |           2 |
|      107 | Object Oriented Programming    |           2 |
|      108 | Web Technology                 |           3 |
+----------+--------------------------------+-------------+

### Display All Instructors

sql query
SELECT * FROM Instructors;
+--------------+-------------------+--------------------------------+
| InstructorID | InstructorName    | Specialization                 |
+--------------+-------------------+--------------------------------+
|            1 | Dr.Saeed Rasheed  | Database Systems               |
|            2 | Mr.Samavia Khalid | Data Science                   |
|            3 | Mr.Saad Shahzad   | Data Structures and Algorithms |
|            4 | Dr.Khalid Hussain | Aritifical Intelligence        |
|            5 | Mr.Asad Hussian   | Software Engineering           |
|            6 | Mr.Shahbaz Ahmad  | Programming Fundamental        |
|            7 | Mr.Zubair Ahmad   | Object Oriented Programming    |
|            8 | Mr.Hamid Sannan   | Web Technology                 |
+--------------+-------------------+--------------------------------+


### Display All Enrollments

sql query
SELECT * FROM Enrollments;
+--------------+-----------+----------+--------------+-------------+
| EnrollmentID | StudentID | CourseID | InstructorID | Semester    |
+--------------+-----------+----------+--------------+-------------+
|            1 |         1 |      101 |            2 | Fall 2023   |
|            2 |         2 |      102 |            7 | Fall 2023   |
|            3 |         3 |      103 |            3 | Fall 2023   |
|            4 |         4 |      105 |            6 | Fall 2023   |
|            5 |         5 |      101 |            1 | Spring 2024 |
|            6 |         6 |      104 |            1 | Spring 2024 |
|            7 |         7 |      103 |            3 | Spring 2024 |
|            8 |         8 |      107 |            5 | Spring 2024 |
|            9 |         9 |      105 |            6 | Fall 2024   |
|           10 |        10 |      106 |            5 | Fall 2024   |
|           11 |        11 |      101 |            2 | Fall 2024   |
|           12 |        12 |      104 |            1 | Fall 2024   |
|           13 |        13 |      102 |            7 | Spring 2025 |
|           14 |        14 |      107 |            5 | Spring 2025 |
|           15 |        15 |      103 |            3 | Spring 2026 |
|           16 |        16 |      106 |            5 | Spring 2026 |
+--------------+-----------+----------+--------------+-------------+

### Student Course Report

sql Query
SELECT
    Students.StudentName,
    Courses.CourseName
FROM Enrollments
JOIN Students
ON Enrollments.StudentID = Students.StudentID
JOIN Courses
ON Enrollments.CourseID = Courses.CourseID;

+-----------------+--------------------------------+
| StudentName     | CourseName                     |
+-----------------+--------------------------------+
| Ahmad           | Database Systems               |
| Ali Raza        | Data Science                   |
| Usman Ahmad     | Data Structures and Algorithms |
| Zeeshan Hammed  | Software Engineering           |
| Hassan Raza     | Database Systems               |
| Sana Iqbal      | Aritifical Intelligence        |
| Ahmed Raza      | Data Structures and Algorithms |
| Hira Aslam      | Object Oriented Programming    |
| Abdul Rehman    | Software Engineering           |
| Iqra Hassan     | Programming Fundamental        |
| Bilal Ahmed     | Database Systems               |
| Maryam Khan     | Aritifical Intelligence        |
| Daniyal Hussain | Data Science                   |
| Laiba Akram     | Object Oriented Programming    |
| Farhan Ali      | Data Structures and Algorithms |
| Alishba Noor    | Programming Fundamental        |
+-----------------+--------------------------------+

## How to Run

1. Open RunSQL.com or any MySQL editor.
2. Copy the SQL script.
3. Execute the CREATE TABLE statements.
4. Insert the sample data using INSERT statements.
5. Run the SELECT queries to verify the records.

## Conclusion

This project demonstrates the implementation of a relational database system for managing students, courses, instructors, and enrollments. It uses primary keys, relationships, and SQL JOIN operations to retrieve meaningful information from multiple tables efficiently.
