
-- Part A: Basic Data Display (Using Aliases)


-- 1. Display all columns from the Student table using suitable aliases for every column.

SQL> SELECT
  2         STUDENT_ID AS Roll_NO,
  3         NAME AS Student_Name,
  4         DATE_OF_BIRTH AS DOB,
  5         GENDER AS GENDER,
  6         CONTACT_NUMBER AS Cont_No,
  7         DEPARTMENT_ID AS Dep_ID
  8  FROM STUDENT02;

   ROLL_NO STUDENT_NAME                                       DOB       GENDER     CONT_NO             DEP_ID
---------- -------------------------------------------------- --------- ---------- --------------- ----------
     23700 Navin Kumar                                        03-DEC-04 Male       7870728406             106
     23701 Raushan Kumar                                      03-FEB-00 Male       7870728407             107
     23721 Topper Kumari                                      03-FEB-05 Female     7870728408             108
     23711 ASHA Kumari                                        02-AUG-09 Female     7870728409             109
     23703 HARSHIT Kumar                                      02-AUG-05 Male       7870728419            1010
     23705 RAHUL Kumar                                        02-AUG-05 Male       7870728429             101
     23706 Rajnish Kumar                                      02-MAY-05 Male       7870728425             102
     23725 himanshu gupta                                     12-MAY-05 Male       7870728422             103
     23751 Abhisheka gupta                                    12-MAY-05 Female     7870788422             104
     23738 ankita mishra                                      12-SEP-05 Female     7850788422             105
     23702 ANKIT RAJ                                          09-DEC-05 MALE       7870728409             101

11 rows selected.

-- 2. Display only StudentID, Name, and DepartmentID from the Student table, renaming
-- them as Roll_No, Student_Name, and Dept_ID.


SQL> SELECT
  2       STUDENT_ID AS Roll_NO,
  3       NAME AS Stdent_Name,
  4       DEPARTMENT_ID AS Dep_ID
  5  FROM STUDENT02;

   ROLL_NO STDENT_NAME                                            DEP_ID
---------- -------------------------------------------------- ----------
     23700 Navin Kumar                                               106
     23701 Raushan Kumar                                             107
     23721 Topper Kumari                                             108
     23711 ASHA Kumari                                               109
     23703 HARSHIT Kumar                                            1010
     23705 RAHUL Kumar                                               101
     23706 Rajnish Kumar                                             102
     23725 himanshu gupta                                            103
     23751 Abhisheka gupta                                           104
     23738 ankita mishra                                             105
     23702 ANKIT RAJ                                                 101

11 rows selected.

-- 3. Display FacultyID, Name, Designation, and Email from the Faculty table using
-- readable column names.

SQL> SELECT
  2        FACULTY_ID AS FACULTY_ID,
  3        NAME AS Faculty_Name,
  4        DESIGNATION AS Designation,
  5        EMAIL AS Email_Address
  6  FROM FACULTY;

FACULTY_ID FACULTY_NAME                                       DESIGNATION                                        EMAIL_ADDRESS
---------- -------------------------------------------------- -------------------------------------------------- --------------------------------------------------
      1051 Prof. Murlidhar Prasad Singh (HoD)                 Assistant Professor, Head of Department            singhmurlidhar@gmail.com
      1061 Prof. Md. Ehtashamoul Haque(HoD)                   Assistant Professor                                ehtasham47@gmail.com
      1071 Prof. Murlidhar Prasad Singh(HoD)                  Assistant Professor, Head of Department            singhmurlidhar@gmail.com
      1081 Sujeet Kumar                                       ASSISTANT PROFESSOR                                ksujeet.cs@gmail.com
      1091 Prof. Manisha Kumari Singh                         ASSISTANT PROFESSOR                                manisha.ks241@gmail.com
     10101 Prof. Md. Izhar                                    ASSISTANT PROFESSOR                                mdizhar1996@gmail.com
      1041 Prof. Hare Krishna Mishra                          ASSISTANT PROFESSOR                                 hare.dbit@gmail.com
      1031 Prof. Arbind Kumar Amar                            Associate Professor, Principal-in-charge           ak_amar73@yahoo.com
      1021 Prof. Akhilesh kumar (HoD)                         Civil Engineering with Computer Application        akhileshkumar3804@gmail.com
      1011 Prof. Kunal Kumar (HoD)                            Designation: Assistant Professor 1 of Department   kunal1989kumar@gmail.com

10 rows selected.

-- 4. Display all columns from the Course table with renamed column headers.

SQL> SELECT
  2       COURSE_ID AS COURSE_ID,
  3       COURSE_NAME AS COURSE_NAME,
  4       CREDITS AS Course_Credits,
  5       DEPARTMENT_ID AS Dep_ID
  6  FROM COURSE02;

 COURSE_ID COURSE_NAME                                        COURSE_CREDITS     DEP_ID
---------- -------------------------------------------------- -------------- ----------
     10101 surveying                                                       4        101
     10201 COMPUTER DESIGN                                                 5        102
     10301 SCIENCE                                                         6        103
     10401 MATHEMATICS                                                     2        104
     10501 C++                                                             3        105
     10601 EGD                                                             1        106
     10701 DBMS                                                            4        107
     10801 ML                                                              6        108
     10901 AI                                                              5        109
    101001 COMPUTER NETWORK                                                3       1010

10 rows selected.

-- 5. Display all columns from the Enrollment table with meaningful aliases.


SQL> SELECT
  2       ENROLLMENT_ID AS ENROLLMENT_ID,
  3       Student_ID AS Student_ID,
  4       COURSE_ID AS Course_ID,
  5       SEMESTER AS Semester_No,
  6       GRADE AS Final_Grade
  7  FROM Enrollment;

ENROLLMENT_ID STUDENT_ID  COURSE_ID SEMESTER_NO          FINAL
------------- ---------- ---------- -------------------- -----
   2.3157E+10      23700      10101 5th                  A
   2.3157E+10      23701      10201 5th                  A++
   2.3157E+10      23721      10301 4th                  B++
   2.3157E+10      23711      10401 4th                  B
   2.3157E+10      23703      10501 4th                  B
   2.3157E+10      23706      10601 4th                  C
   2.3157E+10      23705      10701 5th                  C++
   2.3157E+10      23725      10801 5th                  A
   2.3157E+10      23751      10901 5th                  A++
   2.3157E+10      23738     101001 5th                  A

10 rows selected.



-- Part B: Conditional Data Display (WHERE Clause)



-- 6. Display all students whose DepartmentID is 'D101'.


SQL> SELECT *
  2  FROM Student02
  3  WHERE Department_ID = '101';

STUDENT_ID NAME                                               DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
---------- -------------------------------------------------- --------- ---------- --------------- -------------
     23705 RAHUL Kumar                                        02-AUG-05 Male       7870728429                101
     23702 ANKIT RAJ                                          09-DEC-05 MALE       7870728409                101

-- 7. Display all students whose Gender is 'Female'.

SQL> SELECT *
  2  FROM Student02
  3  WHERE GENDER = 'Female';

STUDENT_ID NAME                                               DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
---------- -------------------------------------------------- --------- ---------- --------------- -------------
     23721 Topper Kumari                                      03-FEB-05 Female     7870728408                108
     23711 ASHA Kumari                                        02-AUG-09 Female     7870728409                109
     23751 Abhisheka gupta                                    12-MAY-05 Female     7870788422                104
     23738 ankita mishra                                      12-SEP-05 Female     7850788422                105


-- 8. Display faculty members whose Designation is 'Assistant Professor'.
 
 SQL> SELECT *
  2  FROM Faculty
  3  WHERE DESIGNATION = 'ASSISTANT PROFESSOR';

FACULTY_ID NAME                                               DESIGNATION                                        EMAIL                                         DEPARTMENT_ID
---------- -------------------------------------------------- -------------------------------------------------- -------------------------------------------------- -------------
      1081 Sujeet Kumar                                       ASSISTANT PROFESSOR                                ksujeet.cs@gmail.com                            108
      1091 Prof. Manisha Kumari Singh                         ASSISTANT PROFESSOR                                manisha.ks241@gmail.com                         109
     10101 Prof. Md. Izhar                                    ASSISTANT PROFESSOR                                mdizhar1996@gmail.com                          1010
      1041 Prof. Hare Krishna Mishra                          ASSISTANT PROFESSOR                                 hare.dbit@gmail.com                            104

-- 9. Display faculty members whose DepartmentID is 'D102'.
 
 
SQL> SELECT *
  2  FROM Faculty
  3  WHERE Department_ID = '102';

FACULTY_ID NAME                                               DESIGNATION                                        EMAIL                                         DEPARTMENT_ID
---------- -------------------------------------------------- -------------------------------------------------- -------------------------------------------------- -------------
      1021 Prof. Akhilesh kumar (HoD)                         Civil Engineering with Computer Application        akhileshkumar3804@gmail.com                     102


-- 10. Display courses whose Credits are greater than or equal to 4.
 
 
SQL> SELECT *
  2  FROM Course02
  3  WHERE Credits >= 4;

 COURSE_ID COURSE_NAME                                           CREDITS DEPARTMENT_ID FACULTY_ID
---------- -------------------------------------------------- ---------- ------------- ----------
     10101 surveying                                                   4           101       1011
     10201 COMPUTER DESIGN                                             5           102       1021
     10301 SCIENCE                                                     6           103       1031
     10701 DBMS                                                        4           107       1071
     10801 ML                                                          6           108       1081
     10901 AI                                                          5           109       1091

6 rows selected.

-- 11. Display students born after 2003-01-01 using the DOB column.
 
 
SQL> SELECT *
  2  FROM Student02
  3  WHERE Date_OF_Birth > '01-FEB-2003';

STUDENT_ID NAME                                               DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
---------- -------------------------------------------------- --------- ---------- --------------- -------------
     23700 Navin Kumar                                        03-DEC-04 Male       7870728406                106
     23721 Topper Kumari                                      03-FEB-05 Female     7870728408                108
     23711 ASHA Kumari                                        02-AUG-09 Female     7870728409                109
     23703 HARSHIT Kumar                                      02-AUG-05 Male       7870728419               1010
     23705 RAHUL Kumar                                        02-AUG-05 Male       7870728429                101
     23706 Rajnish Kumar                                      02-MAY-05 Male       7870728425                102
     23725 himanshu gupta                                     12-MAY-05 Male       7870728422                103
     23751 Abhisheka gupta                                    12-MAY-05 Female     7870788422                104
     23738 ankita mishra                                      12-SEP-05 Female     7850788422                105
     23702 ANKIT RAJ                                          09-DEC-05 MALE       7870728409                101

10 rows selected.


-- 12. Display enrollment records for students enrolled in Semester 4.


SQL> SELECT *
  2  FROM Enrollment
  3  WHERE Semester = '4th';

ENROLLMENT_ID SEMESTER             GRADE STUDENT_ID  COURSE_ID
------------- -------------------- ----- ---------- ----------
   2.3157E+10 4th                  B++        23721      10301
   2.3157E+10 4th                  B          23711      10401
   2.3157E+10 4th                  B          23703      10501
   2.3157E+10 4th                  C          23706      10601



-- Part C: Sorting and Limiting Results



-- 13. Display student records sorted by Name in ascending order.
 
 SQL> SELECT *
  2  FROM Student02
  3  ORDER BY Name ASC;

STUDENT_ID NAME                                               DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
---------- -------------------------------------------------- --------- ---------- --------------- -------------
     23702 ANKIT RAJ                                          09-DEC-05 MALE       7870728409                101
     23711 ASHA Kumari                                        02-AUG-09 Female     7870728409                109
     23751 Abhisheka gupta                                    12-MAY-05 Female     7870788422                104
     23703 HARSHIT Kumar                                      02-AUG-05 Male       7870728419               1010
     23700 Navin Kumar                                        03-DEC-04 Male       7870728406                106
     23705 RAHUL Kumar                                        02-AUG-05 Male       7870728429                101
     23706 Rajnish Kumar                                      02-MAY-05 Male       7870728425                102
     23701 Raushan Kumar                                      03-FEB-00 Male       7870728407                107
     23721 Topper Kumari                                      03-FEB-05 Female     7870728408                108
     23738 ankita mishra                                      12-SEP-05 Female     7850788422                105
     23725 himanshu gupta                                     12-MAY-05 Male       7870728422                103

11 rows selected.

-- 14. Display student records sorted by DOB in descending order.


SQL> SELECT *
  2  FROM Student02
  3  ORDER BY DATE_OF_BIRTH DESC;

STUDENT_ID NAME                                               DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
---------- -------------------------------------------------- --------- ---------- --------------- -------------
     23711 ASHA Kumari                                        02-AUG-09 Female     7870728409                109
     23702 ANKIT RAJ                                          09-DEC-05 MALE       7870728409                101
     23738 ankita mishra                                      12-SEP-05 Female     7850788422                105
     23705 RAHUL Kumar                                        02-AUG-05 Male       7870728429                101
     23703 HARSHIT Kumar                                      02-AUG-05 Male       7870728419               1010
     23725 himanshu gupta                                     12-MAY-05 Male       7870728422                103
     23751 Abhisheka gupta                                    12-MAY-05 Female     7870788422                104
     23706 Rajnish Kumar                                      02-MAY-05 Male       7870728425                102
     23721 Topper Kumari                                      03-FEB-05 Female     7870728408                108
     23700 Navin Kumar                                        03-DEC-04 Male       7870728406                106
     23701 Raushan Kumar                                      03-FEB-00 Male       7870728407                107

11 rows selected.

-- 15. Display faculty records sorted by Designation in ascending order.


SQL> SELECT *
  2  FROM Faculty
  3  ORDER BY Designation ASC;

FACULTY_ID NAME                                               DESIGNATION                                        EMAIL                                         DEPARTMENT_ID
---------- -------------------------------------------------- -------------------------------------------------- -------------------------------------------------- -------------
      1091 Prof. Manisha Kumari Singh                         ASSISTANT PROFESSOR                                manisha.ks241@gmail.com                         109
      1041 Prof. Hare Krishna Mishra                          ASSISTANT PROFESSOR                                 hare.dbit@gmail.com                            104
     10101 Prof. Md. Izhar                                    ASSISTANT PROFESSOR                                mdizhar1996@gmail.com                          1010
      1081 Sujeet Kumar                                       ASSISTANT PROFESSOR                                ksujeet.cs@gmail.com                            108
      1061 Prof. Md. Ehtashamoul Haque(HoD)                   Assistant Professor                                ehtasham47@gmail.com                            106
      1071 Prof. Murlidhar Prasad Singh(HoD)                  Assistant Professor, Head of Department            singhmurlidhar@gmail.com                        107
      1051 Prof. Murlidhar Prasad Singh (HoD)                 Assistant Professor, Head of Department            singhmurlidhar@gmail.com                        105
      1031 Prof. Arbind Kumar Amar                            Associate Professor, Principal-in-charge           ak_amar73@yahoo.com                             103
      1021 Prof. Akhilesh kumar (HoD)                         Civil Engineering with Computer Application        akhileshkumar3804@gmail.com                     102
      1011 Prof. Kunal Kumar (HoD)                            Designation: Assistant Professor 1 of Department   kunal1989kumar@gmail.com                        101

10 rows selected.

-- 16. Display courses sorted by Credits in descending order.


SQL> SELECT *
  2  FROM Course02
  3  ORDER BY  CREDITS DESC;

 COURSE_ID COURSE_NAME                                           CREDITS DEPARTMENT_ID FACULTY_ID
---------- -------------------------------------------------- ---------- ------------- ----------
     10301 SCIENCE                                                     6           103       1031
     10801 ML                                                          6           108       1081
     10201 COMPUTER DESIGN                                             5           102       1021
     10901 AI                                                          5           109       1091
     10701 DBMS                                                        4           107       1071
     10101 surveying                                                   4           101       1011
    101001 COMPUTER NETWORK                                            3          1010      10101
     10501 C++                                                         3           105       1051
     10401 MATHEMATICS                                                 2           104       1041
     10601 EGD                                                         1           106       1061

10 rows selected.

-- 17. Display only the first 3 student records.
 
 
SQL> SELECT *
  2  FROM Student02
  3  FETCH FIRST 3 ROWS ONLY;

STUDENT_ID NAME                                               DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
---------- -------------------------------------------------- --------- ---------- --------------- -------------
     23700 Navin Kumar                                        03-DEC-04 Male       7870728406                106
     23701 Raushan Kumar                                      03-FEB-00 Male       7870728407                107
     23721 Topper Kumari                                      03-FEB-05 Female     7870728408                108


-- 18. Display only the first 5 course records.

SQL> SELECT *
  2  FROM Course02
  3  FETCH FIRST 5 ROWS ONLY;

 COURSE_ID COURSE_NAME                                           CREDITS DEPARTMENT_ID FACULTY_ID
---------- -------------------------------------------------- ---------- ------------- ----------
     10101 surveying                                                   4           101       1011
     10201 COMPUTER DESIGN                                             5           102       1021
     10301 SCIENCE                                                     6           103       1031
     10401 MATHEMATICS                                                 2           104       1041
     10501 C++                                                         3           105       1051


-- Part D: Derived / Computed Output (No Table
-- Modification)



-- 19. Display student Name along with their calculated Age using DOB.


SQL> SELECT
  2        NAME,
  3        FLOOR(MONTHS_BETWEEN(SYSDATE,DATE_OF_BIRTH)/12)
  4  AS Age
  5  FROM Student02;

NAME                                                      AGE
-------------------------------------------------- ----------
Navin Kumar                                                21
Raushan Kumar                                              26
Topper Kumari                                              21
ASHA Kumari                                                16
HARSHIT Kumar                                              20
RAHUL Kumar                                                20
Rajnish Kumar                                              20
himanshu gupta                                             20
Abhisheka gupta                                            20
ankita mishra                                              20
ANKIT RAJ                                                  20

11 rows selected.


-- 20. Display course CourseName along with Credits + 1 as Updated_Credits.

 
SQL> SELECT
  2        Course_Name,
  3        credits + 1 AS UPDATE_CREDITS
  4  FROM Course02;

COURSE_NAME                                        UPDATE_CREDITS
-------------------------------------------------- --------------
surveying                                                       5
COMPUTER DESIGN                                                 6
SCIENCE                                                         7
MATHEMATICS                                                     3
C++                                                             4
EGD                                                             2
DBMS                                                            5
ML                                                              7
AI                                                              6
COMPUTER NETWORK                                                4

10 rows selected.

-- 21. Display enrollment details with column Grade shown as Final_Grade.


SQL> SELECT
  2        Enrollment_ID,
  3        Student_ID,
  4        Course_ID,
  5        SEMESTER,
  6        GRADE AS FINAL_GRADE
  7  FROM Enrollment;

ENROLLMENT_ID STUDENT_ID  COURSE_ID SEMESTER             FINAL
------------- ---------- ---------- -------------------- -----
   2.3157E+10      23700      10101 5th                  A
   2.3157E+10      23701      10201 5th                  A++
   2.3157E+10      23721      10301 4th                  B++
   2.3157E+10      23711      10401 4th                  B
   2.3157E+10      23703      10501 4th                  B
   2.3157E+10      23706      10601 4th                  C
   2.3157E+10      23705      10701 5th                  C++
   2.3157E+10      23725      10801 5th                  A
   2.3157E+10      23751      10901 5th                  A++
   2.3157E+10      23738     101001 5th                  A

10 rows selected.


-- 22. Display student Name along with year of birth extracted from DOB.


SQL> SELECT
  2        Name,
  3        EXTRACT (YEAR FROM DATE_OF_BIRTH) AS BIRTH_YEAR
  4  FROM Student02;

NAME                                               BIRTH_YEAR
-------------------------------------------------- ----------
Navin Kumar                                              2004
Raushan Kumar                                            2000
Topper Kumari                                            2005
ASHA Kumari                                              2009
HARSHIT Kumar                                            2005
RAHUL Kumar                                              2005
Rajnish Kumar                                            2005
himanshu gupta                                           2005
Abhisheka gupta                                          2005
ankita mishra                                            2005
ANKIT RAJ                                                2005

11 rows selected.

-- 23. Display faculty Name along with email domain extracted from Email.


SQL> SELECT
  2       NAME,
  3       SUBSTR(EMAIL,INSTR(EMAIL,'@')+1)
  4  AS EMAIL_DOMAIN
  5  FROM Faculty;

NAME                                               EMAIL_DOMAIN
-------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------
Prof. Murlidhar Prasad Singh (HoD)                 gmail.com
Prof. Md. Ehtashamoul Haque(HoD)                   gmail.com
Prof. Murlidhar Prasad Singh(HoD)                  gmail.com
Sujeet Kumar                                       gmail.com
Prof. Manisha Kumari Singh                         gmail.com
Prof. Md. Izhar                                    gmail.com
Prof. Hare Krishna Mishra                          gmail.com
Prof. Arbind Kumar Amar                            yahoo.com
Prof. Akhilesh kumar (HoD)                         gmail.com
Prof. Kunal Kumar (HoD)                            gmail.com

10 rows selected.





-- ...........................END!..........................
