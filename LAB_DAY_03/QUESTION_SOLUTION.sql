-- Data Collection and Data Insertion in College Database 
-- Objective: To understand real-world data collection and data insertion in a 
-- relational database using SQL. 

-- Instructions (Read Carefully) 
-- 1. Use the database schema created in Lab–2 (ER diagram and tables). 
-- 2. Do not use imaginary or random data. 
-- 3. All data must be collected from authentic sources, such as: 
-- ○ Official college website 
-- ○ Department webpages 
-- ○ Class timetable 
-- ○ Academic notices / prospectus 
-- 4. Data should correspond to B.P. Mandal College of Engineering, Madhepura, Bihar. 
-- Data Collection Guidelines 
-- Students are required to observe and collect real values for the following: 
-- 1. Department 
-- ● Department ID (self-defined) 
-- ● Department Name (as per college records) 
-- ● Office Location / Block (if available); otherwise, put something like Block A, Block B… 
-- etc. 
-- �
-- �
-- Source: College website / department page 
-- 2. Faculty 
-- ● Faculty ID (self-defined) 
-- ● Faculty Name (as mentioned on website/timetable) 
-- ● Designation 
-- ● Official Email ID 
-- ● Department 
-- �
-- �
-- Source: Department faculty list / timetable 
-- 3. Course 
-- ● Course ID (self-defined) 
-- ● Course Name (as per syllabus) 
-- ● Credits (if available) 
-- ● Department 
-- ● Faculty teaching the course 
-- �
-- �
-- Source: Syllabus / timetable 
-- 4. Student 
-- ● Student ID (self-defined) 
-- ● Student Name 
-- ● Date of Birth 
-- ● Gender 
-- ● Contact Number 
-- ● Department  
-- ⚠
-- Do not use real personal contact numbers of other students. Use dummy contact 
-- numbers only (e.g., 9XXXXXXXXX). 
-- �
-- �
-- Source: Roll list / class record (Use Friend’s details for keeping Variation in database.) 
-- 5. Enrollment 
-- ● Student ID 
-- ● Course ID 
-- ● Semester 
-- ● Grade (use assumed grades like A, B+, etc.) 
-- �
-- �
-- Source: Academic structure / assumption (grades can be assumed) 
-- Tasks




-- Part A: Data Insertion 

-- 1. Write INSERT INTO SQL queries to populate all tables. 
-- 2. Insert a minimum of 10 records in: 
-- ○ Student 
-- ○ Course 
-- ○ Enrollment 
-- 3. Ensure: 
-- ○ No primary key duplication 
-- ○ Foreign key constraints are satisfied  


SQL*Plus: Release 21.0.0.0.0 - Production on Mon Feb 16 11:36:17 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:



Last Successful login time: Sun Feb 15 2026 16:19:58 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0


-- */ describe all the table 


SQL> desc Enrollment


 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ENROLLMENT_ID                             NOT NULL NUMBER(38)
 SEMESTER                                           VARCHAR2(20)
 GRADE                                              VARCHAR2(5)
 STUDENT_ID                                         NUMBER(38)
 COURSE_ID                                          NUMBER(38)

SQL> desc Department
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPARTMENT_ID                             NOT NULL NUMBER(38)
 DEPARTMENT_NAME                                    VARCHAR2(20)
 OFFICE_LOCATION                                    VARCHAR2(50)

SQL> desc Faculty
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 FACULTY_ID                                NOT NULL NUMBER(38)
 NAME                                               VARCHAR2(50)
 DESIGNATION                                        VARCHAR2(50)
 EMAIL                                              VARCHAR2(50)
 DEPARTMENT_ID                                      NUMBER(38)

SQL> desc Course02
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSE_ID                                 NOT NULL NUMBER(38)
 COURSE_NAME                                        VARCHAR2(50)
 CREDITS                                            NUMBER(38)
 DEPARTMENT_ID                                      NUMBER(38)
 FACULTY_ID                                         NUMBER(38)

SQL> desc Student02
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENT_ID                                NOT NULL NUMBER(38)
 NAME                                               VARCHAR2(50)
 DATE_OF_BIRTH                                      DATE
 GENDER                                             VARCHAR2(10)
 CONTACT_NUMBER                                     VARCHAR2(15)
 DEPARTMENT_ID                                      NUMBER(38)



-- insert data  element in Relational table

-- ERROR Department

SQL> INSERT INTO Dpartment VALUES(D101,'Civil Engineering','Block_A');
INSERT INTO Dpartment VALUES(D101,'Civil Engineering','Block_A')
            *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> INSERT INTO Department VALUES(D101,'Civil Engineering','Block_A');
INSERT INTO Department VALUES(D101,'Civil Engineering','Block_A')
                              *
ERROR at line 1:
ORA-00984: column not allowed here

-- inserted data element in Department table 

SQL> INSERT INTO Department VALUES(101,'Civil Engineering','Block_A');

1 row created.

SQL> INSERT INTO Department VALUES(102,'C.E With C.W.C ','Block_B');

1 row created.

SQL> INSERT INTO Department VALUES(103,'Mechanical Eng','Block_C');

1 row created.

SQL> INSERT INTO Department VALUES(104,'EEE','Block_D');

1 row created.

SQL> INSERT INTO Department VALUES(105,'CSE','Block_E');

1 row created.

SQL> INSERT INTO Department VALUES(106,'CSE(AI&ML)','Block_F');
Enter value for ml: 0
old   1: INSERT INTO Department VALUES(106,'CSE(AI&ML)','Block_F')
new   1: INSERT INTO Department VALUES(106,'CSE(AI0)','Block_F')

1 row created.

SQL> INSERT INTO Department VALUES(107,'3DAG','Block_G');

1 row created.

SQL> INSERT INTO Department VALUES(108,'APPLIED SCE & HUM','Block_H');
Enter value for hum: 1
old   1: INSERT INTO Department VALUES(108,'APPLIED SCE & HUM','Block_H')
new   1: INSERT INTO Department VALUES(108,'APPLIED SCE 1','Block_H')

1 row created.

SQL> INSERT INTO Department VALUES(109,'ECE','Block_J');

1 row created.

SQL> INSERT INTO Department VALUES(1010,'ROBOTICES','Block_K');

1 row created.


-- Inserted element in faculty table 



SQL> INSERT INTO Faculty VALUES(1051,'Prof. Murlidhar Prasad Singh (HoD)','Assistant Professor, Head of Department','singhmurlidhar@gmail.com',105);

1 row created.

SQL> INSERT INTO Faculty VALUES(1061,'Prof. Md. Ehtashamoul Haque(HoD)','Assistant Professor','ehtasham47@gmail.com',106);

1 row created.
 
SQL> INSERT INTO Faculty VALUES(1071,'Prof. Murlidhar Prasad Singh(HoD)','Assistant Professor, Head of Department','singhmurlidhar@gmail.com',107);

1 row created.

SQL> INSERT INTO Faculty VALUES(1081,'Sujeet Kumar','ASSISTANT PROFESSOR','ksujeet.cs@gmail.com',108);

1 row created.

SQL> INSERT INTO Faculty VALUES(1091,'Prof. Manisha Kumari Singh','ASSISTANT PROFESSOR','manisha.ks241@gmail.com',109);

1 row created.

SQL> INSERT INTO Faculty VALUES(10101,'Prof. Md. Izhar','ASSISTANT PROFESSOR','mdizhar1996@gmail.com',1010);

1 row created.

SQL> INSERT INTO Faculty VALUES(1041,'Prof. Hare Krishna Mishra','ASSISTANT PROFESSOR',' hare.dbit@gmail.com',104);

1 row created.

SQL> INSERT INTO Faculty VALUES(1031,'Prof. Arbind Kumar Amar','Associate Professor, Principal-in-charge','ak_amar73@yahoo.com',103);

1 row created.

SQL> INSERT INTO Faculty VALUES(1021,'Prof. Akhilesh kumar (HoD)','Civil Engineering with Computer Application','akhileshkumar3804@gmail.com',102);

1 row created.

SQL> INSERT INTO Faculty VALUES(1011,'Prof. Kunal Kumar (HoD)','Designation: Assistant Professor & Head of Department','kunal1989kumar@gmail.com',101);
Enter value for head: 1
old   1: INSERT INTO Faculty VALUES(1011,'Prof. Kunal Kumar (HoD)','Designation: Assistant Professor & Head of Department','kunal1989kumar@gmail.com',101)
new   1: INSERT INTO Faculty VALUES(1011,'Prof. Kunal Kumar (HoD)','Designation: Assistant Professor 1 of Department','kunal1989kumar@gmail.com',101)

1 row created.


-- Inserted data  element in Course02 table 



SQL> INSERT INTO Course02 VALUES(10101,'surveying',4,101,1011);

1 row created.

SQL> INSERT INTO Course02 VALUES(10201,'COMPUTER DESIGN',5,102,1021);

1 row created.

SQL> INSERT INTO Course02 VALUES(10301,'SCIENCE',6,103,1031);

1 row created.

SQL> INSERT INTO Course02 VALUES(10401,'MATHEMATICS',2,104,1041);

1 row created.

SQL> INSERT INTO Course02 VALUES(10501,'C++',3,105,1051);

1 row created.

SQL> INSERT INTO Course02 VALUES(10601,'EGD',1,106,1061);

1 row created.

SQL> INSERT INTO Course02 VALUES(10701,'DBMS',4,107,1071);

1 row created.

SQL> INSERT INTO Course02 VALUES(10801,'ML',6,108,1081);

1 row created.

SQL> INSERT INTO Course02 VALUES(10901,'AI',5,109,1091);

1 row created.

SQL> INSERT INTO Course02 VALUES(101001,'COMPUTER NETWORK',3,1010,10101);

1 row created.


-- Inserted  data element in Student02
 

SQL> INSERT INTO Student02 VALUES(23705,'RAHUL Kumar',DATE'2005-08-02','Male','7870728429',101);

1 row created.
SQL> INSERT INTO Student02 VALUES(23706,'Rajnish Kumar',DATE'2005-05-02','Male','7870728425',102);

1 row created.

SQL> INSERT INTO Student02 VALUES(23725,'himanshu gupta',DATE'2005-05-12','Male','7870728422',103);

1 row created.

SQL> INSERT INTO Student02 VALUES(23751,'Abhisheka gupta',DATE'2005-05-12','Female','7870788422',104);

1 row created.

SQL> INSERT INTO Student02 VALUES(23738,'ankita mishra',DATE'2005-09-12','Female','7850788422',105);

1 row created.

SQL> INSERT INTO Student02 VALUES(23700,'Navin Kumar',DATE'2004-12-03','Male','7870728406',106);

1 row created.

SQL> INSERT INTO Student02 VALUES(23701,'Raushan Kumar',DATE'2000-02-03','Male','7870728407',107);

1 row created.

SQL> INSERT INTO Student02 VALUES(23721,'Topper Kumari',DATE'2005-02-03','Female','7870728408',108);

1 row created.

SQL> INSERT INTO Student02 VALUES(23711,'ASHA Kumari',DATE'2009-08-02','Female','7870728409',109);

1 row created.

SQL> INSERT INTO Student02 VALUES(23703,'HARSHIT Kumar',DATE'2005-08-02','Male','7870728419',1010);

1 row created.
 

--  Inserted data element in Enrollment table

 

SQL> INSERT INTO Enrollment VALUES(23157128001,'5th','A',23700,10101);

1 row created.

SQL> INSERT INTO Enrollment VALUES(23157128002,'5th','A++',23701,10201);

1 row created.

SQL> INSERT INTO Enrollment VALUES(23157128003,'4th','B++',23721,10301);

1 row created.

SQL> INSERT INTO Enrollment VALUES(23157128004,'4th','B',23711,10401);

1 row created.

SQL> INSERT INTO Enrollment VALUES(23157128005,'4th','B',23703,10501);

1 row created.

SQL> INSERT INTO Enrollment VALUES(23157128006,'4th','C',23706,10601);

1 row created.

SQL> INSERT INTO Enrollment VALUES(23157128007,'5th','C++',23705,10701);

1 row created.

SQL> INSERT INTO Enrollment VALUES(23157128008,'5th','A',23725,10801);

1 row created.

SQL> INSERT INTO Enrollment VALUES(23157128009,'5th','A++',23751,10901);

1 row created.

SQL> INSERT INTO Enrollment VALUES(23157128038,'5th','A',23738,101001);

1 row created.





-- Part B: Verification 


-- 1. Execute SELECT * FROM table_name; for all tables. 
-- 2. Take screenshots of the output.

SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SET WRAP OFF
SQL> COLUMN column_name FORMAT A30
SQL> SELECT * FROM Department;

DEPARTMENT_ID DEPARTMENT_NAME      OFFICE_LOCATION
------------- -------------------- --------------------------------------------------
          101 Civil Engineering    Block_A
          102 C.E With C.W.C       Block_B
          103 Mechanical Eng       Block_C
          104 EEE                  Block_D
          105 CSE                  Block_E
          106 CSE(AI0)             Block_F
          107 3DAG                 Block_G
          108 APPLIED SCE 1        Block_H
          109 ECE                  Block_J
         1010 ROBOTICES            Block_K

10 rows selected.

SQL> select * from Faculty;

FACULTY_ID NAME                                               DESIGNATION                                        EMAIL                                              DEPARTMENT_ID
---------- -------------------------------------------------- -------------------------------------------------- -------------------------------------------------- -------------
      1051 Prof. Murlidhar Prasad Singh (HoD)                 Assistant Professor, Head of Department            singhmurlidhar@gmail.com                                     105
      1061 Prof. Md. Ehtashamoul Haque(HoD)                   Assistant Professor                                ehtasham47@gmail.com                                         106
      1071 Prof. Murlidhar Prasad Singh(HoD)                  Assistant Professor, Head of Department            singhmurlidhar@gmail.com                                     107
      1081 Sujeet Kumar                                       ASSISTANT PROFESSOR                                ksujeet.cs@gmail.com                                         108
      1091 Prof. Manisha Kumari Singh                         ASSISTANT PROFESSOR                                manisha.ks241@gmail.com                                      109
     10101 Prof. Md. Izhar                                    ASSISTANT PROFESSOR                                mdizhar1996@gmail.com                                       1010
      1041 Prof. Hare Krishna Mishra                          ASSISTANT PROFESSOR                                 hare.dbit@gmail.com                                         104
      1031 Prof. Arbind Kumar Amar                            Associate Professor, Principal-in-charge           ak_amar73@yahoo.com                                          103
      1021 Prof. Akhilesh kumar (HoD)                         Civil Engineering with Computer Application        akhileshkumar3804@gmail.com                                  102
      1011 Prof. Kunal Kumar (HoD)                            Designation: Assistant Professor 1 of Department   kunal1989kumar@gmail.com                                     101

10 rows selected.

SQL> select * from Course02;

 COURSE_ID COURSE_NAME                                           CREDITS DEPARTMENT_ID FACULTY_ID
---------- -------------------------------------------------- ---------- ------------- ----------
     10101 surveying                                                   4           101       1011
     10201 COMPUTER DESIGN                                             5           102       1021
     10301 SCIENCE                                                     6           103       1031
     10401 MATHEMATICS                                                 2           104       1041
     10501 C++                                                         3           105       1051
     10601 EGD                                                         1           106       1061
     10701 DBMS                                                        4           107       1071
     10801 ML                                                          6           108       1081
     10901 AI                                                          5           109       1091
    101001 COMPUTER NETWORK                                            3          1010      10101

10 rows selected.

SQL> select * from Student02;

STUDENT_ID NAME                                               DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
---------- -------------------------------------------------- --------- ---------- --------------- -------------
     23700 Navin Kumar                                        03-DEC-04 Male       7870728406                106
     23701 Raushan Kumar                                      03-FEB-00 Male       7870728407                107
     23721 Topper Kumari                                      03-FEB-05 Female     7870728408                108
     23711 ASHA Kumari                                        02-AUG-09 Female     7870728409                109
     23703 HARSHIT Kumar                                      02-AUG-05 Male       7870728419               1010
     23705 RAHUL Kumar                                        02-AUG-05 Male       7870728429                101
     23706 Rajnish Kumar                                      02-MAY-05 Male       7870728425                102
     23725 himanshu gupta                                     12-MAY-05 Male       7870728422                103
     23751 Abhisheka gupta                                    12-MAY-05 Female     7870788422                104
     23738 ankita mishra                                      12-SEP-05 Female     7850788422                105

10 rows selected.

SQL> select * from Enrollment;

ENROLLMENT_ID SEMESTER             GRADE STUDENT_ID  COURSE_ID
------------- -------------------- ----- ---------- ----------
   2.3157E+10 5th                  A          23700      10101
   2.3157E+10 5th                  A++        23701      10201
   2.3157E+10 4th                  B++        23721      10301
   2.3157E+10 4th                  B          23711      10401
   2.3157E+10 4th                  B          23703      10501
   2.3157E+10 4th                  C          23706      10601
   2.3157E+10 5th                  C++        23705      10701
   2.3157E+10 5th                  A          23725      10801
   2.3157E+10 5th                  A++        23751      10901
   2.3157E+10 5th                  A          23738     101001

10 rows selected.

SQL>



 .........................END!......................