
SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SET WRAP OFF
SQL>  SELECT
  2     S.StudentID,
  3     S.Name,
  4     E.CourseID
  5     FROM Student S
  6     INNER JOIN Enrollment E
  7     ON S.StudentID=E.StudentID;

STUDENTID  NAME                                                                                                 COURSEID
---------- ---------------------------------------------------------------------------------------------------- ----------
23103      MITTAL PRASAD                                                                                        103404
23103      MITTAL PRASAD                                                                                        103606
23110      Sonu Kumar                                                                                           101504
23711      Kunal Kumar                                                                                          157503
23711      Kunal Kumar                                                                                          157601
23725      Nikhil Raj                                                                                           157503
23725      Nikhil Raj                                                                                           157601
23741      VIJAY KUMAR                                                                                          157503
23741      VIJAY KUMAR                                                                                          157504
23802      AMAN KUMAR                                                                                           105403

10 rows selected.

SQL> SELECT
  2  S.Name,
  3  E.semester
  4  FROM Student S
  5  INNER JOIN Enrollment E
  6  ON S.StudentID=E.StudentID;

NAME                                                                                                 SEMESTER
---------------------------------------------------------------------------------------------------- --------------------
VIJAY KUMAR                                                                                          Semester 3
Kunal Kumar                                                                                          Semester 3
MITTAL PRASAD                                                                                        Semester 4
Sonu Kumar                                                                                           Semester 5
AMAN KUMAR                                                                                           Semester 4
MITTAL PRASAD                                                                                        Semester 3
VIJAY KUMAR                                                                                          Semester 4
Nikhil Raj                                                                                           Semester 4
Kunal Kumar                                                                                          Semester 3
Nikhil Raj                                                                                           Semester 3

10 rows selected.

SQL> SELECT
  2  S.Name,
  3  E.Grade
  4  FROM Student S
  5  INNER JOIN Enrollment E
  6  ON S.StudentID=E.StudentID;

NAME                                                                                                 GR
---------------------------------------------------------------------------------------------------- --
VIJAY KUMAR                                                                                          A
Kunal Kumar                                                                                          A+
MITTAL PRASAD                                                                                        A
Sonu Kumar                                                                                           A-
AMAN KUMAR                                                                                           B+
MITTAL PRASAD                                                                                        A
VIJAY KUMAR                                                                                          A+
Nikhil Raj                                                                                           A
Kunal Kumar                                                                                          A
Nikhil Raj                                                                                           A

10 rows selected.

SQL> SELECT
  2  C.Name,
  3  C.Credits,
  4  F.Name AS Faculty_Name
  5  FROM Course C
  6  INNER JOIN Faculty Faculty F
  7  ON C.FacultyID=FacultyID;
INNER JOIN Faculty Faculty F
                           *
ERROR at line 6:
ORA-00905: missing keyword


SQL> SELECT
  2  C.Name,
  3  C.Credits,
  4  F.Name AS Faculty_Name
  5  FROM Course C
  6  INNER JOIN Faculty F
  7  ON C.FacultyID=F.FacultyID;
C.Name,
*
ERROR at line 2:
ORA-00904: "C"."NAME": invalid identifier


SQL> SELECT
  2  C.CourseName,
  3  C.Credits,
  4  F.Name AS Faculty_Name
  5  FROM Course C
  6  INNER JOIN Faculty F
  7  ON C.FacultyID;
ON C.FacultyID
             *
ERROR at line 7:
ORA-00920: invalid relational operator


SQL> SELECT
  2  C.CourseName,
  3  C.Credits,
  4  F.Name AS Faculty_Name
  5  FROM Course C
  6  INNER JOIN Faculty F
  7  ON C.FacultyID=F.FacultyID;

COURSENAME                                                                                              CREDITS FACULTY_NAME
---------------------------------------------------------------------------------------------------- ---------- ----------------------------------------------------------------------------------------
COMPILER DESIGN                                                                                               4 Prof. Murlidhar Prasad Singh
COMPUTER NETWORK                                                                                              3 Prof. Arun Kumar
OPERATING SYSTEMS                                                                                             4 Prof. Manisha Kumari Singh
DBMS                                                                                                          3 Prof. Sujeet Kumar
MACHINE LEARNING                                                                                              3 Prof. Sujeet Kumar
Fluid Mechanics                                                                                               3 Prof. Nishikant Kumar
HYDRAULIC ENGINEERING                                                                                         4 Prof. Vicky Anand
Engineering Mechanics                                                                                         4 Prof. Arvind Kumar Amar
ELECTROMAGNETIC THEORY                                                                                        3 Prof. Mithlesh Kumar
INDUSTRIAL ELECTRICAL SYSTEMS                                                                                 4 Prof. Mithlesh Kumar

10 rows selected.

SQL> SELECT
  2  S.Name,
  3  E.Grade
  4  FROM Student S
  5  INNER JOIN Enrollment E
  6  ON S.StudentID=E.StudentID;

NAME                                                                                                 GR
---------------------------------------------------------------------------------------------------- --
VIJAY KUMAR                                                                                          A
Kunal Kumar                                                                                          A+
MITTAL PRASAD                                                                                        A
Sonu Kumar                                                                                           A-
AMAN KUMAR                                                                                           B+
MITTAL PRASAD                                                                                        A
VIJAY KUMAR                                                                                          A+
Nikhil Raj                                                                                           A
Kunal Kumar                                                                                          A
Nikhil Raj                                                                                           A

10 rows selected.

SQL> SELECT
  2  CourseName FROM Course
  3  WHERE Faculty_ID='1006';
WHERE Faculty_ID='1006'
      *
ERROR at line 3:
ORA-00904: "FACULTY_ID": invalid identifier


SQL> SELECT
  2  CourseName FROM Course
  3  WHERE FacultyID='1006';

COURSENAME
----------------------------------------------------------------------------------------------------
Fluid Mechanics

SQL> SELECT
  2  F.Name,
  3  F.Designation,
  4  C.Course_Name
  5  FROM Faculty F
  6  INNER JOIN Course C
  7  ON F.FacultyID=C.FacultyID;
C.Course_Name
*
ERROR at line 4:
ORA-00904: "C"."COURSE_NAME": invalid identifier


SQL> SELECT
  2  F.Name,
  3  F.Designation,
  4  C.CourseName
  5  FROM Faculty F
  6  INNER JOIN Course C
  7  ON F.FacultyID=C.FacultyID;

NAME                                                                                                 DESIGNATION                                        COURSENAME
---------------------------------------------------------------------------------------------------- -------------------------------------------------- ------------------------------------------------
Prof. Sujeet Kumar                                                                                   Assistant Professor                                DBMS
Prof. Nishikant Kumar                                                                                Assistant Professor                                Fluid Mechanics
Prof. Arun Kumar                                                                                     Assistant Professor(Guest)                         COMPUTER NETWORK
Prof. Murlidhar Prasad Singh                                                                         Assistant Professor and HOD                        COMPILER DESIGN
Prof. Sujeet Kumar                                                                                   Assistant Professor                                MACHINE LEARNING
Prof. Vicky Anand                                                                                    Assistant Professor                                HYDRAULIC ENGINEERING
Prof. Mithlesh Kumar                                                                                 Assistant Professor and HOD                        ELECTROMAGNETIC THEORY
Prof. Manisha Kumari Singh                                                                           Assistant Professor                                OPERATING SYSTEMS
Prof. Arvind Kumar Amar                                                                              Associate Professor and Principal in Incharge      Engineering Mechanics
Prof. Mithlesh Kumar                                                                                 Assistant Professor and HOD                        INDUSTRIAL ELECTRICAL SYSTEMS

10 rows selected.

SQL> SELECT
  2  S.Name,
  3  C.CourseName
  4  FROM Student S
  5  INNER JOIN Enrollment E ON S.StudentID = E.StudentID
  6  INNER JOIN Course C ON E.CourseID = C.CourseID;

NAME                                                                                                 COURSENAME
---------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------
Kunal Kumar                                                                                          COMPUTER NETWORK
Nikhil Raj                                                                                           COMPUTER NETWORK
VIJAY KUMAR                                                                                          COMPUTER NETWORK
Kunal Kumar                                                                                          COMPILER DESIGN
Nikhil Raj                                                                                           COMPILER DESIGN
VIJAY KUMAR                                                                                          MACHINE LEARNING
Sonu Kumar                                                                                           HYDRAULIC ENGINEERING
MITTAL PRASAD                                                                                        ELECTROMAGNETIC THEORY
AMAN KUMAR                                                                                           OPERATING SYSTEMS
MITTAL PRASAD                                                                                        INDUSTRIAL ELECTRICAL SYSTEMS

10 rows selected.

SQL> SELECT
  2  S.Name,
  3  C.CourseName,
  4  E.Grade
  5  FROM Student S
  6  INNER JOIN Enrollment E ON S.StudentID = E.StudentID
  7  INNER JOIN Course C ON E.CourseID = C.CourseID
  8  WHERE E.Semester = '4th';
rows will be truncated


no rows selected

SQL> SELECT
  2  C.CourseName
  3  FROM Enrollment E
  4  INNER JOIN Course C
  5  ON E.CourseID = C.CourseID
  6  WHERE E.StudentID =23157128023;

no rows selected

SQL> SELECT
  2  S.Name,
  3  C.CourseName,
  4  E.Grade
  5  FROM Student S
  6  INNER JOIN Enrollment E ON S.StudentID = E.StudentID
  7  INNER JOIN Course C ON E.CourseID = C.CourseID
  8  WHERE E.Semester = 'Semester 4';
rows will be truncated


NAME                                                                                                 COURSENAME
---------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------
Nikhil Raj                                                                                           COMPUTER NETWORK
VIJAY KUMAR                                                                                          COMPUTER NETWORK
MITTAL PRASAD                                                                                        ELECTROMAGNETIC THEORY
AMAN KUMAR                                                                                           OPERATING SYSTEMS

SQL> SELECT
  2  C.CourseName
  3  FROM Enrollment E
  4  INNER JOIN Course C
  5  ON E.CourseID = C.CourseID
  6  WHERE E.StudentID =23741;

COURSENAME
----------------------------------------------------------------------------------------------------
COMPUTER NETWORK
MACHINE LEARNING

SQL> SELECT
  2  S.Name,
  3  S.DepartmentID,
  4  C.CourseName
  5  FROM Student S
  6  INNER JOIN Enrollment E ON S.StudentID = E.StudentID
  7  INNER JOIN Course C ON E.CourseID = C.CourseID;

NAME                                                                                                 DEPARTMENT COURSENAME
---------------------------------------------------------------------------------------------------- ---------- ----------------------------------------------------------------------------------------
Kunal Kumar                                                                                          157        COMPUTER NETWORK
Nikhil Raj                                                                                           157        COMPUTER NETWORK
VIJAY KUMAR                                                                                          157        COMPUTER NETWORK
Kunal Kumar                                                                                          157        COMPILER DESIGN
Nikhil Raj                                                                                           157        COMPILER DESIGN
VIJAY KUMAR                                                                                          157        MACHINE LEARNING
Sonu Kumar                                                                                           101        HYDRAULIC ENGINEERING
MITTAL PRASAD                                                                                        103        ELECTROMAGNETIC THEORY
AMAN KUMAR                                                                                           118        OPERATING SYSTEMS
MITTAL PRASAD                                                                                        103        INDUSTRIAL ELECTRICAL SYSTEMS

10 rows selected.

SQL> SELECT
  2  D.DepartmentName,
  3  C.CourseName
  4  FROM Department D
  5  INNER JOIN Course C
  6  ON D.DepartmentID = C.DepartmentID;

DEPARTMENTNAME                                                                                       COURSENAME
---------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------
CSE(AIML)                                                                                            DBMS
CE                                                                                                   Fluid Mechanics
CSE(AIML)                                                                                            COMPUTER NETWORK
CSE(AIML)                                                                                            COMPILER DESIGN
CSE(AIML)                                                                                            MACHINE LEARNING
CE                                                                                                   HYDRAULIC ENGINEERING
EEE                                                                                                  ELECTROMAGNETIC THEORY
3-DAG                                                                                                OPERATING SYSTEMS
ME                                                                                                   Engineering Mechanics
EEE                                                                                                  INDUSTRIAL ELECTRICAL SYSTEMS

10 rows selected.

SQL> SELECT
  2  F.Name,
  3  D.DepartmentName
  4  FROM Faculty F
  5  INNER JOIN Department D
  6  ON F.DepartmentID = D.DepartmentID;

NAME                                                                                                 DEPARTMENTNAME
---------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------
Prof. Nishikant Kumar                                                                                CE
Prof. Akhilesh Kumar                                                                                 CE
Prof. Arun Kumar                                                                                     CSE(AIML)
Prof. Sujeet Kumar                                                                                   CSE(AIML)
Prof. Murlidhar Prasad Singh                                                                         CSE
Prof. Mithlesh Kumar                                                                                 EEE
Prof. Arvind Kumar Amar                                                                              ME
Prof. Manisha Kumari Singh                                                                           3-DAG
Prof. Vicky Anand                                                                                    CEWCA
Prof. Praveen Kumar                                                                                  DATA SCIENCE

10 rows selected.

SQL> SELECT
  2  S.Name,
  3  C.CourseName
  4  FROM Student S
  5  INNER JOIN Enrollment E ON S.StudentID = E.StudentID
  6  INNER JOIN Course C ON E.CourseID = C.CourseID
  7  WHERE S.DepartmentID = 157;

NAME                                                                                                 COURSENAME
---------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------
Nikhil Raj                                                                                           COMPUTER NETWORK
Nikhil Raj                                                                                           COMPILER DESIGN
Kunal Kumar                                                                                          COMPUTER NETWORK
Kunal Kumar                                                                                          COMPILER DESIGN
VIJAY KUMAR                                                                                          COMPUTER NETWORK
VIJAY KUMAR                                                                                          MACHINE LEARNING

6 rows selected.

SQL> SELECT
  2  S.Name,
  3  C.CourseName
  4  FROM Student S
  5  INNER JOIN Enrollment E ON S.StudentID = E.StudentID
  6  INNER JOIN Course C ON E.CourseID = C.CourseID
  7  ORDER BY S.Name ASC;

NAME                                                                                                 COURSENAME
---------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------
AMAN KUMAR                                                                                           OPERATING SYSTEMS
Kunal Kumar                                                                                          COMPUTER NETWORK
Kunal Kumar                                                                                          COMPILER DESIGN
MITTAL PRASAD                                                                                        ELECTROMAGNETIC THEORY
MITTAL PRASAD                                                                                        INDUSTRIAL ELECTRICAL SYSTEMS
Nikhil Raj                                                                                           COMPUTER NETWORK
Nikhil Raj                                                                                           COMPILER DESIGN
Sonu Kumar                                                                                           HYDRAULIC ENGINEERING
VIJAY KUMAR                                                                                          MACHINE LEARNING
VIJAY KUMAR                                                                                          COMPUTER NETWORK

10 rows selected.

SQL> SELECT
  2  F.Name,
  3  C.CourseName,
  4  C.Credits
  5  FROM Faculty F
  6  INNER JOIN Course C
  7  ON F.FacultyID = C.FacultyID
  8  ORDER BY C.Credits DESC;
rows will be truncated


NAME                                                                                                 COURSENAME
---------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------
Prof. Arvind Kumar Amar                                                                              Engineering Mechanics
Prof. Manisha Kumari Singh                                                                           OPERATING SYSTEMS
Prof. Murlidhar Prasad Singh                                                                         COMPILER DESIGN
Prof. Vicky Anand                                                                                    HYDRAULIC ENGINEERING
Prof. Mithlesh Kumar                                                                                 INDUSTRIAL ELECTRICAL SYSTEMS
Prof. Mithlesh Kumar                                                                                 ELECTROMAGNETIC THEORY
Prof. Arun Kumar                                                                                     COMPUTER NETWORK
Prof. Nishikant Kumar                                                                                Fluid Mechanics
Prof. Sujeet Kumar                                                                                   DBMS
Prof. Sujeet Kumar                                                                                   MACHINE LEARNING

10 rows selected.

SQL> SELECT
  2  C.CourseName,
  3  COUNT(E.StudentID) AS Total_Students
  4  FROM Course C
  5  INNER JOIN Enrollment E
  6  ON C.CourseID = E.CourseID
  7  GROUP BY C.CourseName;

COURSENAME                                                                                           TOTAL_STUDENTS
---------------------------------------------------------------------------------------------------- --------------
ELECTROMAGNETIC THEORY                                                                                            1
INDUSTRIAL ELECTRICAL SYSTEMS                                                                                     1
HYDRAULIC ENGINEERING                                                                                             1
COMPUTER NETWORK                                                                                                  3
COMPILER DESIGN                                                                                                   2
MACHINE LEARNING                                                                                                  1
OPERATING SYSTEMS                                                                                                 1

7 rows selected.

SQL> SELECT
  2  F.Name,
  3  COUNT(C.CourseID) AS Total_Courses
  4  FROM Faculty F
  5  INNER JOIN Course C
  6  ON F.FacultyID = C.FacultyID
  7  GROUP BY F.Name;

NAME                                                                                                 TOTAL_COURSES
---------------------------------------------------------------------------------------------------- -------------
Prof. Sujeet Kumar                                                                                               2
Prof. Nishikant Kumar                                                                                            1
Prof. Arun Kumar                                                                                                 1
Prof. Murlidhar Prasad Singh                                                                                     1
Prof. Vicky Anand                                                                                                1
Prof. Mithlesh Kumar                                                                                             2
Prof. Manisha Kumari Singh                                                                                       1
Prof. Arvind Kumar Amar                                                                                          1

8 rows selected.

SQL> SELECT
  2  D.Department_Name,
  3  COUNT(S.Student_ID) AS Total_Students
  4  FROM Department D
  5  INNER JOIN Student S
  6  ON D.DepartmentID = S.DepartmentID
  7  GROUP BY D.DepartmentName;
COUNT(S.Student_ID) AS Total_Students
      *
ERROR at line 3:
ORA-00904: "S"."STUDENT_ID": invalid identifier


SQL> SELECT
  2  D.DepartmentName,
  3  COUNT(S.StudentID) AS Total_Students
  4  FROM Department D
  5  INNER JOIN Student S
  6  ON D.DepartmentID = S.DepartmentID
  7  GROUP BY D.DepartmentName;

DEPARTMENTNAME                                                                                       TOTAL_STUDENTS
---------------------------------------------------------------------------------------------------- --------------
CSE                                                                                                               2
CSE(AIML)                                                                                                         3
CE                                                                                                                1
EEE                                                                                                               1
CEWCA                                                                                                             1
3-DAG                                                                                                             1
DATA SCIENCE                                                                                                      1

7 rows selected.

SQL> SELECT
  2  C.CourseName,
  3  MAX(E.Grade) AS Max_Grade
  4  FROM Course C
  5  INNER JOIN Enrollment E
  6  ON C.CourseID = E.CourseID
  7  GROUP BY C.CourseName;

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

SQL> SAVE DBMSDBMSLAB5.sql
Created file DBMSDBMSLAB5.sql
SQL>
