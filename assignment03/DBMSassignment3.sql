
CREATE TABLE Department (
  2      DepartmentID VARCHAR(10) PRIMARY KEY,
  3      DepartmentName VARCHAR(100),
  4      OfficeLocation VARCHAR(100)
  5  );

Table created.

SQL> CREATE TABLE Faculty (
  2      FacultyID VARCHAR(10) PRIMARY KEY,
  3      Name VARCHAR(100),
  4      Designation VARCHAR(50),
  5      Email VARCHAR(100),
  6      DepartmentID VARCHAR(10),
  7      FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
  8  );

Table created.

SQL> CREATE TABLE Student (
  2      StudentID VARCHAR(10) PRIMARY KEY,
  3      Name VARCHAR(100),
  4      DateOfBirth DATE,
  5      Gender CHAR(1),
  6      ContactNumber VARCHAR(15),
  7      DepartmentID VARCHAR(10),
  8      FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
  9  );

Table created.

SQL> CREATE TABLE Course (
  2      CourseID VARCHAR(10) PRIMARY KEY,
  3      CourseName VARCHAR(100),
  4      Credits INT,
  5      DepartmentID VARCHAR(10),
  6      FacultyID VARCHAR(10),
  7      FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
  8      FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
  9  );



 CREATE TABLE Enrollment (
    StudentID VARCHAR(10),
    CourseID VARCHAR(10), 
    Semester VARCHAR(20),
     Grade CHAR(2),
     PRIMARY KEY (StudentID, CourseID),
     FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
     FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
   );



INSERT INTO Department VALUES(101,'CE','Block_A');

1 row created.

SQL> INSERT INTO Department VALUES(157,'CSE(AIML)','Block_B');

1 row created.

SQL> INSERT INTO Department VALUES(105,'CSE','Block_C');

1 row created.

SQL> INSERT INTO Department VALUES(103,'EEE','Block_D');

1 row created.

SQL> INSERT INTO Department VALUES(102,'ME','Block_E');

1 row created.

SQL> INSERT INTO Department VALUES(118,'3-DAG','Block_F');

1 row created.

SQL> INSERT INTO Department VALUES(106,'IT','Block_G');

1 row created.

SQL> INSERT INTO Department VALUES(104,'ECE','Block_H');

1 row created.

SQL> INSERT INTO Department VALUES(119,'CEWCA','Block_I');

1 row created.

SQL> INSERT INTO Department VALUES(153,'DATA SCIENCE','Block_J');

1 row created.

SQL> INSERT INTO Faculty VALUES (1001, 'Prof. Murlidhar Prasad Singh', 'Assistant Professor and HOD', 'singhmurlidhar@gmail.com', 105);

1 row created.

SQL> INSERT INTO Faculty VALUES (1002, 'Prof. Arun Kumar', 'Assistant Professor(Guest)', 'arunkr75@gmail.com', 157);

1 row created.

SQL> INSERT INTO Faculty VALUES (1003, 'Prof. Manisha Kumari Singh', 'Assistant Professor', 'manisha.ks241@gmail.com', 118);

1 row created.

SQL> INSERT INTO Faculty VALUES (1004, 'Prof. Sujeet Kumar', 'Assistant Professor', 'ksujeet.cs@gmail.com', 157);

1 row created.

SQL> INSERT INTO Faculty VALUES (1005, 'Prof. Praveen Kumar', 'Assistant Professor', 'praveenkumaryadav782@gmail.com', 153);

1 row created.

SQL> INSERT INTO Faculty VALUES (1005, 'Prof. Nishikant Kumar', 'Assistant Professor', 'nishikantbpmce32@gmail.com', 101);
INSERT INTO Faculty VALUES (1005, 'Prof. Nishikant Kumar', 'Assistant Professor', 'nishikantbpmce32@gmail.com', 101)
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008385) violated


SQL> INSERT INTO Faculty VALUES (1006, 'Prof. Nishikant Kumar', 'Assistant Professor', 'nishikantbpmce32@gmail.com', 101);

1 row created.

SQL> INSERT INTO Faculty VALUES (1007, 'Prof. Vicky Anand', 'Assistant Professor', 'Vickya.pg18@Nitp.ac.in', 119);

1 row created.

SQL> INSERT INTO Faculty VALUES (1008, 'Prof. Akhilesh Kumar', 'Associate Professor and Principal in Incharge', 'ak_amar73@yahoo.com', 102);

1 row created.

SQL> INSERT INTO Faculty VALUES (1009, 'Prof. Akhilesh Kumar', 'Assistant Professor', 'akhileshkumar3804@gmail.com', 101);

1 row created.

SQL> INSERT INTO Faculty VALUES (1010, 'Prof. Mithlesh Kumar', 'Assistant Professor and HOD', 'bpmceeee110@gmail.com', 103);

1 row created.

SQL> update faculty set name = 'Prof. Arvind Kumar Amar' where faculty_id = 1008;
update faculty set name = 'Prof. Arvind Kumar Amar' where faculty_id = 1008
                                                          *
ERROR at line 1:
ORA-00904: "FACULTY_ID": invalid identifier


SQL> update faculty set name ='Prof. Arvind Kumar Amar' where facultyid= 1008;

1 row updated.

SQL> INSERT INTO Course VALUES(157501,'DBMS',3.00,157,1004);

1 row created.

SQL> INSERT INTO Course VALUES(162301,'Fluid Mechanics',3.00,101,1006);

1 row created.

SQL> INSERT INTO Course VALUES(157503,'COMPUTER NETWORK',3.00,157,1002);

1 row created.

SQL> INSERT INTO Course VALUES(157601,'COMPILER DESIGN',4.00,157,1001);

1 row created.

SQL> INSERT INTO Course VALUES(157504,'MACHINE LEARNING',3.00,157,1004);

1 row created.

SQL> INSERT INTO Course VALUES(101504,'HYDRAULIC ENGINEERING',4.00,101,1007);

1 row created.

SQL> INSERT INTO Course VALUES(103404,'ELECTROMAGNETIC THEORY',3.00,103,1010);

1 row created.

SQL> INSERT INTO Course VALUES(105403,'OPERATING SYSTEMS',4.00,118,1003);

1 row created.

SQL> INSERT INTO Course VALUES(102301,'Engineering Mechanics',4.00,102,1008);

1 row created.

SQL> INSERT INTO Course VALUES(103606,'INDUSTRIAL ELECTRICAL SYSTEMS',4.00,103,1010);

1 row created.

SQL> INSERT INTO Student VALUES (23449, 'Nitish Kumar', TO_DATE('12-SEP-2005','DD-MON-YYYY'), 'Male', '9123856786', 105);
INSERT INTO Student VALUES (23449, 'Nitish Kumar', TO_DATE('12-SEP-2005','DD-MON-YYYY'), 'Male', '9123856786', 105)
                                                                                         *
ERROR at line 1:
ORA-12899: value too large for column "SYSTEM"."STUDENT"."GENDER" (actual: 4,
maximum: 1)


SQL> INSERT INTO Student VALUES (23449, 'Nitish Kumar', TO_DATE('12-SEP-2005','DD-MON-YYYY'), 'M', '9123856786', 105);

1 row created.

SQL> INSERT INTO Student VALUES (23725, 'Nikhil Raj', TO_DATE('12-SEP-2005','DD-MON-YYYY'), 'M', '9143673623', 157);

1 row created.

SQL> INSERT INTO Student VALUES (23711, 'Kunal Kumar', TO_DATE('05-SEP-2004','DD-MON-YYYY'), 'M', '9988222414', 157);

1 row created.

SQL> INSERT INTO Student VALUES (23110, 'Sonu Kumar', TO_DATE('08-AUG-2003','DD-MON-YYYY'), 'M', '8545665968', 101);

1 row created.

SQL> INSERT INTO Student VALUES (23103, 'MITTAL PRASAD', TO_DATE('22-NOV-2003','DD-MON-YYYY'), 'M', '6421444484', 103);

1 row created.

SQL> INSERT INTO Student VALUES (23403, 'Geeta Kumari', TO_DATE('12-SEP-2005','DD-MON-YYYY'), 'F', '9123587786', 105);

1 row created.

SQL> INSERT INTO Student VALUES (23609, 'RISHI RANJAN', TO_DATE('16-JUL-2003','DD-MON-YYYY'), 'M', '9165945145', 119);

1 row created.

SQL> INSERT INTO Student VALUES (23802, 'AMAN KUMAR', TO_DATE('01-JAN-2003','DD-MON-YYYY'), 'M', '8151511582', 118);

1 row created.

SQL> INSERT INTO Student VALUES (23741, 'VIJAY KUMAR', TO_DATE('05-JAN-2003','DD-MON-YYYY'), 'M', '8151517898', 157);

1 row created.

SQL> INSERT INTO Student VALUES (23901, 'Monika Srivatsva', TO_DATE('28-MAR-2003','DD-MON-YYYY'), 'F', '9430508899', 153);

1 row created.

SQL> INSERT INTO Enrollment VALUES(23157128011,'5th','A+',23711,157501);
INSERT INTO Enrollment VALUES(23157128011,'5th','A+',23711,157501)
            *
ERROR at line 1:
ORA-00913: too many values


SQL> INSERT INTO Enrollment VALUES ('23741','15703','Semester 3','A+');
INSERT INTO Enrollment VALUES ('23741','15703','Semester 3','A+')
*
ERROR at line 1:
ORA-02291: integrity constraint (SYSTEM.SYS_C008394) violated - parent key not
found


SQL> INSERT INTO Enrollment VALUES ('23741','157504','Semester 3','A');

1 row created.

SQL> INSERT INTO Enrollment VALUES ('23711','157601','Semester 3','A+');

1 row created.

SQL> INSERT INTO Enrollment VALUES ('23103','103404','Semester 4','A');

1 row created.

SQL> INSERT INTO Enrollment VALUES ('23110','101504','Semester 5','A-');

1 row created.

SQL> INSERT INTO Enrollment VALUES ('23802','105403','Semester 4','B+');

1 row created.

SQL> INSERT INTO Enrollment VALUES ('23103','103606','Semester 3','A');

1 row created.

SQL> INSERT INTO Enrollment VALUES ('23741','15703','Semester 3','A+');
INSERT INTO Enrollment VALUES ('23741','15703','Semester 3','A+')
*
ERROR at line 1:
ORA-02291: integrity constraint (SYSTEM.SYS_C008394) violated - parent key not
found


SQL> INSERT INTO Enrollment VALUES ('23741','157503','Semester 4','A+');

1 row created.

SQL> INSERT INTO Enrollment VALUES ('23725','157503','Semester 4','A');

1 row created.

SQL> INSERT INTO Enrollment VALUES ('23711','157503','Semester 3','A');

1 row created.

SQL> INSERT INTO Enrollment VALUES ('23725','157503','Semester 3','A');
INSERT INTO Enrollment VALUES ('23725','157503','Semester 3','A')
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008392) violated


SQL> INSERT INTO Enrollment VALUES ('23725','157601','Semester 3','A');

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SAVE assignments.sql
Created file assignments.sql

