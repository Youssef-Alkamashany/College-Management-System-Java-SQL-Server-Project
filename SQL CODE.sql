CREATE DATABASE College 
USE College 

-- FIRST create Instructors
CREATE TABLE Instructors (
    Instructor_ID INT PRIMARY KEY,
    F_Name NVARCHAR(50) NOT NULL,
    L_Name NVARCHAR(50) NOT NULL,
    F_Phone NCHAR(11) NOT NULL,                    --BECAUSE IT'S A MULTI-VALUED ATTRIBUTE AND IN EGYPT THERE'S ONLY 2 NUMBERS IN CELL PHONES
    L_Phone NCHAR(11)                              --THERE'S ONLY 2 NUMBERS IN CELL PHONES
);

-- THEN create Department (with the FK to Instructors)
CREATE TABLE Department (
    D_Name NVARCHAR(50),
    D_Location NVARCHAR(50) NOT NULL,
    Instructor_ID INT UNIQUE,      --ENFORCES(1,1)                    --MAKING A RELATIONSHIP (1 TO 1)       
    PRIMARY KEY (D_Name, D_Location),                                 --WHICH IT'S COMPOSITE KEY
    FOREIGN KEY (Instructor_ID) REFERENCES Instructors(Instructor_ID)     --FOREIGN KEY FROM THE TABLE INSTRUCTORS     
);

CREATE TABLE Courses (
    C_ID INT PRIMARY KEY,
    C_Name NVARCHAR(50) NOT NULL,
    Duration INT CHECK(Duration BETWEEN 1 AND 3),
	Instructor_ID INT,                                                    --MAKING A RELATIONSHIP (1 TO N)
	FOREIGN KEY (Instructor_ID) REFERENCES Instructors(Instructor_ID)     --FOREIGN KEY FROM THE TABLE INSTRUCTORS   
);

CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    F_Name NVARCHAR(50) NOT NULL,
    L_Name NVARCHAR(50) NOT NULL,
    F_Phone NCHAR(11) NOT NULL,                     --BECAUSE IT'S A MULTI-VALUED ATTRIBUTE AND IN EGYPT THERE'S ONLY 2 NUMBERS IN CELL PHONES
    L_Phone NCHAR(11)                               ----THERE'S ONLY 2 NUMBERS IN CELL PHONES
);

--CREATING A TABLE CALLED ENROLLMENT AS THE SAME NAME OF THE RELATIONSHIP BETWEEN STUDENTS & COURSES
 CREATE TABLE Enrollment(
  Student_ID INT,
  C_ID INT,
 -- IT'S OPTIONAL TO PUT AN EXTRA ATTRIBUTES IF NEEDED
 Enrollment_Date DATE DEFAULT(GETDATE())                    --USE CONSTRAINT DEFAULT IF THERE'S NO VALUE 
                                                            --SO THE VALUE PUT AUTOMATICALLY
PRIMARY KEY(Student_ID, C_ID ),                              --[COMPOSITE KEY] BECAUSE CAN'T USE 2 PRIMARY KEYS IN ONE TABLE
FOREIGN KEY (Student_ID ) REFERENCES Students(Student_ID ),   --FOREIGN KEY FROM TABLE STUDENTS
FOREIGN KEY (C_ID) REFERENCES Courses (C_ID )                 -- --FOREIGN KEY FROM TABLE COURSES
 );


 SELECT * FROM Instructors
 SELECT * FROM Department
 SELECT * FROM Courses
 SELECT * FROM Students
 SELECT * FROM Enrollment