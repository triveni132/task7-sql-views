# Task 7 – Creating SQL Views

🎯 *Objective:*  
Learn to create and use views in SQL for data abstraction and reusability.

🛠 *Tools Used:*  
- DB Browser for SQLite  
- SQL Language

---

## 📘 Key Concepts

- *Views:* Virtual tables based on SQL SELECT queries.
- *Data Abstraction:* Hide complexity and sensitive data using views.
- *Reusability:* Views can be reused like tables in other queries.

---

## 🗂️ Tables Created

### 1. employees

| Column     | Type     |
|------------|----------|
| emp_id     | INTEGER  |
| name       | TEXT     |
| department | TEXT     |
| salary     | INTEGER  |

### 2. departments

| Column     | Type    |
|------------|---------|
| dept_name  | TEXT (Primary Key) |
| location   | TEXT    |

---

## 🧠 Views Created

### 🔹 high_salary_employees
Employees with salary greater than 55000.
