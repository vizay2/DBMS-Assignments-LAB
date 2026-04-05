# DBMS Lab 6 – Data Aggregation using GROUP BY and HAVING

## 📘 Lab Title
**Data Aggregation using GROUP BY and HAVING**

## 🎯 Objective
The objective of this lab is to understand how to summarize and analyze data using SQL aggregate functions and to apply `GROUP BY` and `HAVING` clauses to generate meaningful grouped reports from database tables without modifying the stored data.

---

## 🛠️ Concepts Covered
- Aggregate Functions in SQL
- GROUP BY Clause
- GROUP BY with Multiple Columns
- HAVING Clause
- GROUP BY with JOIN
- Analytical Queries

---

## 📌 Aggregate Functions Used
| Function | Description |
|--------|-------------|
| COUNT() | Counts number of rows |
| SUM()   | Calculates total |
| AVG()   | Calculates average |
| MAX()   | Finds maximum value |
| MIN()   | Finds minimum value |

### Example
```sql
SELECT COUNT(*) AS Total_Students
FROM Student;
