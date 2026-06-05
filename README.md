# Students Course Enrollment System

## Project Overview

This project is a simple **Student Course Enrollment System** developed for a Database Systems lab assignment. The system manages:

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

#Sample Data:

The database contains:

* 16 Students
* 8 Courses
* 8 Instructors
* 16 Enrollment Records

## SQL Queries Used

### Display All Students:

sql query
SELECT * FROM Students;


### Display All Courses:

sql query
SELECT * FROM Courses;



### Display All Instructors

sql query
SELECT * FROM Instructors;

### Display All Enrollments

sql query
SELECT * FROM Enrollments;


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

## How to Run

1. Open RunSQL.com or any MySQL editor.
2. Copy the SQL script.
3. Execute the CREATE TABLE statements.
4. Insert the sample data using INSERT statements.
5. Run the SELECT queries to verify the records.

## Conclusion

This project demonstrates the implementation of a relational database system for managing students, courses, instructors, and enrollments. It uses primary keys, relationships, and SQL JOIN operations to retrieve meaningful information from multiple tables efficiently.
