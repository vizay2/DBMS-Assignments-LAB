# 📚DBMS Lab 2
## 📌 Objective
This project demonstrates the design of a College Database System using ER modeling and its conversion into relational tables with SQL implementation.
The aim is to understand entities, relationships, primary keys, foreign keys, and handling many-to-many relationships.
## 🏫 Entities and Description
### 1️⃣ Department
Stores information about academic departments like CSE, ECE, etc.
Primary Key: Department_ID
Other attributes: Department_Name, Office_Location
One department can have many students, faculty members, and courses.
### 2️⃣ Student
Stores student details.
Primary Key: Student_ID
Attributes: Name, Date_of_Birth, Gender, Contact_Number
Foreign Key: Department_ID
A student belongs to one department but can enroll in multiple courses.
### 3️⃣ Faculty
Stores faculty information.
Primary Key: Faculty_ID
Attributes: Name, Designation, Email
Foreign Key: Department_ID
A faculty member works in one department and can teach multiple courses.
### 4️⃣ Course
Stores course details offered by departments.
Primary Key: Course_ID
Attributes: Course_Name, Credits
Foreign Keys: Department_ID, Faculty_ID
A course belongs to one department and is taught by one faculty member.
### 5️⃣ Enrollment
Represents the many-to-many relationship between Student and Course.
Composite Primary Key: (Student_ID, Course_ID)
Attributes: Semester, Grade
Stores additional details for each course enrollment.
## 🔗 Relationships
Department → Student (1:M)
Department → Faculty (1:M)
Department → Course (1:M)
Faculty → Course (1:M)
Student ↔ Course (M:N) implemented using Enrollment table
## 📂Project Files
ER Diagram (created using draw.io)
SQL file containing all CREATE TABLE statements
## 🎯Learning Outcomes
Understanding ER diagram concepts
Converting ER models into relational schema
Implementing primary and foreign key constraints
Managing many-to-many relationships using a junction table
