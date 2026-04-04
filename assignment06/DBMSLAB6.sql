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
 SELECT Grade, COUNT(*) AS Total_Enrollments
    FROM Enrollment
    GROUP BY Grade;
------------------------------------------ PART C------------------------------------------
--------------QUESTION 11--------------
 SELECT DepartmentID, COUNT(*) AS Total_Students
   FROM Student
   GROUP BY DepartmentID
  HAVING COUNT(*) > 3;
--------------QUESTION 12--------------
 SELECT Semester, COUNT(*) AS Total_Enrollments
 FROM Enrollment
 GROUP BY Semester
 HAVING COUNT(*) > 2;
--------------QUESTION 13--------------
  SELECT Grade, COUNT(*) AS Count_Grade
   FROM Enrollment
   GROUP BY Grade
   HAVING COUNT(*) > 1;
--------------QUESTION 14--------------
 SELECT DepartmentID, COUNT(*) AS Total_Courses
   FROM Course
    GROUP BY DepartmentID
    HAVING COUNT(*) > 1;

------------------------------------------ PART D------------------------------------------
--------------QUESTION 15--------------
SELECT CourseID, COUNT(StudentID) AS Enrolled_Students
   FROM Enrollment
   GROUP BY CourseID;
-------------- QUESTION 16--------------
 SELECT c.CourseName, COUNT(e.StudentID) AS Enrolled_Students
   FROM Course c
   JOIN Enrollment e ON c.CourseID = e.CourseID
   GROUP BY c.CourseName;

-------------- QUESTION 17 --------------
 SELECT DepartmentID, COUNT(*) AS Total_Students
  FROM Student
  GROUP BY DepartmentID;

---------------QUESTION 18 --------------
SELECT f.FacultyID, COUNT(c.CourseID) AS Courses_Taught
   FROM Faculty f
   JOIN Course c ON f.FacultyID = c.FacultyID
   GROUP BY f.FacultyID;

------------------------------------------ PART E------------------------------------------
--------------QUESTION 19--------------
SELECT c.CourseName, MAX(e.Grade) AS Max_Grade
  FROM Course c
  JOIN Enrollment e ON c.CourseID = e.CourseID
  GROUP BY c.CourseName;

-------------- QUESTION 20--------------
 SELECT DepartmentID, COUNT(*) AS Total_Courses
    FROM Course
  GROUP BY DepartmentID;

-------------- QUESTION 21--------------
SELECT Semester, COUNT(StudentID) AS Total_Students
   FROM Enrollment
   GROUP BY Semester;

-------------- QUESTION 22--------------
 SELECT c.CourseName, COUNT(e.StudentID) AS Total_Students
   FROM Course c
   JOIN Enrollment e ON c.CourseID = e.CourseID
   GROUP BY c.CourseName
   HAVING COUNT(e.StudentID) > 2;

 SAVE DBMSLAB6.sql
