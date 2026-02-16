Data Collection and Data Insertion in College Database 
Objective: To understand real-world data collection and data insertion in a 
relational database using SQL. 
Instructions (Read Carefully) 



1. Use the database schema created in Lab–2 (ER diagram and tables). 

2. Do not use imaginary or random data. 

3. All data must be collected from authentic sources, such as: 
○ Official college website 
○ Department webpages 
○ Class timetable 
○ Academic notices / prospectus 

4. Data should correspond to B.P. Mandal College of Engineering, Madhepura, Bihar. 
Data Collection Guidelines 
Students are required to observe and collect real values for the following:

1. Department 

● Department ID (self-defined) 
● Department Name (as per college records) 
● Office Location / Block (if available); otherwise, put something like Block A, Block B… 
etc. 
�
�
Source: College website / department page 

2. Faculty 

● Faculty ID (self-defined) 
● Faculty Name (as mentioned on website/timetable) 
● Designation 
● Official Email ID 
● Department 
�
�
Source: Department faculty list / timetable 

3. Course

● Course ID (self-defined) 
● Course Name (as per syllabus) 
● Credits (if available) 
● Department 
● Faculty teaching the course 
�
�
Source: Syllabus / timetable 

4. Student

● Student ID (self-defined) 
● Student Name 
● Date of Birth 
● Gender 
● Contact Number 
● Department  
⚠
Do not use real personal contact numbers of other students. Use dummy contact 
numbers only (e.g., 9XXXXXXXXX). 
�
�
Source: Roll list / class record (Use Friend’s details for keeping Variation in database.) 

5. Enrollment 

● Student ID 
● Course ID 
● Semester 
● Grade (use assumed grades like A, B+, etc.) 
�
�
Source: Academic structure / assumption (grades can be assumed) 
Tasks 


Part A: Data Insertion 


1. Write INSERT INTO SQL queries to populate all tables. 
2. Insert a minimum of 10 records in: 
○ Student 
○ Course 
○ Enrollment 
3. Ensure: 
○ No primary key duplication 
○ Foreign key constraints are satisfied 



Part B: Verification 


1. Execute SELECT * FROM table_name; for all tables. 
2. Take screenshots of the output. 
Submission Instructions 
Students must submit: 
1. SQL file containing all INSERT queries 
2. Screenshots of successful data insertion 
3. Mention data source(s) used (website link / timetable / notice) 
Important Note 
● Any use of fake or copied data will lead to zero marks. 
● Data consistency will be strictly checked during evaluation. 

