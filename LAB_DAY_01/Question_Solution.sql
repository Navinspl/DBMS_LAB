-- /// 3. Create a table Student with following columns:
--         ○ RollNo INT
--         ○ Name VARCHAR(50)
--         ○ Dept VARCHAR(20)
--         ○ Age INT
--         ○ Phone VARCHAR(15) ///

 SQL> Create table Student(
  2  RollNo INT,
  3  Name VARCHAR(50),
  4  Dept VARCHAR(20),
  5  Age INT,
  6  Phone VARCHAR(15)
  7  );

Table created.

-- /// 4. Create a table Course with columns:
--         ○ CourseID INT
--         ○ CourseName VARCHAR(50)
--         ○ Credits INT ///

SQL> Create table Course(
  2  CourseID INT,
  3  CourseName VARCHAR(50),
  4  Credits INT
  5  );

Table created.

-- /// 5. Add a new column City in table Student. ///

SQL> ALTER table Student
  2  ADD City VARCHAR(50);

Table altered.

-- /// 6. Add a new column Semester in table Student.

SQL> ALTER table Student
  2  ADD Semester INT;

Table altered.

-- ///7. Rename column Phone to MobileNo in table Student. (if supported in your DB)

SQL> ALTER table Student
  2  RENAME COLUMN Phone TO MobileNo;

Table altered.

-- ///8. Delete (drop) the table Course

SQL> DROP table Course;

Table dropped.



-- ////PART B: DML(INSERT/UPDATE/DELETE/VIEW DATA)


--/// 9. Insert 5 student records into Student.

SQL> desc Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(50)
 SEMESTER                                           NUMBER(38)


 SQL> INSERT INTO Student VALUES ( 23721 ,'NAVIN KUMAR' ,'CSE(AI_ML)',21 ,'7870728403','SUAPUL',5);

1 row created.

SQL> INSERT INTO Student VALUES ( 23723 ,'PRINCE BHAGAT' ,'CSE(AI_ML)',21 ,'7549787672','SAHRSHA',5);

1 row created.

SQL> INSERT INTO Student VALUES ( 23722 ,'ARMAN KUMAR' ,'CSE(AI_ML)',21 ,'9631368742','SAHRSHA',5);

1 row created.

SQL> INSERT INTO Student VALUES ( 23735 ,'RAHUL RAJ YADAV' ,'CSE(AI_ML)',21 ,'9031706583','GAYA',5);

1 row created.

SQL> INSERT INTO Student VALUES ( 23752 ,'RAUSHAN KUMAR' ,'CSE(AI_ML)',21 ,'9546925224','MADHEPURA',5);

1 row created.


--///10. Display all records from Student.

SQL> SELECT * FROM Student;


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                                 SEMESTER
-------------------------------------------------- ----------
     23721 NAVIN KUMAR
CSE(AI_ML)                   21 7870728403
SUAPUL                                                      5

     23723 PRINCE BHAGAT
CSE(AI_ML)                   21 7549787672
SAHRSHA                                                     5

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                                 SEMESTER
-------------------------------------------------- ----------

     23722 ARMAN KUMAR
CSE(AI_ML)                   21 9631368742
SAHRSHA                                                     5

     23735 RAHUL RAJ YADAV
CSE(AI_ML)                   21 9031706583

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                                 SEMESTER
-------------------------------------------------- ----------
GAYA                                                        5

     23752 RAUSHAN KUMAR
CSE(AI_ML)                   21 9546925224
MADHEPURA                                                   5

--///11. Display only RollNo and Name from Student.

SQL> SELECT RollNo,Name FROM Student;

    ROLLNO NAME
---------- --------------------------------------------------
     23721 NAVIN KUMAR
     23723 PRINCE BHAGAT
     23722 ARMAN KUMAR
     23735 RAHUL RAJ YADAV
     23752 RAUSHAN KUMAR

--///12. Display all students from department "CSE".

SQL> INSERT INTO Student VALUES ( 23755 ,'RAUSHAN KUMAR' ,'CSE',21 ,'9546925224','MADHEPURA',5);

1 row created.

SQL> SELECT * FROM Student WHERE DEPT = 'CSE';

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                                 SEMESTER
-------------------------------------------------- ----------
     23755 RAUSHAN KUMAR
CSE                          21 9546925224
MADHEPURA                                                   5

--///13. Display all students whose age is greater than 20.

SQL> SELECT * FROM Student WHERE Age >20 ;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                                 SEMESTER
-------------------------------------------------- ----------
     23721 NAVIN KUMAR
CSE(AI_ML)                   21 7870728403
SUAPUL                                                      5

     23723 PRINCE BHAGAT
CSE(AI_ML)                   21 7549787672
SAHRSHA                                                     5

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                                 SEMESTER
-------------------------------------------------- ----------

     23722 ARMAN KUMAR
CSE(AI_ML)                   21 9631368742
SAHRSHA                                                     5

     23735 RAHUL RAJ YADAV
CSE(AI_ML)                   21 9031706583

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                                 SEMESTER
-------------------------------------------------- ----------
GAYA                                                        5

     23752 RAUSHAN KUMAR
CSE(AI_ML)                   21 9546925224
MADHEPURA                                                   5

     23755 RAUSHAN KUMAR

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                                 SEMESTER
-------------------------------------------------- ----------
CSE                          21 9546925224
MADHEPURA                                                   5


6 rows selected.

--///14. Update the department of RollNo = 101 to "ECE".

SQL> UPDATE Student
  2  SET DEPT = 'ECE'
  3  WHERE RollNo = 23721;

1 row updated.

--///15. Update the city of student "Rahul" to "Patna".

SQL> UPDATE Student
  2  SET City = 'PATNA'
  3  WHERE name = 'RAHUL RAJ YADAV';

1 row updated.

--///16. Increase age of all students by 1 year.

SQL> UPDATE Student
  2  SET Age = Age + 1;

6 rows updated.

--///17. Delete record of student whose RollNo = 105.

SWHERE RollNo = 23722;

1 row deleted.

--///18. Delete all records from Student (table should remain).

SQL> DELETE FROM Student;

5 rows deleted.




            --   END !!!