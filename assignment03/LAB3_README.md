# DBMS Lab–3  
## Data Collection and Data Insertion in College Database

### Objective
The objective of this lab is to understand how real-world data is collected from authentic sources and inserted into a relational database using SQL. This lab focuses on maintaining data accuracy, consistency, and proper use of primary and foreign key constraints.

---

### Prerequisite
This lab uses the **database schema created in Lab–2**, which includes the following tables:

- Department  
- Faculty  
- Student  
- Course  
- Enrollment  

Make sure all tables and relationships from Lab–2 are already created before performing this lab.

---

### College Reference
All data used in this lab is collected with reference to  
**:contentReference[oaicite:0]{index=0}**

Only real and verifiable academic information is used.

---

## Data Collection Guidelines

### 1. Department
Attributes collected:
- Department ID (self-defined)
- Department Name (as per official records)
- Office Location / Block  
  (If exact location is not available, use Block A, Block B, etc.)

**Source:**  
College website or official department pages

---

### 2. Faculty
Attributes collected:
- Faculty ID (self-defined)
- Faculty Name
- Designation
- Official Email ID
- Department ID

**Source:**  
Department faculty list or class timetable

---

### 3. Course
Attributes collected:
- Course ID (self-defined)
- Course Name (as per syllabus)
- Credits
- Department ID
- Faculty ID (faculty teaching the course)

**Source:**  
Syllabus document or academic timetable

---

### 4. Student
Attributes collected:
- Student ID (self-defined)
- Student Name
- Date of Birth
- Gender
- Contact Number (dummy numbers only)
- Department ID

⚠️ **Note:**  
Real personal contact numbers of students must not be used. Dummy numbers such as `9XXXXXXXXX` are used for database variation.

**Source:**  
Class roll list or student records (friends’ details may be used with variation)

---

### 5. Enrollment
Attributes collected:
- Student ID
- Course ID
- Semester
- Grade (assumed values like A, A+, B+, etc.)

**Source:**  
Academic structure and assumptions for grades

---

## Tasks

### Part A: Data Insertion
- Write `INSERT INTO` SQL queries for all tables
- Insert **at least 10 records** in each of the following tables:
  - Student
  - Course
  - Enrollment
- Ensure:
  - No primary key duplication
  - All foreign key constraints are satisfied

---

### Part B: Verification
- Execute the following query for each table:
  ```sql
  SELECT * FROM table_name;