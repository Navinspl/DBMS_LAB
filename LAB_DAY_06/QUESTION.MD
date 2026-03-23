Data Aggregation using GROUP BY and HAVING

Objective
To understand how to summarize and analyze data using SQL aggregate functions, and to
apply GROUP BY and HAVING clauses to generate grouped reports from database tables
without modifying the stored data.

Short Notes with Examples
1. Aggregate Functions
Aggregate functions perform calculations on a set of rows and return a single value.
Common aggregate functions:

Function Purpose
COUNT() Counts number of rows
SUM() Calculates total
AVG() Calculates average
MAX() Finds maximum value
MIN() Finds minimum value

Example
Display total number of students.
Example code:
SELECT COUNT(*) AS Total_Students
FROM Student;
2. GROUP BY Clause

The GROUP BY clause is used to divide rows into groups based on one or more
columns.
Aggregate functions are then applied to each group.
For example, if we want to know how many students belong to each department, we
group records using DepartmentID.
Example
Example code:
SELECT DepartmentID, COUNT(*) AS Number_of_Students
FROM Student
GROUP BY DepartmentID;
This groups students according to their department and counts them.
3. GROUP BY with Multiple Columns
Grouping can also be done using more than one column.
For example, grouping enrollment data based on Semester and Grade.
Example code:
SELECT Semester, Grade, COUNT(*) AS Total_Students
FROM Enrollment
GROUP BY Semester, Grade;
4. HAVING Clause
The HAVING clause is used to filter grouped results.
It works like a WHERE condition but is applied after grouping.
For example, we may want to display only departments that have more than 3
students.
Example code:
SELECT DepartmentID, COUNT() AS Total_Students
FROM Student
GROUP BY DepartmentID
HAVING COUNT() > 3;
5. GROUP BY with JOIN

GROUP BY can also be used with JOIN operations when data from multiple tables is
needed.
For example, finding how many students are enrolled in each course.
Example code:
SELECT CourseID, COUNT(StudentID) AS Enrolled_Students
FROM Enrollment
GROUP BY CourseID;
If we want to display the course name instead of course ID, we join the Course table.
Example code:
SELECT Course.CourseName, COUNT(Enrollment.StudentID) AS Enrolled_Students
FROM Course
INNER JOIN Enrollment
ON Course.CourseID = Enrollment.CourseID
GROUP BY Course.CourseName;

Lab Questions




Part A: Basic Aggregate Queries


1. Display the total number of students in the Student table.
2. Display the total number of faculty members in the Faculty table.
3. Display the total number of courses available in the Course table.
4. Display the maximum credits among all courses.
5. Display the minimum credits offered by any course.


Part B: GROUP BY on Single Tables


6. Display the number of students in each DepartmentID from the Student table.
7. Display the number of faculty members in each DepartmentID from the Faculty table.
8. Display the number of courses offered by each DepartmentID from the Course table.

9. Display the number of enrollments in each Semester from the Enrollment table.
10. Display the number of students for each Grade in the Enrollment table.



Part C: GROUP BY with HAVING


11. Display departments having more than 3 students.
12. Display semesters where more than 2 enrollments exist.
13. Display grades that are assigned to more than one student.
14. Display DepartmentIDs where more than one course is offered.



Part D: Aggregation with JOIN


15. Display the number of students enrolled in each CourseID.
16. Display CourseName and number of students enrolled in that course.
17. Display DepartmentID and number of students belonging to that department.
18. Display Faculty Name and number of courses taught by each faculty member.



Part E: Analytical Queries


19. Display CourseName and maximum grade obtained in that course.
20. Display DepartmentID and total number of courses offered in that department.
21. Display Semester and total number of students enrolled in that semester.
22. Display courses that have more than 2 students enrolled.

