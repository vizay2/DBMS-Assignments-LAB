DBMS Lab 6 – Data Aggregation using GROUP BY and HAVING
📘 Lab Title
Data Aggregation using GROUP BY and HAVING

🎯 Objective
The objective of this lab is to understand how to summarize and analyze data using SQL aggregate functions and to apply GROUP BY and HAVING clauses to generate meaningful grouped reports from database tables without modifying the stored data.

🛠️ Concepts Covered
Aggregate Functions in SQL
GROUP BY Clause
GROUP BY with Multiple Columns
HAVING Clause
GROUP BY with JOIN
Analytical Queries
📌 Aggregate Functions Used
Function	Description
COUNT()	Counts number of rows
SUM()	Calculates total
AVG()	Calculates average
MAX()	Finds maximum value
MIN()	Finds minimum value
Example
SELECT COUNT(*) AS Total_Students
FROM Student;
🧪 Lab Tasks
🅰️ Part A: Basic Aggregate Queries

✔ Total students
✔ Total faculty
✔ Total courses
✔ Maximum credits
✔ Minimum credits

🅱️ Part B: GROUP BY (Single Table)

✔ Students per department
✔ Faculty per department
✔ Courses per department
✔ Enrollments per semester
✔ Students per grade

🅲 Part C: GROUP BY with HAVING

✔ Departments with > 3 students
✔ Semesters with > 2 enrollments
✔ Grades assigned to multiple students
✔ Departments with multiple courses

🅳 Part D: Aggregation with JOIN

✔ Students per course
✔ Course name with enrolled students
✔ Students per department
✔ Faculty with number of courses taught

🅴 Part E: Analytical Queries

✔ Maximum grade per course
✔ Courses per department
✔ Students per semester
✔ Courses with more than 2 students
