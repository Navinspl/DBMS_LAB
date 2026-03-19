
SQL*Plus: Release 21.0.0.0.0 - Production on Thu Mar 19 10:31:21 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Mon Mar 16 2026 14:22:16 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> select p.patient_name,d.doctor_name,a.appointment_name
  2  from patient p
  3  inner join appointment a
  4  on p.patient_id = a.patient_id
  5  inner join doctor d
  6  on a.doctor_id = d.doctor_id;
select p.patient_name,d.doctor_name,a.appointment_name
                                    *
ERROR at line 1:
ORA-00904: "A"."APPOINTMENT_NAME": invalid identifier


SQL> set linesize 200
SQL> set pagesize 300
SQL>
SQL> SELECT * FROM PATIENT;

no rows selected

SQL> INSERT INTO Patient VALUES (1, 'Ravi Kumar', 35, 'Male', 'Delhi');

1 row created.

SQL> INSERT INTO Patient VALUES (2, 'Anita Verma', 28, 'Female', 'Mumbai');

1 row created.

SQL> INSERT INTO Patient VALUES (3, 'Suresh Kumar', 42, 'Male', 'Chennai');

1 row created.

SQL> INSERT INTO Patient VALUES (4, 'Priya Singh', 30, 'Female', 'Kolkata');

1 row created.

SQL> INSERT INTO Patient VALUES (5, 'Amit Das', 50, 'Male', 'Bhubaneswar');

1 row created.

SQL> INSERT INTO Doctor VALUES (101, 'Dr. Sharma', 'Cardiology', 15);

1 row created.

SQL> INSERT INTO Doctor VALUES (102, 'Dr. Rao', 'Orthopedics', 10);

1 row created.

SQL> INSERT INTO Doctor VALUES (103, 'Dr. Sen', 'Neurology', 12);

1 row created.

SQL> INSERT INTO Doctor VALUES (104, 'Dr. Iyer', 'Pediatrics', 8);

1 row created.

SQL> INSERT INTO Doctor VALUES (105, 'Dr. Verma', 'General Medicine', 20);

1 row created.

SQL> INSERT INTO Appointment VALUES (1001, 1, 101, DATE '2024-02-10');

1 row created.

SQL> INSERT INTO Appointment VALUES (1002, 2, 105, DATE '2024-02-11');

1 row created.

SQL> INSERT INTO Appointment VALUES (1003, 3, 102, DATE '2024-02-12');

1 row created.

SQL> INSERT INTO Appointment VALUES (1004, 4, 103, DATE '2024-02-13');

1 row created.

SQL> INSERT INTO Appointment VALUES (1005, 5, 101, DATE '2024-02-14');

1 row created.

SQL> INSERT INTO Bill VALUES (5001, 1001, 2000, 'Paid');

1 row created.

SQL> INSERT INTO Bill VALUES (5002, 1002, 1500, 'Pending');

1 row created.

SQL> INSERT INTO Bill VALUES (5003, 1003, 3000, 'Paid');

1 row created.

SQL> INSERT INTO Bill VALUES (5004, 1004, 4000, 'Paid');

1 row created.

SQL> INSERT INTO Bill VALUES (5005, 1005, 2500, 'Pending');

1 row created.

SQL> SET LINESIZE 200;
SQL> SET PAGESIZE 50;
SQL> SELECT * FROM PATIENT;

PATIENT_ID PATIENT_NAME                                              AGE GENDER     CITY
---------- -------------------------------------------------- ---------- ---------- --------------------------------------------------
         1 Ravi Kumar                                                 35 Male       Delhi
         2 Anita Verma                                                28 Female     Mumbai
         3 Suresh Kumar                                               42 Male       Chennai
         4 Priya Singh                                                30 Female     Kolkata
         5 Amit Das                                                   50 Male       Bhubaneswar

SQL> SELECT * FROM DOCTOR;

 DOCTOR_ID DOCTOR_NAME                                        SPECIALIZATION                                     EXPERIENCE
---------- -------------------------------------------------- -------------------------------------------------- ----------
       101 Dr. Sharma                                         Cardiology                                                 15
       102 Dr. Rao                                            Orthopedics                                                10
       103 Dr. Sen                                            Neurology                                                  12
       104 Dr. Iyer                                           Pediatrics                                                  8
       105 Dr. Verma                                          General Medicine                                           20

SQL> SELECT * FROM APPOINTMENT;

APPOINTMENT_ID PATIENT_ID  DOCTOR_ID APPOINTME
-------------- ---------- ---------- ---------
          1001          1        101 10-FEB-24
          1002          2        105 11-FEB-24
          1003          3        102 12-FEB-24
          1004          4        103 13-FEB-24
          1005          5        101 14-FEB-24

SQL> SELECT * FROM BILL;

   BILL_ID APPOINTMENT_ID     AMOUNT PAYMENT_STATUS
---------- -------------- ---------- --------------------
      5001           1001       2000 Paid
      5002           1002       1500 Pending
      5003           1003       3000 Paid
      5004           1004       4000 Paid
      5005           1005       2500 Pending

SQL> SELECT P.PATIENT_NAME,D.DOCTOR_NAME,A.APPOINTMENT_DATE
  2  FROM PATIENT P
  3  INNER JOIN APPOINTMENT A
  4  ON P.PATIENT_ID = A.PATIENT_ID
  5  INNER JOIN DOCTOR D
  6  ON A.DOCTOR_ID = D.DOCTOR_ID;

PATIENT_NAME                                       DOCTOR_NAME                                        APPOINTME
-------------------------------------------------- -------------------------------------------------- ---------
Ravi Kumar                                         Dr. Sharma                                         10-FEB-24
Anita Verma                                        Dr. Verma                                          11-FEB-24
Suresh Kumar                                       Dr. Rao                                            12-FEB-24
Priya Singh                                        Dr. Sen                                            13-FEB-24
Amit Das                                           Dr. Sharma                                         14-FEB-24

SQL> SELECT P.PATIENT_NAME
  2  FROM PATIENT P
  3  INNER JOIN APPOINTMENT A
  4  ON P.PATIENT_ID = A.PATIENT_ID
  5  INNER JOIN DOCTOR D
  6  ON A.DOCTOR_ID = D.DOCTOR_ID
  7  WHERE SPECIALIZATION = 'CARDIOLOGY';

no rows selected

SQL> SELECT P.PATIENT_NAME
  2  FROM PATIENT P
  3  INNER JOIN APPOINTMENT A
  4  ON P.PATIENT_ID = A.PATIENT_ID
  5  INNER JOIN DOCTOR D
  6  ON A.DOCTOR_ID = D.DOCTOR_ID
  7  WHERE SPECIALIZATION = 'Cardiology';

PATIENT_NAME
--------------------------------------------------
Ravi Kumar
Amit Das

SQL> SELECT P.PATIENT_NAME,D.DOCTOR_NAME,B.AMOUNT
  2  FROM PATIENT P
  3  INNER JOIN APPOINTMENT A
  4  ON P.PATIENT_ID = A.PATIENT_ID
  5  INNER JOIN DOCTOR D
  6  ON A.DOCTOR_ID = D.DOCTOR_ID
  7  INNER JOIN BILL B
  8  ON A.APPOINTMENT_ID = B.APPOINTMENT_ID;

PATIENT_NAME                                       DOCTOR_NAME                                            AMOUNT
-------------------------------------------------- -------------------------------------------------- ----------
Ravi Kumar                                         Dr. Sharma                                               2000
Anita Verma                                        Dr. Verma                                                1500
Suresh Kumar                                       Dr. Rao                                                  3000
Priya Singh                                        Dr. Sen                                                  4000
Amit Das                                           Dr. Sharma                                               2500

SQL> SELECT D.DOCTOR_NAME,SUM(AMOUNT)
  2  FROM DOCTOR D
  3  INNER JOIN APPOINTMENT  A
  4  ON D.DOCTOR_ID = A.DOCTOR_ID
  5  INNER JOIN BILL B
  6  ON A.APPOINTMENT_ID = B.APPOINTMNET
  7  GROUP BY D.DOCTOR_NAME;
ON A.APPOINTMENT_ID = B.APPOINTMNET
                      *
ERROR at line 6:
ORA-00904: "B"."APPOINTMNET": invalid identifier


SQL> SELECT D.DOCTOR_NAME,SUM(AMOUNT)
  2  FROM DOCTOR D
  3  INNER JOIN APPOINTMENT  A
  4  ON D.DOCTOR_ID = A.DOCTOR_ID
  5  INNER JOIN BILL B
  6  ON A.APPOINTMENT_ID = B.APPOINTMENT
  7  GROUP BY D.DOCTOR_ID;
ON A.APPOINTMENT_ID = B.APPOINTMENT
                      *
ERROR at line 6:
ORA-00904: "B"."APPOINTMENT": invalid identifier


SQL> SELECT D.DOCTOR_NAME,SUM(AMOUNT)
  2  FROM DOCTOR D
  3  INNER JOIN APPOINTMENT  A
  4  ON D.DOCTOR_ID = A.DOCTOR_ID
  5  INNER JOIN BILL B
  6  ON A.APPOINTMENT_ID = B.APPOINTMENT_ID
  7  GROUP BY D.DOCTOR_NAME;

DOCTOR_NAME                                        SUM(AMOUNT)
-------------------------------------------------- -----------
Dr. Sharma                                                4500
Dr. Verma                                                 1500
Dr. Rao                                                   3000
Dr. Sen                                                   4000

SQL> SELECT P.PATIENT_NAME
  2  FROM PATIENT P
  3  INNER JOIN APPOINTMENT A
  4  ON P.PATIENT_ID = A.PATIENT_ID
  5  INNER JOIN BILL B
  6  ON A.APPOINTMENT_ID = B.APPOINTMENT_ID
  7  WHERE STATUS = 'Pending';
WHERE STATUS = 'Pending'
      *
ERROR at line 7:
ORA-00904: "STATUS": invalid identifier


SQL> SELECT P.PATIENT_NAME
  2  FROM PATIENT P
  3  INNER JOIN APPOINTMENT A
  4  ON P.PATIENT_ID = A.PATIENT_ID
  5  INNER JOIN BILL B
  6  ON A.APPOINTMENT_ID = B.APPOINTMENT_ID
  7  WHERE PAYMENT_STATUS = 'Pending';

PATIENT_NAME
--------------------------------------------------
Anita Verma
Amit Das

SQL> SELECT D.DOCTOR_NAME
  2  FROM DOCTOR D
  3  INNER JOIN APPOINTMENT A
  4  ON D.DOCTOR_ID = A.DOCTOR_ID
  5  INNER JOIN PATIENT P
  6  ON A.PATIENT_ID = P.PATIENT_ID
  7  WHERE AGE > 40;

DOCTOR_NAME
--------------------------------------------------
Dr. Rao
Dr. Sharma

SQL> SELECT D.DOCTOR_NAME ,COUNT(APPOINTMENT_ID)
  2  FROM DOCTOR D
  3  INNER JOIN APPOINTMENT A
  4  ON D.DOCTOR_ID = A.DOCTOR_ID
  5  INNER JOIN PATIENT P
  6  ON A.PATIENT_ID = P.PATIENT_ID
  7  GROUP BY D.DOCTOR_NAME;

DOCTOR_NAME                                        COUNT(APPOINTMENT_ID)
-------------------------------------------------- ---------------------
Dr. Sharma                                                             2
Dr. Verma                                                              1
Dr. Rao                                                                1
Dr. Sen                                                                1

SQL> COMMIT
  2  commit;
commit
*
ERROR at line 2:
ORA-02185: a token other than WORK follows COMMIT


SQL> commit
  2

--   ...................END!.................