# 🏫 College Management System (Java & SQL Server)
> **A Comprehensive Desktop Application for Managing Academic Operations using Java AWT and SQL Server.**

<div align="center">

![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![SQL Server](https://img.shields.io/badge/SQL_Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![JDBC](https://img.shields.io/badge/JDBC-Connection-blue?style=for-the-badge)
![GUI](https://img.shields.io/badge/Interface-Java_AWT-green?style=for-the-badge)

</div>

---

### 🌟 Project Overview
The **College Management System** is a professional desktop solution designed to automate administrative tasks in educational institutions. It features a robust multi-frame GUI built with Java AWT and a relational database backend hosted on Microsoft SQL Server. The system handles everything from student enrollments to course assignments and department management. 

---

### 🚀 Key Features
* 👨‍🏫 **Instructor Management:** Register instructors with multi-contact details and assign them to departments.
* 🏢 **Department Tracking:** Manage department locations and link them to unique heads (1:1 Relationship).
* 📚 **Course Administration:** Define courses, set durations, and assign specialized instructors.
* 🎓 **Student Portal:** Maintain comprehensive student records and contact information.
* 📝 **Smart Enrollment:** Facilitate student-course registration with automated date tracking (Many-to-Many Relationship).
* 🖥️ **Centralized Home Page:** A unified navigation hub to switch seamlessly between different management modules.

---

### 🛠️ Technical Architecture

| Component | Technology | Description |
| :--- | :--- | :--- |
| **Frontend** | `Java AWT` | Custom-built frames with Event Handling and hover effects. |
| **Backend** | `JDBC` | Secure database connectivity using `PreparedStatement` to prevent SQL Injection. |
| **Database** | `MS SQL Server` | Relational schema with primary/foreign keys and constraints. |
| **UI/UX** | `ActionListeners` | Interactive buttons for Insert, Update, Delete, and Reset operations. |

---

### 📂 Database Schema (SQL)
The system is built on a highly normalized relational model:
* **Instructors Table:** Stores personal and contact data.
* **Department Table:** Includes a `UNIQUE` Instructor_ID to enforce a 1:1 Head-of-Department relationship.
* **Courses Table:** Linked to Instructors (1:N) with duration constraints.
* **Students Table:** Stores unique student profiles.
* **Enrollment Table:** A junction table for the M:N relationship between Students and Courses.

---

### 📂 Project Structure
```text
├── college/
│   ├── College.java      # Main Entry Point & JDBC Connection Setup
│   ├── HomePage.java     # Navigation Dashboard
│   ├── Instructor.java   # Instructor Management UI & Logic
│   ├── Student.java      # Student Management UI & Logic
│   ├── Courses.java      # Course Management UI & Logic
│   ├── Department.java   # Department Management UI & Logic
│   └── Enrollment.java   # Enrollment Logic (Junction Table)
└── SQL/
    └── College_DB.sql    # Database Creation & Table Schemas
