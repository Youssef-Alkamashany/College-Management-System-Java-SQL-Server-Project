# 🏫 College Management System (End-to-End Engineering)
> **A complete Academic ERP solution covering System Analysis, Database Design, and Full-Stack Java Implementation.**

<div align="center">

![Java](https://img.shields.io/badge/Java-100%25-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![SQL Server](https://img.shields.io/badge/SQL_Server-2019-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![UML](https://img.shields.io/badge/Documentation-UML_&_ERD-blue?style=for-the-badge)
![Architecture](https://img.shields.io/badge/Design-MVC_Pattern-green?style=for-the-badge)

</div>

---

### 🌟 Project Overview
This project showcases a **Full Software Development Lifecycle (SDLC)**. It’s not just code; it’s a documented system that starts from requirement analysis and database modeling to a functional desktop application built with **100% Java** and **SQL Server**.

---

### 📊 System Analysis & Design (UML)
The system is documented with high-level architectural diagrams to ensure logical consistency:
* **Use Case Diagram:** Defines the roles of the **Admin** (managing students, instructors, and courses) and the **Student** (enrollment and profile management).
* **Detailed Use Case Scenario:** A full breakdown of the "Change Student Information" process, including triggers, preconditions, and main path steps.
* **Activity Diagram:** A swimlane-based flow showing the interaction between the **Admin**, **Form**, and **System** during core processes like "Add Student".

---

### 🗄️ Database Architecture (ERD & Schema)
The database is designed for high data integrity and normalization:
* **ERD (Entity Relationship Diagram):** Defines entities like `Students`, `Instructors`, `Departments`, and `Courses` with their respective attributes and relationships.
* **Relational Schema:** Implementation of structured relationships:
    * **1:1 Relationship:** Between `Department` and `Instructors` (Management).
    * **1:N Relationship:** Between `Instructors` and `Courses` (Teaching).
    * **M:N Relationship:** Between `Students` and `Courses` (Enrollment) via the `Enrollment` junction table.
* **Multi-valued Attributes:** Handled via dedicated normalization (e.g., handling multiple phone numbers for students and instructors).

---

### 🛠️ Technical Implementation
* **Frontend (Java GUI):** Modular interface for each entity (`Student.java`, `Instructor.java`, `Department.java`, etc.) built with Java AWT.
* **Backend (Java 100%):** Robust logic handling data flow, event listeners, and user actions.
* **Connectivity (JDBC):** Secure bridge to SQL Server using the `College.java` connection class.
* **Database (T-SQL):** Optimized queries for CRUD operations and data persistence using primary and foreign keys.

---

### 📂 Repository Structure
```text
├── src/college/            # 100% Java Source Code (GUI & Logic)
├── database/               # SQL Scripts & Relational Schema
├── documentation/          
│   ├── UML/                # Use Cases & Activity Diagrams
│   └── ERD/                # Entity Relationship Diagrams & Relational Schema
└── README.md               # Project Documentation
