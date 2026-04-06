------------------------------ Part A: Basic Subqueries----------------------------
--------------QUESTION 01--------------
SELECT Name
FROM Student
WHERE DepartmentID = (
    SELECT DepartmentID
    FROM Student
    WHERE StudentID = '23741'
);
--------------QUESTION 02--------------
SELECT *
FROM Student
WHERE Gender = (
    SELECT Gender
    FROM Student
    WHERE StudentID = '23741'
);

--------------QUESTION 03--------------
SELECT *
FROM Student
WHERE DepartmentID = (
    SELECT DepartmentID
    FROM Student
    WHERE StudentID = '23103'
);


-- ----------------------------Part B: Subqueries with IN----------------------------

--------------QUESTION 04--------------
SELECT *
FROM Student
WHERE DepartmentID IN (
    SELECT DepartmentID
    FROM Student
    WHERE Gender = 'F'
);

--------------QUESTION 05--------------
SELECT *
FROM Student
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment
);

--------------QUESTION 06--------------
SELECT *
FROM Student
WHERE EXISTS (
    SELECT *
    FROM Enrollment
    WHERE Enrollment.StudentID = Student.StudentID
);


------------------------------ Part C: Subqueries with Aggregate Functions----------------------------

--------------QUESTION 07--------------
SELECT *
FROM Course
WHERE Credits > (
    SELECT AVG(Credits)
    FROM Course
);
--------------QUESTION 08--------------
SELECT *
FROM Student
WHERE StudentID > (
    SELECT AVG(StudentID)
    FROM Student
);
--------------QUESTION 09--------------
SELECT DepartmentID
FROM Student
GROUP BY DepartmentID
HAVING COUNT(*) > (
    SELECT AVG(StudentCount)
    FROM (
        SELECT COUNT(*) AS StudentCount
        FROM Student
        GROUP BY DepartmentID
    ) DeptCounts
);


------------------------------ Part D: Subqueries Instead of JOIN----------------------------
--------------QUESTION 10--------------
SELECT Name
FROM Student
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment
);
--------------QUESTION 11--------------
SELECT *
FROM Student
WHERE DepartmentID IN (
    SELECT DepartmentID
    FROM Department
);
--------------QUESTION 12--------------
SELECT *
FROM Course
WHERE CourseID IN (
    SELECT CourseID
    FROM Enrollment
);


-- ----------------------------Part E: Analytical Subqueries----------------------------
--------------QUESTION 13--------------
SELECT *
FROM Course
WHERE Credits = (
    SELECT MAX(Credits)
    FROM Course
);
--------------QUESTION 14--------------
SELECT *
FROM Student
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment
    GROUP BY StudentID
    HAVING COUNT(CourseID) > 1
);

--------------QUESTION 15--------------
SELECT DepartmentID
FROM Student
GROUP BY DepartmentID
HAVING COUNT(*) = (
    SELECT MAX(StudentCount)
    FROM (
        SELECT COUNT(*) AS StudentCount
        FROM Student
        GROUP BY DepartmentID
    ) DeptCounts
);


-- ----------------------------Part F: Challenging Questions----------------------------

--------------QUESTION 16--------------
SELECT *
FROM Student
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment
    WHERE CourseID IN (
        SELECT CourseID
        FROM Enrollment
        WHERE StudentID = '23741'
    )
)
AND StudentID <> '23741';
--------------QUESTION 17--------------
SELECT *
FROM Student
WHERE StudentID NOT IN (
    SELECT StudentID
    FROM Enrollment
);
--------------QUESTION 18--------------
SELECT *
FROM Course
WHERE CourseID NOT IN (
    SELECT CourseID
    FROM Enrollment
);
