
```
Student.StudentID = Enrollment.StudentID
```

---

### 4. Table Aliases

Aliases are short names for tables used to simplify queries.

Example:

```sql
SELECT S.Name, C.CourseName
FROM Student AS S
INNER JOIN Course AS C
ON S.DepartmentID = C.DepartmentID;
```

Here:

- `S` → Student  
- `C` → Course  

Aliases improve readability when working with multiple tables.

---

### 5. Joining Multiple Tables

SQL allows joining more than two tables in a single query.

Example:

```sql
SELECT S.Name, C.CourseName
FROM Student AS S
INNER JOIN Enrollment AS E
ON S.StudentID = E.StudentID
INNER JOIN Course AS C
ON E.CourseID = C.CourseID;
```

This query retrieves **student names and course names** by combining three tables.

---

## Lab Questions

### Part A – Student–Enrollment Relationship

1. Display StudentID and Name from Student table along with CourseID from Enrollment table.  
2. Display student Name and Semester for all enrolled students.  
3. Display student Name and Grade obtained in each course.

---

### Part B – Course–Faculty Relationship

4. Display CourseName and Credits along with the Faculty Name who teaches the course.  
5. Display all courses taught by a faculty member whose FacultyID is **F201**.  
6. Display faculty Name and Designation along with the CourseName they teach.

---

### Part C – Student–Course–Enrollment Relationship

7. Display student Name along with CourseName for all enrollments.  
8. Display student Name, CourseName, and Semester.  
9. Display student Name, CourseName, and Grade for **Semester 4 only**.  
10. Display all courses taken by a student whose StudentID is **S401**.

---

### Part D – Department-Based JOIN Queries

11. Display student Name and DepartmentID along with CourseName.  
12. Display department-wise list of courses using DepartmentID.  
13. Display faculty Name along with department name they belong to.

---

### Part E – Filtering and Sorting

14. Display student Name and CourseName for students belonging to Department **D101**.  
15. Display student Name and CourseName sorted by student name in **ascending order**.  
16. Display faculty Name and CourseName sorted by course credits in **descending order**.

---

### Part F – Analytical JOIN Queries

17. Display number of students enrolled in each course.  
18. Display number of courses taught by each faculty member.  
19. Display department-wise count of students.  
20. Display course name along with maximum grade awarded in that course.

---

## Rules for the Lab

- Only **INNER JOIN** should be used.
- Use **table aliases** for better readability.
- JOIN conditions must be correct.
- Queries should **not modify the database structure or stored data**.
- Queries are **read-only operations**.
