# 🏫 College Management System (End-to-End Engineering)
> **A complete Academic ERP solution covering Requirement Analysis, Database Modeling, and Full-Stack Java Implementation.**

<div align="center">

![Java](https://img.shields.io/badge/Java-100%25-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![SQL Server](https://img.shields.io/badge/SQL_Server-2019-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![UML](https://img.shields.io/badge/Documentation-UML_&_ERD-blue?style=for-the-badge)
![Architecture](https://img.shields.io/badge/Design-Relational_Schema-green?style=for-the-badge)

</div>

---

### 🌟 Project Vision
This project is a showcase of the **Full Software Development Lifecycle (SDLC)**. It moves beyond simple coding to demonstrate professional **System Analysis** and **Database Architecture**. The system is engineered to manage complex college environments, handling everything from student lifecycles to faculty assignments and departmental hierarchies.

---

### 📊 System Analysis & Behavioral Design (UML)
The application logic is governed by standardized engineering blueprints to ensure a seamless user experience:
* **Use Case Diagram:** Maps out the interactions for **Admin**, **Students**, **Instructors**, and **Departments**, defining clear boundaries for administrative control and academic access.
* **Detailed Use Case Scenarios:** Includes deep-dive documentation for critical events like "Change Student Information," detailing triggers, preconditions, and post-conditions.
* **Activity Swimlane Diagram:** Visualizes the dynamic flow between the **Admin**, the **System Form**, and the **Core Logic** during complex data entry processes.

---

### 🗄️ Advanced Database Engineering (SQL & ERD)
The backend is a robust **SQL Server** relational model designed with strict adherence to normalization rules:
* **ERD (Entity Relationship Diagram):** Defines entities like `Students`, `Instructors`, `Departments`, and `Courses` with their complex logical connections.
* **Relational Schema & Mapping:** * **1:1 Management:** Linking `Department` to a unique `Instructor_ID` to enforce a single head of department.
    * **1:N Teaching:** Mapping `Instructors` to multiple `Courses`.
    * **M:N Enrollment:** Managed through a high-integrity `Enrollment` junction table linking Students and Courses.
* **Data Integrity & Constraints:** Implementation of Primary Keys, Foreign Keys, and CHECK constraints (e.g., Course Duration 1-3) to ensure zero data corruption.
* **Normalization (Multi-valued Attributes):** Optimized handling of multiple contact numbers for students and instructors via separate lookup tables.

---

### 🛠️ Tech Stack & Implementation
* **Frontend (Java GUI):** A modular, multi-frame desktop interface developed with **Java AWT** (e.g., `Instructor.java`, `Student.java`, `Department.java`).
* **Business Logic (100% Java):** The entire system flow, event handling, and internal data processing are written in pure Java.
* **Connectivity (JDBC):** A professional bridge to SQL Server using `DriverManager` and `PreparedStatement` to facilitate secure CRUD operations.
* **Storage (T-SQL):** Structured Query Language used for schema creation, persistent storage, and complex data retrieval.

---

### 📂 Repository Structure
```text
├── src/college/            # 100% Java Source Code (GUI & Logic)
├── database/               # T-SQL Scripts & Relational Schema
├── documentation/          
│   ├── UML/                # Use Cases & Activity Flowcharts
│   ├── ERD/                # Entity Relationship Diagrams
│   └── Relational_Mapping/ # Normalized Database Models
└── README.md               # Full Documentation
