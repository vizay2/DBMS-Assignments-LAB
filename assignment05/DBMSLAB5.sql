------------------------------------------ PART A ------------------------------------------
-------------- QUSTION 01 --------------

SELECT
  S.StudentID,
   S.Name,
   E.CourseID
   FROM Student S
   INNER JOIN Enrollment E
   ON S.StudentID=E.StudentID;
-------------- QUESTION 02 --------------

SELECT
  S.Name,
  E.semester
  FROM Student S
  INNER JOIN Enrollment E
  ON S.StudentID=E.StudentID;
-------------- QUESTION 03--------------
 SELECT
  S.Name,
  E.Grade
  FROM Student S
  INNER JOIN Enrollment E
  ON S.StudentID=E.StudentID;
------------------------------------------ PART B ------------------------------------------
-------------- QUESTION 04--------------

 SELECT
    C.CourseName,
    C.Credits,
    F.Name AS Faculty_Name
    FROM Course C
    INNER JOIN Faculty F
    ON C.FacultyID=F.FacultyID;
-------------- QUESTION 05 --------------

 SELECT
  S.Name,
  E.Grade
  FROM Student S
   INNER JOIN Enrollment E
   ON S.StudentID=E.StudentID;

-------------- QUESTION 06 --------------
SELECT
F.Name,
F.Designation,
C.CourseName
FROM Faculty F
INNER JOIN Course C
ON F.FacultyID=C.FacultyID;
------------------------------------------ PART C ------------------------------------------
-------------- QUESTION 07 --------------

 SELECT
   F.Name,
   F.Designation,
   C.CourseName
   FROM Faculty F
   INNER JOIN Course C
   ON F.FacultyID=C.FacultyID;
-------------- QUESTION 08 --------------

 SELECT
  S.Name,
  C.CourseName
  FROM Student S
  INNER JOIN Enrollment E ON S.StudentID = E.StudentID
  INNER JOIN Course C ON E.CourseID = C.CourseID;
-------------- QUESTION 09 --------------
 SELECT
  S.Name,
  C.CourseName,
  E.Grade
  FROM Student S
  INNER JOIN Enrollment E ON S.StudentID = E.StudentID
  INNER JOIN Course C ON E.CourseID = C.CourseID
  WHERE E.Semester = 'Semester 4';
-------------- QUESTION 10 --------------

 SELECT
  C.CourseName
  FROM Enrollment E
  INNER JOIN Course C
  ON E.CourseID = C.CourseID
  WHERE E.StudentID =23741;
------------------------------------------ PART D ------------------------------------------
-------------- QUESTION 11 --------------
 SELECT
  S.Name,
  S.DepartmentID,
  C.CourseName
  FROM Student S
  INNER JOIN Enrollment E ON S.StudentID = E.StudentID
  INNER JOIN Course C ON E.CourseID = C.CourseID;
-------------- QUESTION 12 --------------

 SELECT
  D.DepartmentName,
  C.CourseName
  FROM Department D
  INNER JOIN Course C
  ON D.DepartmentID = C.DepartmentID;
-------------- QUESTION 13 --------------

 SELECT
  F.Name,
  D.DepartmentName
  FROM Faculty F
  INNER JOIN Department D
  ON F.DepartmentID = D.DepartmentID;
------------------------------------------ PART E ------------------------------------------
-------------- QUESTION 14 --------------
 SELECT
  S.Name,
  C.CourseName
  FROM Student S
  INNER JOIN Enrollment E ON S.StudentID = E.StudentID
  INNER JOIN Course C ON E.CourseID = C.CourseID
  WHERE S.DepartmentID = 157;
-------------- QUESTION 15 --------------

 SELECT
  S.Name,
  C.CourseName
  FROM Student S
  INNER JOIN Enrollment E ON S.StudentID = E.StudentID
  INNER JOIN Course C ON E.CourseID = C.CourseID
  ORDER BY S.Name ASC;
-------------- QUESTION 16 --------------

 SELECT
  F.Name,
  C.CourseName,
  C.Credits
  FROM Faculty F
  INNER JOIN Course C
  ON F.FacultyID = C.FacultyID
  ORDER BY C.Credits DESC;
------------------------------------------  PART F ------------------------------------------
-------------- QUESTION 17 --------------

 SELECT
  C.CourseName,
  COUNT(E.StudentID) AS Total_Students
  FROM Course C
  INNER JOIN Enrollment E
  ON C.CourseID = E.CourseID
  GROUP BY C.CourseName;
-------------- QUESTION 18 --------------

SELECT
 F.Name,
 COUNT(C.CourseID) AS Total_Courses  
  FROM Faculty F
    INNER JOIN Course C
    ON F.FacultyID = C.FacultyID
   GROUP BY F.Name;
-------------- QUESTION 19 --------------
 SELECT
  D.DepartmentName,
  COUNT(S.StudentID) AS Total_Students
  FROM Department D
  INNER JOIN Student S
  ON D.DepartmentID = S.DepartmentID
  GROUP BY D.DepartmentName;
-------------- QUESTION 20 --------------
 SELECT
  C.CourseName,
  MAX(E.Grade) AS Max_Grade
  FROM Course C
  INNER JOIN Enrollment E
  ON C.CourseID = E.CourseID
  GROUP BY C.CourseName;








SAVE DBMSLAB5.sql


