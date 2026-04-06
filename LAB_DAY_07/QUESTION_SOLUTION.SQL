-- Lab Questions


-- Part A: Basic Subqueries


-- 1. Display names of students who belong to the same department as student ‘S401’.


SQL>  SELECT Name
  2  FROM Student02
  3  WHERE Department_ID =(
  4  SELECT DEPARTMENT_ID
  5   FROM Student02
  6  WHERE Student_ID = '23700'
  7  );

NAME
--------------------------------------------------
Navin Kumar

-- 2. Display students who have the same gender as student ‘S402’.

SQL> SELECT Name
  2  FROM Student02
  3  WHERE Gender = (
  4      SELECT Gender
  5  from student02
  6  where student_id = '23700'
  7  );

NAME
--------------------------------------------------
Navin Kumar
Raushan Kumar
HARSHIT Kumar
RAHUL Kumar
Rajnish Kumar
himanshu gupta

6 rows selected.


-- 3. Display students belonging to the same department as ‘S403’.

SQL> SELECT Name
  2  FROM Student02
  3  WHERE Department_ID =(
  4     SELECT department_id
  5     from student02
  6     where Student_ID = '23700'
  7  );

NAME
--------------------------------------------------
Navin Kumar



-- Part B: Subqueries with IN


-- 4. Display students whose DepartmentID exists where Gender is ‘Female’.

SQL> SELECT Name
  2  FROM Student02
  3  WHERE Department_ID IN (
  4  SELECT DEPARTMENT_ID
  5  FROM STUDENT02
  6  WHERE GENDER = 'FEMALE'
  7  );

no rows selected

-- 5. Display students whose StudentID appears in the Enrollment table.
 
 SQL> SELECT Name
  2  FROM Student02
  3  WHERE STUDENT_ID IN (
  4  SELECT STUDENT_ID
  5  FROM ENROLLMENT
  6  );

NAME
--------------------------------------------------
Navin Kumar
Raushan Kumar
Topper Kumari
ASHA Kumari
HARSHIT Kumar
Rajnish Kumar
RAHUL Kumar
himanshu gupta
Abhisheka gupta
ankita mishra

10 rows selected.

-- 6. Display students who are enrolled in any course.

SQL> SELECT Name
  2  FROM Student02
  3  WHERE EXISTS (
  4  SELECT *
  5  FROM ENROLLMENT
  6  WHERE STUDENT02.STUDENT_ID = ENROLLMENT.STUDENT_ID
  7  );

NAME
--------------------------------------------------
Navin Kumar
Raushan Kumar
Topper Kumari
ASHA Kumari
HARSHIT Kumar
Rajnish Kumar
RAHUL Kumar
himanshu gupta
Abhisheka gupta
ankita mishra

10 rows selected.



-- Part C: Subqueries with Aggregate Functions


-- 7. Display courses having credits greater than average credits.


SQL> SELECT COURSE_NAME
  2  FROM COURSE02
  3  WHERE CREDITS > (
  4  SELECT AVG(CREDITS)
  5  FROM COURSE02
  6  );

COURSE_NAME
--------------------------------------------------
surveying
COMPUTER DESIGN
SCIENCE
DBMS
ML
AI

6 rows selected.

-- 8. Display students whose StudentID is greater than the average StudentID (assume
-- numeric comparison).


SQL> SELECT Name
  2  FROM Student02
  3  WHERE STUDENT_ID > (
  4  SELECT AVG(STUDENT_ID)
  5  FROM STUDENT02
  6  );

NAME
--------------------------------------------------
Topper Kumari
himanshu gupta
ankita mishra
Abhisheka gupta

-- 9. Display departments having more students than the average number of students per
-- department.


SQL> SELECT DEPARTMENT_ID
  2  FROM STUDENT02
  3  GROUP BY DEPARTMENT_ID
  4  HAVING COUNT(*) > (
  5      SELECT AVG(CNT)
  6      FROM (
  7          SELECT COUNT(*) CNT
  8          FROM STUDENT02
  9          GROUP BY DEPARTMENT_ID
 10      ) temp
 11  );

DEPARTMENT_ID
-------------
          101



-- Part D: Subqueries Instead of JOIN


-- 10. Display names of students who are enrolled in courses (without using JOIN).



SQL> SELECT Name
  2  FROM Student02
  3  WHERE Student_ID IN (
  4      SELECT Student_ID
  5      FROM Enrollment
  6  );

NAME
--------------------------------------------------
Navin Kumar
Raushan Kumar
Topper Kumari
ASHA Kumari
HARSHIT Kumar
Rajnish Kumar
RAHUL Kumar
himanshu gupta
Abhisheka gupta
ankita mishra

10 rows selected.

-- 11. Display students who are allocated to any department (using subquery logic).

SQL> SELECT Name
  2  FROM Student02
  3  WHERE Department_ID IS NOT NULL;

NAME
--------------------------------------------------
Navin Kumar
Raushan Kumar
Topper Kumari
ASHA Kumari
HARSHIT Kumar
RAHUL Kumar
Rajnish Kumar
himanshu gupta
Abhisheka gupta
ankita mishra
ANKIT RAJ

11 rows selected.

-- 12. Display courses that have at least one student enrolled.

SQL> SELECT Course_Name
  2  FROM Course02
  3  WHERE Course_ID IN (
  4      SELECT Course_ID
  5      FROM Enrollment
  6  );

COURSE_NAME
--------------------------------------------------
surveying
COMPUTER DESIGN
SCIENCE
MATHEMATICS
C++
EGD
DBMS
ML
AI
COMPUTER NETWORK

10 rows selected.


-- Part E: Analytical Subqueries


-- 13. Display the course with maximum credits.

SQL> SELECT Course_Name
  2  FROM Course02
  3  WHERE Credits = (
  4      SELECT MAX(Credits)
  5      FROM Course02
  6  );

COURSE_NAME
--------------------------------------------------
SCIENCE
ML


-- 14. Display students who are enrolled in more than one course.

SQL> SELECT Student_ID
  2  FROM Enrollment
  3  GROUP BY Student_ID
  4  HAVING COUNT(*) > 1;

no rows selected

-- 15. Display departments having the maximum number of students.


SQL> SELECT Department_ID
  2  FROM Student02
  3  GROUP BY Department_ID
  4  HAVING COUNT(*) = (
  5      SELECT MAX(cnt)
  6      FROM (
  7          SELECT COUNT(*) cnt
  8          FROM Student02
  9          GROUP BY Department_ID
 10      ) temp
 11  );

DEPARTMENT_ID
-------------
          101


-- Part F: Challenging Questions


-- 16. Display students who are enrolled in the same course as student ‘S401’.


SQL> SELECT Name
  2  FROM Student02
  3  WHERE Student_ID IN (
  4      SELECT Student_ID
  5      FROM Enrollment
  6      WHERE Course_ID IN (
  7          SELECT Course_ID
  8          FROM Enrollment
  9          WHERE Student_ID = '23700'
 10      )
 11  );

NAME
--------------------------------------------------
Navin Kumar

-- 17. Display students who are not enrolled in any course.


SQL> SELECT Name
  2  FROM Student02
  3  WHERE Student_ID NOT IN (
  4      SELECT Student_ID
  5      FROM Enrollment
  6  );

NAME
--------------------------------------------------
ANKIT RAJ


-- 18. Display courses that have no students enrolled.


SQL> SELECT Course_Name
  2  FROM Course02
  3  WHERE Course_ID NOT IN (
  4      SELECT Course_ID
  5      FROM Enrollment
  6  );

no rows selected


-- .................END!.......................