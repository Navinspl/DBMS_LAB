-- Part C: SQL Implementation


-- 1. Write SQL CREATE TABLE statements for all tables.
-- 2. Use appropriate:

-- ○ Data types
-- ○ Primary key constraints
-- ○ Foreign key constraints



SQL*Plus: Release 21.0.0.0.0 - Production on Thu Feb 12 17:57:02 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:


Last Successful login time: Mon Feb 09 2026 16:44:47 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0


-- START

SQL> create table Department(
  2  Department_Id INT PRIMARY KEY,
  3  Department_Name varchar2(20),
  4  Office_Location varchar(50)
  5  );

Table created.

SQL> CREATE TABLE STUDENT02(
  2      Student_ID INT PRIMARY KEY,
  3      Name VARCHAR(50),
  4      Date_of_Birth DATE,
  5      Gender VARCHAR(10),
  6      Contact_Number VARCHAR(15),
  7      Department_ID INT,
  8      FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
  9  );

Table created.

SQL> CREATE TABLE Faculty (
  2      Faculty_ID INT PRIMARY KEY,
  3      Name VARCHAR(50),
  4      Designation VARCHAR(50),
  5      Email VARCHAR(50),
  6      Department_ID INT,
  7      FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
  8  );

Table created.

SQL>  CREATE TABLE Course02 (
  2      Course_ID INT PRIMARY KEY,
  3      Course_Name VARCHAR(50),
  4      Credits INT,
  5      Department_ID INT,
  6      Faculty_ID INT,
  7      FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID),
  8      FOREIGN KEY (Faculty_ID) REFERENCES Faculty(Faculty_ID)
  9  );

Table created.

SQL> CREATE TABLE Enrollment (
  2      Enrollment_ID INT PRIMARY KEY,
  3      Semester VARCHAR(20),
  4      Grade VARCHAR(5),
  5      Student_ID INT,
  6      Course_ID INT,
  7      FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
  8      FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
  9  );
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
                                                *
ERROR at line 7:
ORA-00904: "STUDENT_ID": invalid identifier


SQL>  CREATE TABLE Enrollment (
  2      Enrollment_ID INT PRIMARY KEY,
  3      Semester VARCHAR(20),
  4      Grade VARCHAR(5),
  5      Student_ID INT,
  6      Course_ID INT,
  7      FOREIGN KEY (Student_ID) REFERENCES STUDENT02(Student_ID),
  8      FOREIGN KEY (Course_ID) REFERENCES Course02(Course_ID)
  9  );

Table created.


............................END!...........................
