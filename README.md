# 📘 DBMS PL/SQL in PostgreSQL

![Database](https://img.shields.io/badge/Database-PostgreSQL-blue)
![Language](https://img.shields.io/badge/Language-PLpgSQL-green)
![Course](https://img.shields.io/badge/Course-DBMS-orange)

## 📖 About the Repository

This repository contains **DBMS practical implementations using PL/pgSQL in PostgreSQL**.  
It includes examples of **cursors, triggers, stored procedures, MapReduce concepts, and database operations** typically performed in **SPPU 3rd Year DBMS practicals**.

The aim of this repository is to demonstrate how **database logic can be implemented directly inside the database using procedural SQL**.

---

# 🧠 Concepts Covered

The repository demonstrates the following **database programming concepts**:

- Stored Procedures
- Triggers
- Cursors
- Database Functions
- MapReduce using SQL
- Table operations and queries

These concepts help in understanding **server-side database programming** and **automation of database operations**.

---

# 📂 Repository Structure

| File | Description |
|-----|-------------|
| `cursor.sql` | Demonstrates use of cursors for row-by-row data processing |
| `fine.sql` | Example SQL program for calculating fines or conditional operations |
| `mapReduce` | Implementation of MapReduce using map and reduce functions |
| `stored.sql` | Stored procedures and table operations for student results |
| `trigger.sql` | Trigger implementation for auditing and automatic database actions |
| `README.md` | Documentation for the repository |

---

# 🛠 Technologies Used

- **Database:** PostgreSQL  
- **Language:** PL/pgSQL (Procedural Language for PostgreSQL)  
- **Concepts:** Database Programming, Triggers, Stored Procedures, Cursors  

---

# ⚙️ How to Run the SQL Files

## 1️⃣ Install PostgreSQL

Download and install **PostgreSQL** from the official website:

https://www.postgresql.org/download/

---

## 2️⃣ Open PostgreSQL Terminal (psql)

Start the PostgreSQL command line tool:

```bash
psql -U postgres
```

---

## 3️⃣ Create a Database

```sql
CREATE DATABASE dbms_practicals;
```

---

## 4️⃣ Connect to the Database

```sql
\c dbms_practicals
```

---

## 5️⃣ Run SQL Files

Execute any SQL file from the repository:

```bash
psql -U postgres -d dbms_practicals -f filename.sql
```

Example:

```bash
psql -U postgres -d dbms_practicals -f trigger.sql
```

---

# 📚 Learning Objectives

This repository helps students to:

- Understand **database procedural programming**
- Learn how **triggers automate database tasks**
- Work with **stored procedures and functions**
- Implement **advanced SQL logic**
- Gain practical experience with **PostgreSQL**

---

# 🎯 Applications of PL/pgSQL

PL/pgSQL is commonly used for:

- Database automation
- Data validation
- Business logic inside databases
- Auditing database operations
- Backend data processing

---

# 📈 Future Improvements

Possible improvements for this repository:

- Add **ER diagrams for database structure**
- Add **sample datasets**
- Add **query explanations**
- Add **transaction management examples**
- Add **indexing and optimization examples**

---

# 👩‍💻 Author

**Sayali Kale**

Computer Engineering Student  
Interested in:

- Databases
- Data Structures and Algorithms
- Artificial Intelligence
- Software Development
- LinkedIn:www.linkedin.com/in/sayali-kale-42001a2b1

---

# ⭐ Support

If you find this repository useful:

- ⭐ Star the repository
- 🍴 Fork it for practice
- 📢 Share it with other students learning DBMS

---
