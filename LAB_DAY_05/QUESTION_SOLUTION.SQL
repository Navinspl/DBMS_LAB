-- Part A: Student–Enrollment Relationship 


-- 1. Display StudentID and Name from Student table along with CourseID from 
-- Enrollment table. 

SQL> SELECT S.STUDENT_ID ,S.NAME,E.COURSE_ID
  2  FROM STUDENT02 S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID;

STUDENT_ID NAME                                                COURSE_ID
---------- -------------------------------------------------- ----------
     23700 Navin Kumar                                             10101
     23701 Raushan Kumar                                           10201
     23721 Topper Kumari                                           10301
     23711 ASHA Kumari                                             10401
     23703 HARSHIT Kumar                                           10501
     23705 RAHUL Kumar                                             10701
     23706 Rajnish Kumar                                           10601
     23725 himanshu gupta                                          10801
     23751 Abhisheka gupta                                         10901
     23738 ankita mishra                                          101001

10 rows selected.

-- 2. Display student Name and Semester for all enrolled students. 

SQL> SELECT S.STUDENT_ID , E.SEMESTER
  2  FROM STUDENT02 S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID;

STUDENT_ID SEMESTER
---------- --------------------
     23700 5th
     23701 5th
     23721 4th
     23711 4th
     23703 4th
     23706 4th
     23705 5th
     23725 5th
     23751 5th
     23738 5th

10 rows selected.

-- 3. Display student Name and Grade obtained in each course. 

SQL> SELECT S.NAME,E.GRADE
  2  FROM STUDENT02 S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID;

NAME                                               GRADE
-------------------------------------------------- -----
Navin Kumar                                        A
Raushan Kumar                                      A++
Topper Kumari                                      B++
ASHA Kumari                                        B
HARSHIT Kumar                                      B
RAHUL Kumar                                        C++
Rajnish Kumar                                      C
himanshu gupta                                     A
Abhisheka gupta                                    A++
ankita mishra                                      A

10 rows selected.


-- Part B: Course–Faculty Relationship


-- 4. Display CourseName and Credits along with the Faculty Name who teaches 
-- the course. 


SQL> SELECT C.COURSE_NAME,C.CREDITS,F.NAME
  2  FROM COURSE02 C
  3  INNER JOIN FACULTY F
  4  ON C.FACULTY_ID = F.FACULTY_ID;

COURSE_NAME                                           CREDITS NAME
-------------------------------------------------- ---------- --------------------------------------------------
C++                                                         3 Prof. Murlidhar Prasad Singh (HoD)
EGD                                                         1 Prof. Md. Ehtashamoul Haque(HoD)
DBMS                                                        4 Prof. Murlidhar Prasad Singh(HoD)
ML                                                          6 Sujeet Kumar
AI                                                          5 Prof. Manisha Kumari Singh
COMPUTER NETWORK                                            3 Prof. Md. Izhar
MATHEMATICS                                                 2 Prof. Hare Krishna Mishra
SCIENCE                                                     6 Prof. Arbind Kumar Amar
COMPUTER DESIGN                                             5 Prof. Akhilesh kumar (HoD)
surveying                                                   4 Prof. Kunal Kumar (HoD)

10 rows selected.

-- 5. Display all courses taught by a faculty member whose FacultyID is 'F201'. 

SQL> SELECT COURSE_NAME
  2  FROM COURSE02 C
  3  INNER JOIN FACULTY F
  4  ON C.FACULTY_ID = F.FACULTY_ID
  5  WHERE F.FACULTY_ID = '1031';

COURSE_NAME
--------------------------------------------------
SCIENCE

-- 6. Display faculty Name and Designation along with the CourseName they teach. 

SQL> SELECT F.NAME ,F.DESIGNATION,C.COURSE_NAME
  2  FROM FACULTY F
  3  INNER JOIN COURSE02 C
  4  ON F.FACULTY_ID = C.FACULTY_ID;

NAME                                               DESIGNATION                                        COURSE_NAME
-------------------------------------------------- -------------------------------------------------- --------------------------------------------------
Prof. Kunal Kumar (HoD)                            Designation: Assistant Professor 1 of Department   surveying
Prof. Akhilesh kumar (HoD)                         Civil Engineering with Computer Application        COMPUTER DESIGN
Prof. Arbind Kumar Amar                            Associate Professor, Principal-in-charge           SCIENCE
Prof. Hare Krishna Mishra                          ASSISTANT PROFESSOR                                MATHEMATICS
Prof. Murlidhar Prasad Singh (HoD)                 Assistant Professor, Head of Department            C++
Prof. Md. Ehtashamoul Haque(HoD)                   Assistant Professor                                EGD
Prof. Murlidhar Prasad Singh(HoD)                  Assistant Professor, Head of Department            DBMS
Sujeet Kumar                                       ASSISTANT PROFESSOR                                ML
Prof. Manisha Kumari Singh                         ASSISTANT PROFESSOR                                AI
Prof. Md. Izhar                                    ASSISTANT PROFESSOR                                COMPUTER NETWORK

10 rows selected.


-- Part C: Student–Course–Enrollment Relationship 


-- 7. Display student Name along with CourseName for all enrollments.

SQL> SELECT S.NAME ,C.COURSE_NAME
  2  FROM STUDENT02 S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID
  5  INNER JOIN COURSE02 C
  6  ON E.COURSE_ID = C.COURSE_ID;

NAME                                               COURSE_NAME
-------------------------------------------------- --------------------------------------------------
Navin Kumar                                        surveying
Raushan Kumar                                      COMPUTER DESIGN
Topper Kumari                                      SCIENCE
ASHA Kumari                                        MATHEMATICS
HARSHIT Kumar                                      C++
RAHUL Kumar                                        DBMS
Rajnish Kumar                                      EGD
himanshu gupta                                     ML
Abhisheka gupta                                    AI
ankita mishra                                      COMPUTER NETWORK

10 rows selected.

-- 8. Display student Name, CourseName, and Semester. 

SQL> SELECT S.NAME, C.COURSE_NAME ,E.SEMESTER
  2  FROM STUDENT02 S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID
  5  INNER JOIN COURSE02 C
  6  ON E.COURSE_ID = C.COURSE_ID;

NAME                                               COURSE_NAME                                        SEMESTER
-------------------------------------------------- -------------------------------------------------- --------------------
Navin Kumar                                        surveying                                          5th
Raushan Kumar                                      COMPUTER DESIGN                                    5th
Topper Kumari                                      SCIENCE                                            4th
ASHA Kumari                                        MATHEMATICS                                        4th
HARSHIT Kumar                                      C++                                                4th
RAHUL Kumar                                        DBMS                                               5th
Rajnish Kumar                                      EGD                                                4th
himanshu gupta                                     ML                                                 5th
Abhisheka gupta                                    AI                                                 5th
ankita mishra                                      COMPUTER NETWORK                                   5th

10 rows selected.

-- 9. Display student Name, CourseName, and Grade for Semester 4 only. 



-- 10. Display all courses taken by a student whose StudentID is 'S401'. 

SQL> SELECT C.COURSE_NAME
  2  FROM COURSE02 C
  3  INNER JOIN ENROLLMENT E
  4  ON C.COURSE_ID = E.COURSE_ID
  5  INNER JOIN STUDENT02 S
  6  ON S.STUDENT_ID = E.STUDENT_ID
  7  WHERE S.STUDENT_ID = '23751';

COURSE_NAME
--------------------------------------------------
AI


-- Part D: Department-Based JOIN Queries 


-- 11. Display student Name and DepartmentID along with CourseName.

SQL> SELECT S.NAME ,S.DEPARTMENT_ID,C.COURSE_NAME
  2  FROM STUDENT02 S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID
  5  INNER JOIN COURSE02 C
  6  ON E.COURSE_ID = C.COURSE_ID;

NAME                                               DEPARTMENT_ID COURSE_NAME
-------------------------------------------------- ------------- --------------------------------------------------
Navin Kumar                                                  106 surveying
Raushan Kumar                                                107 COMPUTER DESIGN
Topper Kumari                                                108 SCIENCE
ASHA Kumari                                                  109 MATHEMATICS
HARSHIT Kumar                                               1010 C++
RAHUL Kumar                                                  101 DBMS
Rajnish Kumar                                                102 EGD
himanshu gupta                                               103 ML
Abhisheka gupta                                              104 AI
ankita mishra                                                105 COMPUTER NETWORK

10 rows selected.

-- 12. Display department-wise list of courses using DepartmentID. 

SQL> SELECT DEPARTMENT_ID ,COURSE_NAME
  2  FROM COURSE02
  3  ORDER BY DEPARTMENT_ID;

DEPARTMENT_ID COURSE_NAME
------------- --------------------------------------------------
          101 surveying
          102 COMPUTER DESIGN
          103 SCIENCE
          104 MATHEMATICS
          105 C++
          106 EGD
          107 DBMS
          108 ML
          109 AI
         1010 COMPUTER NETWORK

10 rows selected.

-- 13. Display faculty Name along with department name they belong to. 

SQL> SELECT F.NAME,D.DEPARTMENT_NAME
  2  FROM FACULTY F
  3  INNER JOIN DEPARTMENT D
  4  ON F.DEPARTMENT_ID = D.DEPARTMENT_ID;

NAME                                               DEPARTMENT_NAME
-------------------------------------------------- --------------------
Prof. Kunal Kumar (HoD)                            Civil Engineering
Prof. Akhilesh kumar (HoD)                         C.E With C.W.C
Prof. Arbind Kumar Amar                            Mechanical Eng
Prof. Hare Krishna Mishra                          EEE
Prof. Murlidhar Prasad Singh (HoD)                 CSE
Prof. Md. Ehtashamoul Haque(HoD)                   CSE(AI0)
Prof. Murlidhar Prasad Singh(HoD)                  3DAG
Sujeet Kumar                                       APPLIED SCE 1
Prof. Manisha Kumari Singh                         ECE
Prof. Md. Izhar                                    ROBOTICES

10 rows selected.


-- Part E: JOIN with Filtering and Sorting 


-- 14. Display student Name and CourseName for students belonging to Department 
-- 'D101(106)'.

SQL> SELECT S.NAME,C.COURSE_NAME
  2  FROM STUDENT02 S
  3  INNER JOIN Enrollment E
  4  ON S.Student_ID = E.Student_ID
  5  INNER JOIN Course02 C
  6  ON E.Course_ID = C.Course_ID
  7  WHERE S.Department_ID = '106';

NAME                                               COURSE_NAME
-------------------------------------------------- --------------------------------------------------
Navin Kumar                                        surveying

-- 15. Display student Name and CourseName sorted by student name in ascending 
-- order. 

SQL> SELECT S.Name, C.Course_Name
  2  FROM Student02 S
  3  INNER JOIN Enrollment E
  4  ON S.Student_ID = E.Student_ID
  5  INNER JOIN Course02 C
  6  ON E.Course_ID = C.Course_ID
  7  ORDER BY S.Name ASC;

NAME                                               COURSE_NAME
-------------------------------------------------- --------------------------------------------------
ASHA Kumari                                        MATHEMATICS
Abhisheka gupta                                    AI
HARSHIT Kumar                                      C++
Navin Kumar                                        surveying
RAHUL Kumar                                        DBMS
Rajnish Kumar                                      EGD
Raushan Kumar                                      COMPUTER DESIGN
Topper Kumari                                      SCIENCE
ankita mishra                                      COMPUTER NETWORK
himanshu gupta                                     ML

10 rows selected.

-- 16. Display faculty Name and CourseName sorted by course credits in descending 
-- order. 

SQL> SELECT F.Name, C.Course_Name
  2  FROM Faculty F
  3  INNER JOIN Course02 C
  4  ON F.Faculty_ID = C.Faculty_ID
  5  ORDER BY C.Credits DESC;

NAME                                               COURSE_NAME
-------------------------------------------------- --------------------------------------------------
Prof. Arbind Kumar Amar                            SCIENCE
Sujeet Kumar                                       ML
Prof. Akhilesh kumar (HoD)                         COMPUTER DESIGN
Prof. Manisha Kumari Singh                         AI
Prof. Murlidhar Prasad Singh(HoD)                  DBMS
Prof. Kunal Kumar (HoD)                            surveying
Prof. Md. Izhar                                    COMPUTER NETWORK
Prof. Murlidhar Prasad Singh (HoD)                 C++
Prof. Hare Krishna Mishra                          MATHEMATICS
Prof. Md. Ehtashamoul Haque(HoD)                   EGD

10 rows selected.



-- Part F: Analytical JOIN Queries 


-- 17. Display number of students enrolled in each course. 

SQL> SELECT C.Course_Name, COUNT(E.Student_ID) AS TotalStudents
  2  FROM Course02 C
  3  INNER JOIN Enrollment E
  4  ON C.Course_ID = E.Course_ID
  5  GROUP BY C.Course_Name;

COURSE_NAME                                        TOTALSTUDENTS
-------------------------------------------------- -------------
surveying                                                      1
COMPUTER DESIGN                                                1
SCIENCE                                                        1
MATHEMATICS                                                    1
C++                                                            1
EGD                                                            1
DBMS                                                           1
ML                                                             1
AI                                                             1
COMPUTER NETWORK                                               1

10 rows selected.

-- 18. Display number of courses taught by each faculty member. 

SQL> SELECT F.Name, COUNT(C.Course_ID) AS TotalCourses
  2  FROM Faculty F
  3  INNER JOIN Course02 C
  4  ON F.Faculty_ID = C.Faculty_ID
  5  GROUP BY F.Name;

NAME                                               TOTALCOURSES
-------------------------------------------------- ------------
Prof. Kunal Kumar (HoD)                                       1
Prof. Akhilesh kumar (HoD)                                    1
Prof. Arbind Kumar Amar                                       1
Prof. Hare Krishna Mishra                                     1
Prof. Murlidhar Prasad Singh (HoD)                            1
Prof. Md. Ehtashamoul Haque(HoD)                              1
Prof. Murlidhar Prasad Singh(HoD)                             1
Sujeet Kumar                                                  1
Prof. Manisha Kumari Singh                                    1
Prof. Md. Izhar                                               1

10 rows selected.

-- 19. Display department-wise count of students. 

SQL> SELECT Department_ID, COUNT(Student_ID) AS TotalStudents
  2  FROM Student02
  3  GROUP BY Department_ID;

DEPARTMENT_ID TOTALSTUDENTS
------------- -------------
          106             1
          107             1
          108             1
          109             1
         1010             1
          101             2
          102             1
          103             1
          104             1
          105             1

10 rows selected.

-- 20. Display course name along with maximum grade awarded in that course. 

SQL> SELECT C.Course_Name, MAX(E.Grade) AS MaxGrade
  2  FROM Course02 C
  3  INNER JOIN Enrollment E
  4  ON C.Course_ID = E.Course_ID
  5  GROUP BY C.Course_Name;

COURSE_NAME                                        MAXGR
-------------------------------------------------- -----
surveying                                          A
COMPUTER DESIGN                                    A++
SCIENCE                                            B++
MATHEMATICS                                        B
C++                                                B
EGD                                                C
DBMS                                               C++
ML                                                 A
AI                                                 A++
COMPUTER NETWORK                                   A

10 rows selected.


-- ................................END!................................
