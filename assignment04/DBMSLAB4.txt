
SQL> SELECT
  2  StudentID AS Roll_No,
  3  Name AS Student_Name,
  4  Gender AS Gender,
  5  DateOfBirth AS Date_Of_Birth,
  6  DepartmentID AS Dept_ID
  7  FROM Student;

ROLL_NO
----------
STUDENT_NAME
--------------------------------------------------------------------------------
G DATE_OF_B DEPT_ID
- --------- ----------
23449
Nitish Kumar
M 12-SEP-05 105

23725
Nikhil Raj
M 12-SEP-05 157

ROLL_NO
----------
STUDENT_NAME
--------------------------------------------------------------------------------
G DATE_OF_B DEPT_ID
- --------- ----------

23711
Kunal Kumar
M 05-SEP-04 157

23110
Sonu Kumar

ROLL_NO
----------
STUDENT_NAME
--------------------------------------------------------------------------------
G DATE_OF_B DEPT_ID
- --------- ----------
M 08-AUG-03 101

23103
MITTAL PRASAD
M 22-NOV-03 103

23403

ROLL_NO
----------
STUDENT_NAME
--------------------------------------------------------------------------------
G DATE_OF_B DEPT_ID
- --------- ----------
Geeta Kumari
F 12-SEP-05 105

23609
RISHI RANJAN
M 16-JUL-03 119


ROLL_NO
----------
STUDENT_NAME
--------------------------------------------------------------------------------
G DATE_OF_B DEPT_ID
- --------- ----------
23802
AMAN KUMAR
M 01-JAN-03 118

23741
VIJAY KUMAR
M 05-JAN-03 157

ROLL_NO
----------
STUDENT_NAME
--------------------------------------------------------------------------------
G DATE_OF_B DEPT_ID
- --------- ----------

23901
Monika Srivatsva
F 28-MAR-03 153


10 rows selected.

SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SET WRAP OFF
SQL> SELECT
  2   StudentID AS Roll_No,
  3   Name AS Student_Name,
  4   Gender AS Gender,
  5    DateOfBirth AS Date_Of_Birth,
  6    DepartmentID AS Dept_ID
  7    FROM Student;

ROLL_NO    STUDENT_NAME                                                                                         G DATE_OF_B DEPT_ID
---------- ---------------------------------------------------------------------------------------------------- - --------- ----------
23449      Nitish Kumar                                                                                         M 12-SEP-05 105
23725      Nikhil Raj                                                                                           M 12-SEP-05 157
23711      Kunal Kumar                                                                                          M 05-SEP-04 157
23110      Sonu Kumar                                                                                           M 08-AUG-03 101
23103      MITTAL PRASAD                                                                                        M 22-NOV-03 103
23403      Geeta Kumari                                                                                         F 12-SEP-05 105
23609      RISHI RANJAN                                                                                         M 16-JUL-03 119
23802      AMAN KUMAR                                                                                           M 01-JAN-03 118
23741      VIJAY KUMAR                                                                                          M 05-JAN-03 157
23901      Monika Srivatsva                                                                                     F 28-MAR-03 153

10 rows selected.

SQL> SELECT
  2   StudentID AS Roll_No,
  3   Name AS Student_Name,
  4   Gender AS Gender,
  5    DateOfBirth AS Date_Of_Birth,
  6   ContactNumber AS Contact_No,
  7  DepartmentID AS Dept_ID
  8  FROM Student;

ROLL_NO    STUDENT_NAME                                                                                         G DATE_OF_B CONTACT_NO      DEPT_ID
---------- ---------------------------------------------------------------------------------------------------- - --------- --------------- ----------
23449      Nitish Kumar                                                                                         M 12-SEP-05 9123856786      105
23725      Nikhil Raj                                                                                           M 12-SEP-05 9143673623      157
23711      Kunal Kumar                                                                                          M 05-SEP-04 9988222414      157
23110      Sonu Kumar                                                                                           M 08-AUG-03 8545665968      101
23103      MITTAL PRASAD                                                                                        M 22-NOV-03 6421444484      103
23403      Geeta Kumari                                                                                         F 12-SEP-05 9123587786      105
23609      RISHI RANJAN                                                                                         M 16-JUL-03 9165945145      119
23802      AMAN KUMAR                                                                                           M 01-JAN-03 8151511582      118
23741      VIJAY KUMAR                                                                                          M 05-JAN-03 8151517898      157
23901      Monika Srivatsva                                                                                     F 28-MAR-03 9430508899      153

10 rows selected.

SQL> SELECT
  2  StudentID AS Roll_No,
  3  Name AS Student_Name,
  4  DepartmentID AS Dept_ID
  5  FROM Student;

ROLL_NO    STUDENT_NAME                                                                                         DEPT_ID
---------- ---------------------------------------------------------------------------------------------------- ----------
23449      Nitish Kumar                                                                                         105
23725      Nikhil Raj                                                                                           157
23711      Kunal Kumar                                                                                          157
23110      Sonu Kumar                                                                                           101
23103      MITTAL PRASAD                                                                                        103
23403      Geeta Kumari                                                                                         105
23609      RISHI RANJAN                                                                                         119
23802      AMAN KUMAR                                                                                           118
23741      VIJAY KUMAR                                                                                          157
23901      Monika Srivatsva                                                                                     153

10 rows selected.

SQL> SELECT
  2  FacultyID AS Faculty_ID,
  3  Name AS Faculty_Name,
  4  Designation AS Job_Title,
  5  Email AS Email_ID
  6  FROM Faculty;

FACULTY_ID FACULTY_NAME                                                                                         JOB_TITLE                                     EMAIL_ID
---------- ---------------------------------------------------------------------------------------------------- -------------------------------------------------- -------------------------------------
1001       Prof. Murlidhar Prasad Singh                                                                         Assistant Professor and HOD                   singhmurlidhar@gmail.com
1002       Prof. Arun Kumar                                                                                     Assistant Professor(Guest)                    arunkr75@gmail.com
1003       Prof. Manisha Kumari Singh                                                                           Assistant Professor                           manisha.ks241@gmail.com
1004       Prof. Sujeet Kumar                                                                                   Assistant Professor                           ksujeet.cs@gmail.com
1005       Prof. Praveen Kumar                                                                                  Assistant Professor                           praveenkumaryadav782@gmail.com
1006       Prof. Nishikant Kumar                                                                                Assistant Professor                           nishikantbpmce32@gmail.com
1007       Prof. Vicky Anand                                                                                    Assistant Professor                           Vickya.pg18@Nitp.ac.in
1008       Prof. Arvind Kumar Amar                                                                              Associate Professor and Principal in Incharge          ak_amar73@yahoo.com
1009       Prof. Akhilesh Kumar                                                                                 Assistant Professor                           akhileshkumar3804@gmail.com
1010       Prof. Mithlesh Kumar                                                                                 Assistant Professor and HOD                   bpmceeee110@gmail.com

10 rows selected.

SQL> SET LINESIZE 200
SQL>  SET PAGESIZE 100
SQL>  SET WRAP OFF
SQL> SELECT
  2  CourseID AS Course_ID,
  3  CourseName AS Course_Name,
  4  Credits AS Credit_Score,
  5  DepartmentID AS Dept_ID,
  6  FacultyID AS Faculty_ID
  7  FROM Course;

COURSE_ID  COURSE_NAME                                                                                          CREDIT_SCORE DEPT_ID    FACULTY_ID
---------- ---------------------------------------------------------------------------------------------------- ------------ ---------- ----------
157501     DBMS                                                                                                            3 157        1004
162301     Fluid Mechanics                                                                                                 3 101        1006
157503     COMPUTER NETWORK                                                                                                3 157        1002
157601     COMPILER DESIGN                                                                                                 4 157        1001
157504     MACHINE LEARNING                                                                                                3 157        1004
101504     HYDRAULIC ENGINEERING                                                                                           4 101        1007
103404     ELECTROMAGNETIC THEORY                                                                                          3 103        1010
105403     OPERATING SYSTEMS                                                                                               4 118        1003
102301     Engineering Mechanics                                                                                           4 102        1008
103606     INDUSTRIAL ELECTRICAL SYSTEMS                                                                                   4 103        1010

10 rows selected.

SQL> SELECT
  2  StudentID AS Roll_No,
  3  CourseID AS Course_ID,
  4  Semester AS Semester_Value,
  5  Grade AS Grade_Pointer
  6  FROM Enrollment;

ROLL_NO    COURSE_ID  SEMESTER_VALUE       GR
---------- ---------- -------------------- --
23741      157504     Semester 3           A
23711      157601     Semester 3           A+
23103      103404     Semester 4           A
23110      101504     Semester 5           A-
23802      105403     Semester 4           B+
23103      103606     Semester 3           A
23741      157503     Semester 4           A+
23725      157503     Semester 4           A
23711      157503     Semester 3           A
23725      157601     Semester 3           A

10 rows selected.

SQL> SELECT * FROM Student
  2  WHERE DepartmentID='157';

STUDENTID  NAME                                                                                                 DATEOFBIR G CONTACTNUMBER   DEPARTMENT
---------- ---------------------------------------------------------------------------------------------------- --------- - --------------- ----------
23725      Nikhil Raj                                                                                           12-SEP-05 M 9143673623      157
23711      Kunal Kumar                                                                                          05-SEP-04 M 9988222414      157
23741      VIJAY KUMAR                                                                                          05-JAN-03 M 8151517898      157

SQL> SELECT * FROM Student
  2  WHERE Gender='F';

STUDENTID  NAME                                                                                                 DATEOFBIR G CONTACTNUMBER   DEPARTMENT
---------- ---------------------------------------------------------------------------------------------------- --------- - --------------- ----------
23403      Geeta Kumari                                                                                         12-SEP-05 F 9123587786      105
23901      Monika Srivatsva                                                                                     28-MAR-03 F 9430508899      153

SQL> SELECT * FROM Faculty
  2  WHERE Designation='Assistant Professor';
rows will be truncated


FACULTYID  NAME                                                                                                 DESIGNATION                                   EMAIL
---------- ---------------------------------------------------------------------------------------------------- -------------------------------------------------- -------------------------------------
1003       Prof. Manisha Kumari Singh                                                                           Assistant Professor                           manisha.ks241@gmail.com
1004       Prof. Sujeet Kumar                                                                                   Assistant Professor                           ksujeet.cs@gmail.com
1005       Prof. Praveen Kumar                                                                                  Assistant Professor                           praveenkumaryadav782@gmail.com
1006       Prof. Nishikant Kumar                                                                                Assistant Professor                           nishikantbpmce32@gmail.com
1007       Prof. Vicky Anand                                                                                    Assistant Professor                           Vickya.pg18@Nitp.ac.in
1009       Prof. Akhilesh Kumar                                                                                 Assistant Professor                           akhileshkumar3804@gmail.com

6 rows selected.

SQL> SELECT * FROM Faculty
  2  WHERE DepartmentID='157';
rows will be truncated


FACULTYID  NAME                                                                                                 DESIGNATION                                   EMAIL
---------- ---------------------------------------------------------------------------------------------------- -------------------------------------------------- -------------------------------------
1002       Prof. Arun Kumar                                                                                     Assistant Professor(Guest)                    arunkr75@gmail.com
1004       Prof. Sujeet Kumar                                                                                   Assistant Professor                           ksujeet.cs@gmail.com

SQL> SELECT * FROM Course
  2  WHERE DateOfBirth > TO_DATE(01-01-2003,'DD-MON-YY');
WHERE DateOfBirth > TO_DATE(01-01-2003,'DD-MON-YY')
      *
ERROR at line 2:
ORA-00904: "DATEOFBIRTH": invalid identifier


SQL> SELECT * FROM Course
  2  WHERE  Credits >= 4;

COURSEID   COURSENAME                                                                                              CREDITS DEPARTMENT FACULTYID
---------- ---------------------------------------------------------------------------------------------------- ---------- ---------- ----------
157601     COMPILER DESIGN                                                                                               4 157        1001
101504     HYDRAULIC ENGINEERING                                                                                         4 101        1007
105403     OPERATING SYSTEMS                                                                                             4 118        1003
102301     Engineering Mechanics                                                                                         4 102        1008
103606     INDUSTRIAL ELECTRICAL SYSTEMS                                                                                 4 103        1010

SQL> SELECT * FROM Student
  2  WHERE DateOfBirth > TO_DATE(01-01-2003,'DD-MON-YY');
WHERE DateOfBirth > TO_DATE(01-01-2003,'DD-MON-YY')
                                 *
ERROR at line 2:
ORA-01847: day of month must be between 1 and last day of month


SQL> SELECT * FROM Student
  2  WHERE DateOfBirth > TO_DATE(01-01-2003,'DD-MON-YYYY);
ERROR:
ORA-01756: quoted string not properly terminated


SQL> SELECT * FROM Student
  2  WHERE DateOfBirth > TO_DATE('01-01-2003','DD-MON-YYYY');
WHERE DateOfBirth > TO_DATE('01-01-2003','DD-MON-YYYY')
                            *
ERROR at line 2:
ORA-01843: not a valid month


SQL> SELECT * FROM Student
  2  WHERE DateOfBirth > TO_DATE('01-JAN-2003','DD-MON-YYYY');

STUDENTID  NAME                                                                                                 DATEOFBIR G CONTACTNUMBER   DEPARTMENT
---------- ---------------------------------------------------------------------------------------------------- --------- - --------------- ----------
23449      Nitish Kumar                                                                                         12-SEP-05 M 9123856786      105
23725      Nikhil Raj                                                                                           12-SEP-05 M 9143673623      157
23711      Kunal Kumar                                                                                          05-SEP-04 M 9988222414      157
23110      Sonu Kumar                                                                                           08-AUG-03 M 8545665968      101
23103      MITTAL PRASAD                                                                                        22-NOV-03 M 6421444484      103
23403      Geeta Kumari                                                                                         12-SEP-05 F 9123587786      105
23609      RISHI RANJAN                                                                                         16-JUL-03 M 9165945145      119
23741      VIJAY KUMAR                                                                                          05-JAN-03 M 8151517898      157
23901      Monika Srivatsva                                                                                     28-MAR-03 F 9430508899      153

9 rows selected.

SQL> SELECT * FROM Enrollment
  2  WHERE Semester = 4;
WHERE Semester = 4
      *
ERROR at line 2:
ORA-01722: invalid number


SQL> SELECT * FROM Enrollment
  2  WHERE SEMESTER = Semester 4;
WHERE SEMESTER = Semester 4
                          *
ERROR at line 2:
ORA-00933: SQL command not properly ended


SQL> SELECT * FROM Enrollment
  2  WHERE Semester = 'Semester 4';

STUDENTID  COURSEID   SEMESTER             GR
---------- ---------- -------------------- --
23103      103404     Semester 4           A
23802      105403     Semester 4           B+
23741      157503     Semester 4           A+
23725      157503     Semester 4           A

SQL>  SELECT * FROM Student
  2   ORDER BY Name ASC;

STUDENTID  NAME                                                                                                 DATEOFBIR G CONTACTNUMBER   DEPARTMENT
---------- ---------------------------------------------------------------------------------------------------- --------- - --------------- ----------
23802      AMAN KUMAR                                                                                           01-JAN-03 M 8151511582      118
23403      Geeta Kumari                                                                                         12-SEP-05 F 9123587786      105
23711      Kunal Kumar                                                                                          05-SEP-04 M 9988222414      157
23103      MITTAL PRASAD                                                                                        22-NOV-03 M 6421444484      103
23901      Monika Srivatsva                                                                                     28-MAR-03 F 9430508899      153
23725      Nikhil Raj                                                                                           12-SEP-05 M 9143673623      157
23449      Nitish Kumar                                                                                         12-SEP-05 M 9123856786      105
23609      RISHI RANJAN                                                                                         16-JUL-03 M 9165945145      119
23110      Sonu Kumar                                                                                           08-AUG-03 M 8545665968      101
23741      VIJAY KUMAR                                                                                          05-JAN-03 M 8151517898      157

10 rows selected.

SQL>  SELECT * FROM Student
  2   ORDER BY DateOfBirth DESC;

STUDENTID  NAME                                                                                                 DATEOFBIR G CONTACTNUMBER   DEPARTMENT
---------- ---------------------------------------------------------------------------------------------------- --------- - --------------- ----------
23449      Nitish Kumar                                                                                         12-SEP-05 M 9123856786      105
23725      Nikhil Raj                                                                                           12-SEP-05 M 9143673623      157
23403      Geeta Kumari                                                                                         12-SEP-05 F 9123587786      105
23711      Kunal Kumar                                                                                          05-SEP-04 M 9988222414      157
23103      MITTAL PRASAD                                                                                        22-NOV-03 M 6421444484      103
23110      Sonu Kumar                                                                                           08-AUG-03 M 8545665968      101
23609      RISHI RANJAN                                                                                         16-JUL-03 M 9165945145      119
23901      Monika Srivatsva                                                                                     28-MAR-03 F 9430508899      153
23741      VIJAY KUMAR                                                                                          05-JAN-03 M 8151517898      157
23802      AMAN KUMAR                                                                                           01-JAN-03 M 8151511582      118

10 rows selected.

SQL> SELECT * FROM Faculty
  2   ORDER BY Designation ASC;
rows will be truncated


FACULTYID  NAME                                                                                                 DESIGNATION                                   EMAIL
---------- ---------------------------------------------------------------------------------------------------- -------------------------------------------------- -------------------------------------
1005       Prof. Praveen Kumar                                                                                  Assistant Professor                           praveenkumaryadav782@gmail.com
1009       Prof. Akhilesh Kumar                                                                                 Assistant Professor                           akhileshkumar3804@gmail.com
1007       Prof. Vicky Anand                                                                                    Assistant Professor                           Vickya.pg18@Nitp.ac.in
1006       Prof. Nishikant Kumar                                                                                Assistant Professor                           nishikantbpmce32@gmail.com
1003       Prof. Manisha Kumari Singh                                                                           Assistant Professor                           manisha.ks241@gmail.com
1004       Prof. Sujeet Kumar                                                                                   Assistant Professor                           ksujeet.cs@gmail.com
1010       Prof. Mithlesh Kumar                                                                                 Assistant Professor and HOD                   bpmceeee110@gmail.com
1001       Prof. Murlidhar Prasad Singh                                                                         Assistant Professor and HOD                   singhmurlidhar@gmail.com
1002       Prof. Arun Kumar                                                                                     Assistant Professor(Guest)                    arunkr75@gmail.com
1008       Prof. Arvind Kumar Amar                                                                              Associate Professor and Principal in Incharge          ak_amar73@yahoo.com

10 rows selected.

SQL>  SELECT * FROM Course
  2   ORDER BY Credits DESC;

COURSEID   COURSENAME                                                                                              CREDITS DEPARTMENT FACULTYID
---------- ---------------------------------------------------------------------------------------------------- ---------- ---------- ----------
102301     Engineering Mechanics                                                                                         4 102        1008
105403     OPERATING SYSTEMS                                                                                             4 118        1003
157601     COMPILER DESIGN                                                                                               4 157        1001
101504     HYDRAULIC ENGINEERING                                                                                         4 101        1007
103606     INDUSTRIAL ELECTRICAL SYSTEMS                                                                                 4 103        1010
103404     ELECTROMAGNETIC THEORY                                                                                        3 103        1010
157503     COMPUTER NETWORK                                                                                              3 157        1002
162301     Fluid Mechanics                                                                                               3 101        1006
157501     DBMS                                                                                                          3 157        1004
157504     MACHINE LEARNING                                                                                              3 157        1004

10 rows selected.

SQL>  SELECT * FROM Student
  2   WHERE ROWNUM <= 3;

STUDENTID  NAME                                                                                                 DATEOFBIR G CONTACTNUMBER   DEPARTMENT
---------- ---------------------------------------------------------------------------------------------------- --------- - --------------- ----------
23449      Nitish Kumar                                                                                         12-SEP-05 M 9123856786      105
23725      Nikhil Raj                                                                                           12-SEP-05 M 9143673623      157
23711      Kunal Kumar                                                                                          05-SEP-04 M 9988222414      157

SQL>  SELECT * FROM Course
  2   WHERE ROWNUM <= 5;

COURSEID   COURSENAME                                                                                              CREDITS DEPARTMENT FACULTYID
---------- ---------------------------------------------------------------------------------------------------- ---------- ---------- ----------
157501     DBMS                                                                                                          3 157        1004
162301     Fluid Mechanics                                                                                               3 101        1006
157503     COMPUTER NETWORK                                                                                              3 157        1002
157601     COMPILER DESIGN                                                                                               4 157        1001
157504     MACHINE LEARNING                                                                                              3 157        1004

SQL> SELECT
  2      Name,
  3      FLOOR(MONTHS_BETWEEN(SYSDATE, DateOfBirth)/12) AS Age
  4  FROM Student;

NAME                                                                                                        AGE
---------------------------------------------------------------------------------------------------- ----------
Nitish Kumar                                                                                                 20
Nikhil Raj                                                                                                   20
Kunal Kumar                                                                                                  21
Sonu Kumar                                                                                                   22
MITTAL PRASAD                                                                                                22
Geeta Kumari                                                                                                 20
RISHI RANJAN                                                                                                 22
AMAN KUMAR                                                                                                   23
VIJAY KUMAR                                                                                                  23
Monika Srivatsva                                                                                             22

10 rows selected.

SQL>  SELECT
  2      CourseName,
  3      Credits + 1 AS Updated_Credits
  4   FROM Course;

COURSENAME                                                                                           UPDATED_CREDITS
---------------------------------------------------------------------------------------------------- ---------------
DBMS                                                                                                               4
Fluid Mechanics                                                                                                    4
COMPUTER NETWORK                                                                                                   4
COMPILER DESIGN                                                                                                    5
MACHINE LEARNING                                                                                                   4
HYDRAULIC ENGINEERING                                                                                              5
ELECTROMAGNETIC THEORY                                                                                             4
OPERATING SYSTEMS                                                                                                  5
Engineering Mechanics                                                                                              5
INDUSTRIAL ELECTRICAL SYSTEMS                                                                                      5

10 rows selected.

SQL>  SELECT StudentID,CourseID,Semester,Grade AS Final_Grade
  2  FROM Enrollment;

STUDENTID  COURSEID   SEMESTER             FI
---------- ---------- -------------------- --
23741      157504     Semester 3           A
23711      157601     Semester 3           A+
23103      103404     Semester 4           A
23110      101504     Semester 5           A-
23802      105403     Semester 4           B+
23103      103606     Semester 3           A
23741      157503     Semester 4           A+
23725      157503     Semester 4           A
23711      157503     Semester 3           A
23725      157601     Semester 3           A

10 rows selected.

SQL>  SELECT
  2      Name,EXTRACT(YEAR FROM DateOfBirth) AS Birth_Year
  3   FROM Student;

NAME                                                                                                 BIRTH_YEAR
---------------------------------------------------------------------------------------------------- ----------
Nitish Kumar                                                                                               2005
Nikhil Raj                                                                                                 2005
Kunal Kumar                                                                                                2004
Sonu Kumar                                                                                                 2003
MITTAL PRASAD                                                                                              2003
Geeta Kumari                                                                                               2005
RISHI RANJAN                                                                                               2003
AMAN KUMAR                                                                                                 2003
VIJAY KUMAR                                                                                                2003
Monika Srivatsva                                                                                           2003

10 rows selected.

SQL>  SELECT
  2      Name,SUBSTR(Email, INSTR(Email, '@') + 1) AS Email_Domain
  3   FROM Faculty;

NAME                                                                                                 EMAIL_DOMAIN
---------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------
Prof. Murlidhar Prasad Singh                                                                         gmail.com
Prof. Arun Kumar                                                                                     gmail.com
Prof. Manisha Kumari Singh                                                                           gmail.com
Prof. Sujeet Kumar                                                                                   gmail.com
Prof. Praveen Kumar                                                                                  gmail.com
Prof. Nishikant Kumar                                                                                gmail.com
Prof. Vicky Anand                                                                                    Nitp.ac.in
Prof. Arvind Kumar Amar                                                                              yahoo.com
Prof. Akhilesh Kumar                                                                                 gmail.com
Prof. Mithlesh Kumar                                                                                 gmail.com

10 rows selected.

SQL> SAVE LAB4.sql
Created file LAB4.sql
SQL>
