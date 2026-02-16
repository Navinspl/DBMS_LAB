# DBMS_LAB
Lab assignment and solution 
📘 SQL Practical – Student Database
🧑‍🎓 Overview

In this practical, we performed basic SQL operations:

Create tables

Modify table structure

Insert data

Update data

Delete data

Display records

This project helps beginners understand DDL and DML commands in SQL.

🔹 PART A – DDL (Data Definition Language)
1️⃣ Create Student Table

We created a table named Student with the following columns:

RollNo (Integer)

Name (Text)

Dept (Text)

Age (Integer)

Phone (Text)

CREATE TABLE Student (
  RollNo INT,
  Name VARCHAR(50),
  Dept VARCHAR(20),
  Age INT,
  Phone VARCHAR(15)
);

2️⃣ Create Course Table

We created another table named Course.

CREATE TABLE Course (
  CourseID INT,
  CourseName VARCHAR(50),
  Credits INT
);

3️⃣ Add New Column (City)

We added a new column City to Student table.

ALTER TABLE Student
ADD City VARCHAR(50);

4️⃣ Add Semester Column
ALTER TABLE Student
ADD Semester INT;

5️⃣ Rename Column

We renamed column Phone to MobileNo.

ALTER TABLE Student
RENAME COLUMN Phone TO MobileNo;

6️⃣ Drop Course Table

We deleted the Course table.

DROP TABLE Course;

🔹 PART B – DML (Data Manipulation Language)
7️⃣ Insert Records

We inserted 5 student records.

INSERT INTO Student VALUES (23721,'NAVIN KUMAR','CSE(AI_ML)',21,'7870728403','SUPAUL',5);


(Similar 4 more records inserted)

8️⃣ Display All Records
SELECT * FROM Student;


This shows all data in the Student table.

9️⃣ Display Only RollNo and Name
SELECT RollNo, Name FROM Student;


This shows only selected columns.

🔟 Display Students from CSE Department
SELECT * FROM Student
WHERE Dept = 'CSE';


This shows only students from CSE department.

1️⃣1️⃣ Display Students Older Than 20
SELECT * FROM Student
WHERE Age > 20;

1️⃣2️⃣ Update Department
UPDATE Student
SET Dept = 'ECE'
WHERE RollNo = 23721;

1️⃣3️⃣ Update City
UPDATE Student
SET City = 'PATNA'
WHERE Name = 'RAHUL RAJ YADAV';

1️⃣4️⃣ Increase Age by 1
UPDATE Student
SET Age = Age + 1;


This increases age of all students.

1️⃣5️⃣ Delete One Record
DELETE FROM Student
WHERE RollNo = 23722;

1️⃣6️⃣ Delete All Records
DELETE FROM Student;


This removes all records but keeps the table structure.

🎯 Conclusion

In this practical, we learned:

How to create and modify tables

How to insert, update, and delete data

How to filter data using WHERE condition

Basic understanding of SQL commands
