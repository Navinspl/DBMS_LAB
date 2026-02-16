College Database – Data Collection and Data Insertion
B.P. Mandal College of Engineering, Madhepura (Bihar)
📌 Objective


This project is created to understand real-world data collection and data insertion in a relational database using SQL.
We collected real data from official sources of
B.P. Mandal College of Engineering, Madhepura, Bihar
and inserted it into our College Database created in Lab–2.

🏫 College Information


College Name: B.P. Mandal College of Engineering


Location: Madhepura, Bihar


Official Website: https://bpmce.ac.in



📂 Database Tables Used
The following tables were created earlier using ER Diagram:


Department


Faculty


Course


Student


Enrollment



📊 Data Collection Sources
All data is collected from authentic sources:


✅ Official College Website


✅ Department Webpages


✅ Class Timetable


✅ Academic Notices / Prospectus


⚠ Note:
Student contact numbers are dummy numbers (9XXXXXXXXX) to protect privacy.

🏢 Tables Description
1️⃣ Department


Department_ID (Primary Key)


Department_Name


Block / Office Location


📌 Source: College Website

2️⃣ Faculty


Faculty_ID (Primary Key)


Faculty_Name


Designation


Official_Email


Department_ID (Foreign Key)


📌 Source: Department page / Timetable

3️⃣ Course


Course_ID (Primary Key)


Course_Name


Credits


Department_ID (Foreign Key)


Faculty_ID (Foreign Key)


📌 Source: Syllabus / Timetable

4️⃣ Student


Student_ID (Primary Key)


Student_Name


Date_of_Birth


Gender


Contact_Number (Dummy)


Department_ID (Foreign Key)


📌 Source: Roll list / Class record

5️⃣ Enrollment


Student_ID (Foreign Key)


Course_ID (Foreign Key)


Semester


Grade (Assumed: A, B+, etc.)


📌 Source: Academic Structure (Grades assumed)

🧾 Tasks Completed
✅ Part A – Data Insertion


Inserted minimum 10 records in:


Student


Course


Enrollment




No primary key duplication


All foreign key constraints satisfied


Used proper INSERT INTO SQL queries



✅ Part B – Verification
Executed:
SELECT * FROM Department;
SELECT * FROM Faculty;
SELECT * FROM Course;
SELECT * FROM Student;
SELECT * FROM Enrollment;

Screenshots of successful output are attached in the repository.

📁 Files Included


college_database.sql → Contains all INSERT queries


screenshots/ → Output screenshots


README.md → Project explanation



⚠ Important Notes


No fake or random data used.


All data verified from official sources.


Database consistency maintained.


Dummy contact numbers used for students.



👨‍💻 Author
Navin Kumar
B.Tech Student
B.P. Mandal College of Engineering, Madhepura
 