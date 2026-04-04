SELECT COUNT(*) AS Total_Students
  2    FROM Student;

TOTAL_STUDENTS
--------------
            10

SQL> SELECT COUNT(*) AS Total_Faculty
  2    FROM Faculty;

TOTAL_FACULTY
-------------
           10

SQL> SELECT COUNT(*) AS Total_Courses_Available
  2    FROM Course;

TOTAL_COURSES_AVAILABLE
-----------------------
                     10

SQL> SELECT MAX(Credits) AS Max_Credits
  2    FROM Course;

MAX_CREDITS
-----------
          4

SQL> SELECT MIN(Credits) AS Min_Credits
  2  FROM Course;

MIN_CREDITS
-----------
          3

SQL> SELECT Department_ID,COUNT(*) AS No_Of_Students
  2    FROM Student
  3    GROUP BY Department_ID;
  GROUP BY Department_ID
           *
ERROR at line 3:
ORA-00904: "DEPARTMENT_ID": invalid identifier


SQL> SELECT DepartmentID,COUNT(*) AS No_Of_Students
  2    FROM Student
  3    GROUP BY DepartmentID;

DEPARTMENT NO_OF_STUDENTS
---------- --------------
105                     2
157                     3
101                     1
103                     1
119                     1
118                     1
153                     1

7 rows selected.

SQL> SELECT DepartmentID, COUNT(*) AS No_Of_Faculty
  2  FROM Faculty
  3  GROUP BY DepartmentID;

DEPARTMENT NO_OF_FACULTY
---------- -------------
105                    1
157                    2
118                    1
153                    1
101                    2
119                    1
102                    1
103                    1

8 rows selected.

SQL> SELECT DepartmentID, COUNT(*) AS No_Of_Courses
  2  FROM Course
  3  GROUP BY DepartmentID;

DEPARTMENT NO_OF_COURSES
---------- -------------
157                    4
101                    2
103                    2
118                    1
102                    1

SQL> SELECT Semester, COUNT(*) AS Total_Enrollments
  2  FROM Enrollment
  3  GROUP BY Semester;

SEMESTER             TOTAL_ENROLLMENTS
-------------------- -----------------
Semester 3                           5
Semester 4                           4
Semester 5                           1

SQL> SELECT Semester, COUNT(*) AS Total_Enrollments
  2  FROM Enrollment
  3  GROUP BY Grade;
SELECT Semester, COUNT(*) AS Total_Enrollments
       *
ERROR at line 1:
ORA-00979: not a GROUP BY expression


SQL> SELECT Grade, COUNT(*) AS Total_Enrollments
  2  FROM Enrollment
  3  GROUP BY Grade;

GR TOTAL_ENROLLMENTS
-- -----------------
A                  6
A+                 2
A-                 1
B+                 1

SQL> SELECT DepartmentID, COUNT(*) AS Total_Students
  2  FROM Student
  3  GROUP BY DepartmentID
  4  HAVING COUNT(*) > 3;

no rows selected

SQL> SELECT Semester, COUNT(*) AS Total_Enrollments
  2  FROM Enrollment
  3  GROUP BY Semester
  4  HAVING COUNT(*) > 2;

SEMESTER             TOTAL_ENROLLMENTS
-------------------- -----------------
Semester 3                           5
Semester 4                           4

SQL> SELECT Grade, COUNT(*) AS Count_Grade
  2  FROM Enrollment
  3  GROUP BY Grade
  4  HAVING COUNT(*) > 1;

GR COUNT_GRADE
-- -----------
A            6
A+           2

SQL> SELECT Department_ID, COUNT(*) AS Total_Courses
  2  FROM Course
  3  GROUP BY Department_ID
  4
SQL> SELECT DepartmentID, COUNT(*) AS Total_Courses
  2  FROM Course
  3  GROUP BY DepartmentID
  4  HAVING COUNT(*) > 1;

DEPARTMENT TOTAL_COURSES
---------- -------------
157                    4
101                    2
103                    2

SQL> SELECT CourseID, COUNT(StudentID) AS Enrolled_Students
  2  FROM Enrollment
  3  GROUP BY CourseID;

COURSEID   ENROLLED_STUDENTS
---------- -----------------
103404                     1
103606                     1
101504                     1
157503                     3
157601                     2
157504                     1
105403                     1

7 rows selected.

SQL> SELECT c.CourseName, COUNT(e.Student_D) AS Enrolled_Students
  2  FROM Course c
  3  JOIN Enrollment e ON c.CourseID = e.CourseID
  4  GROUP BY c.CourseName;
SELECT c.CourseName, COUNT(e.Student_D) AS Enrolled_Students
                           *
ERROR at line 1:
ORA-00904: "E"."STUDENT_D": invalid identifier


SQL> SELECT c.CourseName, COUNT(e.StudentD) AS Enrolled_Students
  2  FROM Course c
  3  JOIN Enrollment e ON c.CourseID = e.CourseID
  4  GROUP BY c.CourseName;
SELECT c.CourseName, COUNT(e.StudentD) AS Enrolled_Students
                           *
ERROR at line 1:
ORA-00904: "E"."STUDENTD": invalid identifier


SQL> SELECT c.CourseName, COUNT(e.StudentID) AS Enrolled_Students
  2  FROM Course c
  3  JOIN Enrollment e ON c.CourseID = e.CourseID
  4  GROUP BY c.CourseName;

COURSENAME
--------------------------------------------------------------------------------
ENROLLED_STUDENTS
-----------------
ELECTROMAGNETIC THEORY
                1

INDUSTRIAL ELECTRICAL SYSTEMS
                1

HYDRAULIC ENGINEERING
                1


COURSENAME
--------------------------------------------------------------------------------
ENROLLED_STUDENTS
-----------------
COMPUTER NETWORK
                3

COMPILER DESIGN
                2

MACHINE LEARNING
                1


COURSENAME
--------------------------------------------------------------------------------
ENROLLED_STUDENTS
-----------------
OPERATING SYSTEMS
                1


7 rows selected.

SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SET WRAP OFFSELECT c.CourseName, COUNT(e.StudentID) AS Enrolled_Students
SP2-0265: wrap must be set ON or OFF
SQL> FROM Course c
SP2-0734: unknown command beginning "FROM Cours..." - rest of line ignored.
SQL> JOIN Enrollment e ON c.CourseID = e.CourseID
SP2-0734: unknown command beginning "JOIN Enrol..." - rest of line ignored.
SQL> GROUP BY c.Course_Name;
SP2-0734: unknown command beginning "GROUP BY c..." - rest of line ignored.
SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SET WRAP OFF
SQL> SELECT c.CourseName, COUNT(e.StudentID) AS Enrolled_Students
  2  FROM Course c
  3  JOIN Enrollment e ON c.CourseID = e.CourseID
  4  GROUP BY c.CourseName;

COURSENAME                                                                                           ENROLLED_STUDENTS
---------------------------------------------------------------------------------------------------- -----------------
ELECTROMAGNETIC THEORY                                                                                               1
INDUSTRIAL ELECTRICAL SYSTEMS                                                                                        1
HYDRAULIC ENGINEERING                                                                                                1
COMPUTER NETWORK                                                                                                     3
COMPILER DESIGN                                                                                                      2
MACHINE LEARNING                                                                                                     1
OPERATING SYSTEMS                                                                                                    1

7 rows selected.

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
