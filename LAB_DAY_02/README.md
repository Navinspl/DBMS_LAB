📖 Project Overview

The College Database contains 5 main entities:

Department

Student

Faculty

Course

Enrollment

🧩 Part A – ER Diagram
✅ Entities and Attributes
1️⃣ Department

Department_ID (Primary Key)

Department_Name

Office_Location

👉 One department can have many students, faculty members, and courses.

2️⃣ Student

Student_ID (Primary Key)

Name

Date_of_Birth

Gender

Contact_Number

Department_ID (Foreign Key)

👉 One student belongs to one department.
👉 One student can enroll in many courses.

3️⃣ Faculty

Faculty_ID (Primary Key)

Name

Designation

Email

Department_ID (Foreign Key)

👉 One faculty works in one department.
👉 One faculty can teach many courses.

4️⃣ Course

Course_ID (Primary Key)

Course_Name

Credits

Department_ID (Foreign Key)

Faculty_ID (Foreign Key)

👉 One course belongs to one department.
👉 One course is taught by one faculty.
👉 Many students can enroll in one course.

5️⃣ Enrollment

Enrollment_ID (Primary Key)

Student_ID (Foreign Key)

Course_ID (Foreign Key)

Semester

Grade

👉 This table handles the Many-to-Many relationship between Student and Course.

🔗 Relationships & Cardinality
Relationship	Type
Department → Student	1 : Many
Department → Faculty	1 : Many
Department → Course	1 : Many
Faculty → Course	1 : Many
Student ↔ Course	Many : Many (via Enrollment)
🗄 Part B – Relational Tables
Department Table

PK: Department_ID

Student Table

PK: Student_ID

FK: Department_ID → Department

Faculty Table

PK: Faculty_ID

FK: Department_ID → Department

Course Table

PK: Course_ID

FK: Department_ID → Department

FK: Faculty_ID → Faculty

Enrollment Table

PK: Enrollment_ID

FK: Student_ID → Student

FK: Course_ID → Course

💻 Part C – SQL Implementation

Below are the SQL CREATE TABLE statements.

🔹 Create Department Table
CREATE TABLE Department (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(50),
    Office_Location VARCHAR(50)
);

🔹 Create Student Table
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Date_of_Birth DATE,
    Gender VARCHAR(10),
    Contact_Number VARCHAR(15),
    Department_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

🔹 Create Faculty Table
CREATE TABLE Faculty (
    Faculty_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Designation VARCHAR(50),
    Email VARCHAR(50),
    Department_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

🔹 Create Course Table
CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
    Credits INT,
    Department_ID INT,
    Faculty_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID),
    FOREIGN KEY (Faculty_ID) REFERENCES Faculty(Faculty_ID)
);

🔹 Create Enrollment Table
CREATE TABLE Enrollment (
    Enrollment_ID INT PRIMARY KEY,
    Student_ID INT,
    Course_ID INT,
    Semester VARCHAR(20),
    Grade VARCHAR(5),
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);

📂 Submission Files

Your GitHub repository should contain:

📁 College-Database
 ├── ER_Diagram.png
 ├── create_tables.sql
 └── README.md