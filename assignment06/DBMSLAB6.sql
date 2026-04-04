------------------------------------------PART A------------------------------------------
--------------QUESTION 01--------------
SELECT COUNT(*) AS Total_Students
   FROM Student;
--------------QUESTION 02--------------

 SELECT COUNT(*) AS Total_Faculty
      FROM Faculty;
--------------QUESTION 03--------------
SELECT COUNT(*) AS Total_Courses_Available
   FROM Course;
--------------QUESTION 04--------------
 SELECT MAX(Credits) AS Max_Credits
    FROM Course;
--------------QUESTION 05--------------
 SELECT MIN(Credits) AS Min_Credits
   FROM Course;
------------------------------------------PART B------------------------------------------
--------------QUESTION 06--------------

 SELECT DepartmentID,COUNT(*) AS No_Of_Students
  FROM Student
   GROUP BY DepartmentID;
--------------QUESTION 07--------------

SELECT DepartmentID, COUNT(*) AS No_Of_Faculty
   FROM Faculty
    GROUP BY DepartmentID;
--------------QUESTION 08--------------
 SELECT DepartmentID, COUNT(*) AS No_Of_Courses
   FROM Course
   GROUP BY DepartmentID;
--------------QUESTION 09--------------
 SELECT Semester, COUNT(*) AS Total_Enrollments
    FROM Enrollment
    GROUP BY Semester;
--------------QUESTION 10--------------
 SELECT Semester, COUNT(*) AS Total_Enrollments
   FROM Enrollment
   GROUP BY Grade;
------------------------------------------ PART C------------------------------------------
--------------QUESTION 11--------------
 SELECT Grade, COUNT(*) AS Total_Enrollments
    FROM Enrollment
    GROUP BY Grade;
--------------QUESTION 12--------------
 SELECT DepartmentID, COUNT(*) AS Total_Students
   FROM Student
   GROUP BY DepartmentID
  HAVING COUNT(*) > 3;
--------------QUESTION 13--------------
 SELECT Semester, COUNT(*) AS Total_Enrollments
 FROM Enrollment
 GROUP BY Semester
 HAVING COUNT(*) > 2;
--------------QUESTION 14--------------

 SELECT Grade, COUNT(*) AS Count_Grade
   FROM Enrollment
   GROUP BY Grade
   HAVING COUNT(*) > 1;
------------------------------------------ PART D------------------------------------------
--------------QUESTION 15--------------
 SELECT DepartmentID, COUNT(*) AS Total_Courses
   FROM Course
    GROUP BY DepartmentID
    HAVING COUNT(*) > 1;
-------------- QUESTION 16--------------
SQL> SELECT CourseID, COUNT(StudentID) AS Enrolled_Students
  2  FROM Enrollment
  3  GROUP BY CourseID;
-------------- QUESTION 16--------------
 SELECT c.CourseName, COUNT(e.StudentID) AS Enrolled_Students
   FROM Course c
   JOIN Enrollment e ON c.CourseID = e.CourseID
   GROUP BY c.CourseName;

COURSENAME                                                                                           ENROLLED_STUDENTS
---------------------------------------------------------------------------------------------------- -----------------
ELECTROMAGNETIC THEORY                                                                                               1
INDUSTRIAL ELECTRICAL SYSTEMS                                                                                        1
HYDRAULIC ENGINEERING                                                                                                1
COMPUTER NETWORK            

SQL> SELECT DepartmentID, COUNT(*) AS Total_Students
  2  FROM Student
  3  GROUP BY DepartmentID;

DEPARTMENT TOTAL_STUDENTS
---------- --------------
105                     2
157                     3
101                     1
103                     1
119                     1
118                     1
153                     1

7 rows selected.

SQL> SELECT f.FacultyID, COUNT(c.CourseID) AS Courses_Taught
  2  FROM Faculty f
  3  JOIN Course c ON f.FacultyID = c.FacultyID
  4  GROUP BY f.FacultyID;

FACULTYID  COURSES_TAUGHT
---------- --------------
1004                    2
1006                    1
1002                    1
1001                    1
1007                    1
1010                    2
1003                    1
1008                    1

8 rows selected.

SQL> SELECT c.CourseName, MAX(e.Grade) AS Max_Grade
  2  FROM Course c
  3  JOIN Enrollment e ON c.CourseID = e.CourseID
  4  GROUP BY c.CourseName;

COURSENAME                                                                                           MA
---------------------------------------------------------------------------------------------------- --
MACHINE LEARNING                                                                                     A
COMPILER DESIGN                                                                                      A+
ELECTROMAGNETIC THEORY                                                                               A
HYDRAULIC ENGINEERING                                                                                A-
OPERATING SYSTEMS                                                                                    B+
INDUSTRIAL ELECTRICAL SYSTEMS                                                                        A
COMPUTER NETWORK                                                                                     A+

7 rows selected.

SQL> SELECT DepartmentID, COUNT(*) AS Total_Courses
  2  FROM Course
  3  GROUP BY DepartmentID;

DEPARTMENT TOTAL_COURSES
---------- -------------
157                    4
101                    2
103                    2
118                    1
102                    1

SQL> SELECT Semester, COUNT(StudentID) AS Total_Students
  2  FROM Enrollment
  3  GROUP BY Semester;

SEMESTER             TOTAL_STUDENTS
-------------------- --------------
Semester 3                        5
Semester 4                        4
Semester 5                        1

SQL> SELECT c.CourseName, COUNT(e.StudentID) AS Total_Students
  2  FROM Course c
  3  JOIN Enrollment e ON c.CourseID = e.CourseID
  4  GROUP BY c.CourseName
  5  HAVING COUNT(e.StudentID) > 2;

COURSENAME                                                                                           TOTAL_STUDENTS
---------------------------------------------------------------------------------------------------- --------------
COMPUTER NETWORK                                                                                                  3

SQL> SAVE DBMSDBMSLAB6.sql
Created file DBMSDBMSLAB6.sql
SQL>
