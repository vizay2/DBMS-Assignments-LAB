-------------------------PART A-------------------------------------------------------
---Question No 1--
SELECT
  StudentID AS Roll_No,
  Name AS Student_Name,
  Gender AS Gender,
  DateOfBirth AS Date_Of_Birth,
  ContactNumber AS Contact_No,
  DepartmentID AS Dept_ID
   FROM Student;
---Question No 2--
SELECT
 StudentID AS Roll_No,
 Name AS Student_Name,
 DepartmentID AS Dept_ID
 FROM Student;                                                
---Question No 3--
 SELECT
 FacultyID AS Faculty_ID,
 Name AS Faculty_Name,
 Designation AS Job_Title,
 Email AS Email_ID
 FROM Faculty;
---Question No 4--
 SELECT
  2  CourseID AS Course_ID,
  3  CourseName AS Course_Name,
  4  Credits AS Credit_Score,
  5  DepartmentID AS Dept_ID,
  6  FacultyID AS Faculty_ID
  7  FROM Course;
---Question No 5--
 SELECT
  StudentID AS Roll_No,
  CourseID AS Course_ID,
  Semester AS Semester_Value,
  Grade AS Grade_Pointer
  FROM Enrollment;

--------------PART B---------------------------------------------------------------------------------------------------------------------------------
---Question No 6--
SELECT * FROM Student
 WHERE DepartmentID='157';
---Question No 7--

SELECT * FROM Student
 WHERE Gender='F';
---Question No 8--
 SELECT * FROM Faculty
   WHERE Designation='Assistant Professor';

---Question No 9--
SELECT * FROM Faculty
 WHERE DepartmentID='157';
---Question No 10--
 SELECT * FROM Course
   WHERE  Credits >= 4;
---Question No 11--
 SELECT * FROM Student
   WHERE DateOfBirth > TO_DATE('01-JAN-2003','DD-MON-YYYY');
---Question No 12--
 SELECT * FROM Enrollment
   WHERE Semester = 'Semester 4';
------------------------------------------------- PART C---------------------------------------------------------------------------------------------
---Question No 13--

 SELECT * FROM Student
    ORDER BY Name ASC;
---Question No 14--
  SELECT * FROM Student
    ORDER BY DateOfBirth DESC;
---Question No 15--
 SELECT * FROM Faculty
  ORDER BY Designation ASC;
---Question No 16--
 SELECT * FROM Course
  ORDER BY Credits DESC;
---Question No 17--
 SELECT * FROM Student
    WHERE ROWNUM <= 3;
---Question No 18--
  SELECT * FROM Course
    WHERE ROWNUM <= 5;
------------------------------------------------- PART D---------------------------------------------------------------------------------------------
---Question No 19--

SELECT
  Name,
  FLOOR(MONTHS_BETWEEN(SYSDATE, DateOfBirth)/12) AS Age
  FROM Student;
---Question No 20--

 SELECT
   CourseName,
   Credits + 1 AS Updated_Credits
   FROM Course;
---Question No 21--

SELECT StudentID,
  CourseID,
  Semester,
  Grade AS Final_Grade
  FROM Enrollment;
---Question No 22--
  SELECT
   Name,EXTRACT(YEAR FROM DateOfBirth) AS Birth_Year
    FROM Student;
---Question No 23--

SQL>  SELECT
  Name,
  SUBSTR(Email, INSTR(Email, '@') + 1) AS Email_Domain
   FROM Faculty;







SAVE DBMSLAB4.sql


