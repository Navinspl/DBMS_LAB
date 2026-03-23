-- Part A: Basic Aggregate Queries


-- 1. Display the total number of students in the Student table.


SQL> SELECT COUNT(*) AS TOTAL_STUDENTS
  2  FROM STUDENT02;

TOTAL_STUDENTS
--------------
            11

-- 2. Display the total number of faculty members in the Faculty table.

SQL> SELECT COUNT(*) AS TOTAL_FACULTY
  2  FROM FACULTY;

TOTAL_FACULTY
-------------
           10

-- 3. Display the total number of courses available in the Course table.

SQL> SELECT COUNT(*) AS TOTAL_COURSE
  2  FROM COURSE02;

TOTAL_COURSE
------------
          10

-- 4. Display the maximum credits among all courses.


SQL> SELECT MAX(CREDITS) AS MAX_CREDITS
  2  FROM COURSE02;

MAX_CREDITS
-----------
          6

-- 5. Display the minimum credits offered by any course.


SQL> SELECT MIN(CREDITS) AS MAX_CREDITS
  2  FROM COURSE02;

MAX_CREDITS
-----------
          1



-- Part B: GROUP BY on Single Tables


-- 6. Display the number of students in each DepartmentID from the Student table.


SQL> SELECT DEPARTMENT_ID,COUNT(*) AS TOTAL_STUDENTS
  2  FROM STUDENT02
  3  GROUP BY DEPARTMENT_ID;

DEPARTMENT_ID TOTAL_STUDENTS
------------- --------------
          106              1
          107              1
          108              1
          109              1
         1010              1
          101              2
          102              1
          103              1
          104              1
          105              1

10 rows selected.

-- 7. Display the number of faculty members in each DepartmentID from the Faculty table.


SQL> SELECT DEPARTMENT_ID,COUNT(*) AS TOTAL_FACULTY
  2  FROM FACULTY
  3  GROUP BY DEPARTMENT_ID;

DEPARTMENT_ID TOTAL_FACULTY
------------- -------------
          105             1
          106             1
          107             1
          108             1
          109             1
         1010             1
          104             1
          103             1
          102             1
          101             1

10 rows selected.

-- 8. Display the number of courses offered by each DepartmentID from the Course table.

SQL> SELECT DEPARTMENT_ID,COUNT(*) AS TOTAL_COURSE
  2  FROM COURSE02
  3  GROUP BY DEPARTMENT_ID;

DEPARTMENT_ID TOTAL_COURSE
------------- ------------
          101            1
          102            1
          103            1
          104            1
          105            1
          106            1
          107            1
          108            1
          109            1
         1010            1

10 rows selected.

-- 9. Display the number of enrollments in each Semester from the Enrollment table.

SQL> SELECT SEMESTER,COUNT(*) AS TOTAL_ENROLLMENTS
  2  FROM ENROLLMENT
  3  GROUP BY SEMESTER;

SEMESTER             TOTAL_ENROLLMENTS
-------------------- -----------------
5th                                  6
4th                                  4

-- 10. Display the number of students for each Grade in the Enrollment table.


SQL> SELECT GRADE ,COUNT(*) AS TOTAL_STUDENTS
  2  FROM ENROLLMENT
  3  GROUP BY GRADE;

GRADE TOTAL_STUDENTS
----- --------------
A                  3
A++                2
B++                1
B                  2
C                  1
C++                1

6 rows selected.



-- Part C: GROUP BY with HAVING


-- 11. Display departments having more than 3 students.


SQL> SELECT DEPARTMENT_ID,COUNT(*) AS TOTAL_STUDENTS
  2  FROM STUDENT02
  3  GROUP BY DEPARTMENT_ID
  4  HAVING COUNT(*) > 3;

no rows selected

-- 12. Display semesters where more than 2 enrollments exist.

SQL> SELECT SEMESTER , COUNT(*) AS TOTAL_ENROLLMENT
  2  FROM ENROLLMENT
  3  GROUP BY SEMESTER
  4  HAVING COUNT(*) > 2;

SEMESTER             TOTAL_ENROLLMENT
-------------------- ----------------
5th                                 6
4th                                 4

-- 13. Display grades that are assigned to more than one student.


SQL> SELECT GRADE, COUNT(*) AS TOTAL_STUDENTS
  2  FROM ENROLLMENT
  3  GROUP BY GRADE
  4  HAVING COUNT(*) > 1;

GRADE TOTAL_STUDENTS
----- --------------
A                  3
A++                2
B                  2

-- 14. Display DepartmentIDs where more than one course is offered.


SQL> SELECT DEPARTMENT_ID, COUNT(*) AS TOTAL_COURSE
  2  FROM COURSE02
  3  GROUP BY DEPARTMENT_ID
  4  HAVING COUNT(*) > 1;

no rows selected



-- Part D: Aggregation with JOIN


-- 15. Display the number of students enrolled in each CourseID.


SQL> SELECT COURSE_ID , COUNT(STUDENT_ID) AS TOTAL_STUDENTS
  2  FROM ENROLLMENT
  3  GROUP BY COURSE_ID;

 COURSE_ID TOTAL_STUDENTS
---------- --------------
     10101              1
     10201              1
     10301              1
     10401              1
     10501              1
     10601              1
     10701              1
     10801              1
     10901              1
    101001              1

10 rows selected.

-- 16. Display CourseName and number of students enrolled in that course.


SQL> SELECT COURSE02.COURSE_NAME,
  2  COUNT(ENROLLMENT.STUDENT_ID) AS TOTAL_STUDENTS
  3   FROM COURSE02
  4  INNER JOIN ENROLLMENT
  5  ON COURSE02.COURSE_ID = ENROLLMENT.COURSE_ID
  6  GROUP BY COURSE02.COURSE_NAME;

COURSE_NAME                                        TOTAL_STUDENTS
-------------------------------------------------- --------------
surveying                                                       1
COMPUTER DESIGN                                                 1
SCIENCE                                                         1
MATHEMATICS                                                     1
C++                                                             1
EGD                                                             1
DBMS                                                            1
ML                                                              1
AI                                                              1
COMPUTER NETWORK                                                1

10 rows selected.

-- 17. Display DepartmentID and number of students belonging to that department.


SQL> SELECT DEPARTMENT_ID, COUNT(*) AS TOTAL_STUDENTS
  2  FROM STUDENT02
  3  GROUP BY DEPARTMENT_ID;

DEPARTMENT_ID TOTAL_STUDENTS
------------- --------------
          106              1
          107              1
          108              1
          109              1
         1010              1
          101              2
          102              1
          103              1
          104              1
          105              1

10 rows selected.

-- 18. Display Faculty Name and number of courses taught by each faculty member.


SQL> SELECT FACULTY.NAME,
  2  COUNT(COURSE02.COURSE_ID) AS TOTAL_COURSE
  3  FROM FACULTY
  4  INNER JOIN COURSE02
  5  ON FACULTY.FACULTY_ID = COURSE02.FACULTY_ID
  6  GROUP BY FACULTY.NAME;

NAME                                               TOTAL_COURSE
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



-- Part E: Analytical Queries


-- 19. Display CourseName and maximum grade obtained in that course.

SQL> SELECT Course02.Course_Name, MAX(Enrollment.Grade) AS Max_Grade
  2  FROM Course02
  3  INNER JOIN Enrollment
  4  ON Course02.Course_ID = Enrollment.Course_ID
  5  GROUP BY Course02.Course_Name;

COURSE_NAME                                        MAX_G
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

-- 20. Display DepartmentID and total number of courses offered in that department.


SQL> SELECT Department_ID, COUNT(*) AS Total_Courses
  2  FROM Course02
  3  GROUP BY Department_ID;

DEPARTMENT_ID TOTAL_COURSES
------------- -------------
          101             1
          102             1
          103             1
          104             1
          105             1
          106             1
          107             1
          108             1
          109             1
         1010             1

10 rows selected.

-- 21. Display Semester and total number of students enrolled in that semester.


SQL> SELECT Semester, COUNT(Student_ID) AS Total_Students
  2  FROM Enrollment
  3  GROUP BY Semester;

SEMESTER             TOTAL_STUDENTS
-------------------- --------------
5th                               6
4th                               4

-- 22. Display courses that have more than 2 students enrolled.


SQL> SELECT Course_ID, COUNT(Student_ID) AS Total_Students
  2  FROM Enrollment
  3  GROUP BY Course_ID
  4  HAVING COUNT(Student_ID) > 2;

no rows selected

-- ......................... END! ..................