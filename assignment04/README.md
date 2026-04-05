📌 Overview

✨ This project demonstrates SQL read-only queries used to retrieve and analyze data from database tables without modifying them.

🎯 Objective

🔹 Understand how to extract meaningful data using SQL
🔹 Apply filtering, sorting, and aliasing
🔹 Generate computed results from existing data

🧠 Concepts Covered
💡 Concept	📖 Description
🔍 Data Retrieval	Fetch records using SELECT
🏷️ Aliasing	Rename columns using AS
🎯 Filtering	Use WHERE clause
🔄 Sorting	Use ORDER BY
🔢 Limiting	Restrict rows using LIMIT
📊 Computation	Generate derived outputs
📅 Date Handling	Work with DOB & age
🛠️ Sample Queries
🟢 Retrieve Data
SELECT * FROM Student;
🔵 Alias Example
SELECT StudentID AS Roll_No, Name AS Student_Name
FROM Student;
🟡 Filtering
SELECT * FROM Student
WHERE DepartmentID = 'D101';
🟣 Sorting
SELECT Name FROM Student
ORDER BY Name ASC;
🔴 Computed Output
SELECT Name, YEAR(CURDATE()) - YEAR(DOB) AS Age
FROM Student;
🧪 Lab Tasks
🅰️ Basic Display

✔ Use aliases for all tables
✔ Display selected columns with new names

🅱️ Conditional Queries

✔ Filter by department, gender, designation
✔ Apply conditions on DOB and credits

🅲 Sorting & Limiting

✔ Sort records (ASC/DESC)
✔ Display limited rows

🅳 Computed Output

✔ Calculate age
✔ Modify output values
✔ Extract year/email domain


✅ Strong understanding of SQL queries
✅ Ability to analyze structured data
✅ Hands-on practice with real-world database scenarios

🌟 Highlights

✨ Clean and readable SQL queries
✨ Real-world lab-based practice
✨ Beginner-friendly structure

🚀 Future Improvements

🔸 Add advanced joins
🔸 Include aggregation functions
🔸 Build mini database project
