CREATE TABLE Students (
  StudentID INT PRIMARY KEY,
  StudentName VARCHAR(100),
  Department VARCHAR(50),
  Semester INT
);

CREATE TABLE Courses (
  CourseID INT PRIMARY KEY,
  CourseName VARCHAR(100),
  CreditHours INT
);

CREATE TABLE Instructors (
  InstructorID INT PRIMARY KEY,
  InstructorName VARCHAR(100),
  Specialization VARCHAR(100)
);

CREATE TABLE Enrollments (
  EnrollmentID INT PRIMARY KEY,
  StudentID INT,
  CourseID INT,
  InstructorID INT,
  Semester VARCHAR(50)
);

INSERT INTO Students VALUES
(1,'Ahmad','BSCS',3),
(2,'Ali Raza','BSIT',5),
(3,'Usman Ahmad','BSCS',3),
(4,'Zeeshan Hammed','BSIT',5),
(5,'Hassan Raza','BSCS',2),
(6,'Sana Iqbal','BSIT',4),
(7,'Ahmed Raza','BSCS',2),
(8,'Hira Aslam','BSIT',4),
(9,'Abdul Rehman','BSCS',6),
(10,'Iqra Hassan','BSIT',8),
(11,'Bilal Ahmed','BSCS',6),
(12,'Maryam Fatima','BSIT',8),
(13,'Daniyal Hussain','BSCS',3),
(14,'Laiba Akram','BSIT',1),
(15,'Farhan Ali','BSCS',3),
(16,'Alishba Noor','BSIT',1);

INSERT INTO Courses VALUES
(101,'Database Systems',3),
(102,'Data Science',2),
(103,'Data Structures and Algorithms',3),
(104,'Aritifical Intelligence',5),
(105,'Software Engineering',3),
(106,'Programming Fundamental',2),
(107,'Object Oriented Programming',2),
(108,'Web Technology',3);

INSERT INTO Instructors VALUES
(1,'Dr.Saeed Rasheed','Database Systems'),
(2,'Mr.Samavia Khalid','Data Science'),
(3,'Mr.Saad Shahzad','Data Structures and Algorithms'),
(4,'Dr.Khalid Hussain','Aritifical Intelligence'),
(5,'Mr.Asad Hussian','Software Engineering'),
(6,'Mr.Shahbaz Ahmad','Programming Fundamental'),
(7,'Mr.Zubair Ahmad','Object Oriented Programming'),
(8,'Mr.Hamid Sannan','Web Technology');


INSERT INTO Enrollments VALUES
(1,1,101,2,'Fall 2023'),
(2,2,102,7,'Fall 2023'),
(3,3,103,3,'Fall 2023'),
(4,4,105,6,'Fall 2023'),

(5,5,101,1,'Spring 2024'),
(6,6,104,1,'Spring 2024'),
(7,7,103,3,'Spring 2024'),
(8,8,107,5,'Spring 2024'),

(9,9,105,6,'Fall 2024'),
(10,10,106,5,'Fall 2024'),
(11,11,101,2,'Fall 2024'),
(12,12,104,1,'Fall 2024'),

(13,13,102,7,'Spring 2025'),
(14,14,107,5,'Spring 2025'),

(15,15,103,3,'Spring 2026'),
(16,16,106,5,'Spring 2026');

SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Instructors;
SELECT * FROM Enrollments;
SELECT
    Students.StudentName,
    Courses.CourseName
FROM Enrollments
JOIN Students
ON Enrollments.StudentID = Students.StudentID
JOIN Courses
ON Enrollments.CourseID = Courses.CourseID;