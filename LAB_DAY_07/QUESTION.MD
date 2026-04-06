Objective
To understand and apply subqueries (nested queries) to retrieve and analyze data from the
Student database using conditions and aggregate functions.

Short Notes with Examples
1. What is a Subquery?
A subquery is a query inside another query.
The inner query executes first, and its result is used by the outer query.
Example:
Display students belonging to DepartmentID ‘D101’.
Example code:
SELECT Name
FROM Student
WHERE DepartmentID = 'D101';
2. Single-Row Subquery
Returns only one value.
Example:
Display students who belong to the same department as student ‘S401’.
Example code:
SELECT Name
FROM Student
WHERE DepartmentID = (
SELECT DepartmentID
FROM Student
WHERE StudentID = 'S401'
);

3. Multi-Row Subquery (IN)
Used when subquery returns multiple values.
Example:
Display students from departments that have female students.
Example code:
SELECT Name
FROM Student
WHERE DepartmentID IN (
SELECT DepartmentID
FROM Student
WHERE Gender = 'Female'
);
4. Subquery with Aggregate Functions
Example:
Display courses having credits greater than average credits.
Example code:
SELECT CourseName
FROM Course
WHERE Credits > (
SELECT AVG(Credits)
FROM Course
);
5. Subquery with EXISTS
Example:
Display students who are enrolled in at least one course.
Example code:
SELECT Name
FROM Student S
WHERE EXISTS (
SELECT *
FROM Enrollment E
WHERE S.StudentID = E.StudentID
);

6. Subquery vs JOIN (Idea)
● JOIN → combine tables
● Subquery → filter using results of another query

Lab Questions
Part A: Basic Subqueries
1. Display names of students who belong to the same department as student ‘S401’.
2. Display students who have the same gender as student ‘S402’.
3. Display students belonging to the same department as ‘S403’.
Part B: Subqueries with IN
4. Display students whose DepartmentID exists where Gender is ‘Female’.
5. Display students whose StudentID appears in the Enrollment table.
6. Display students who are enrolled in any course.
Part C: Subqueries with Aggregate Functions
7. Display courses having credits greater than average credits.
8. Display students whose StudentID is greater than the average StudentID (assume
numeric comparison).
9. Display departments having more students than the average number of students per
department.
Part D: Subqueries Instead of JOIN
10. Display names of students who are enrolled in courses (without using JOIN).
11. Display students who are allocated to any department (using subquery logic).
12. Display courses that have at least one student enrolled.
Part E: Analytical Subqueries
13. Display the course with maximum credits.
14. Display students who are enrolled in more than one course.
15. Display departments having the maximum number of students.

Part F: Challenging Questions
16. Display students who are enrolled in the same course as student ‘S401’.
17. Display students who are not enrolled in any course.
18. Display courses that have no students enrolled.
Important Instructions
● Use subqueries wherever required.
● Avoid JOIN unless absolutely necessary.
● Ensure correct use of:
○ = for single-row subquery
○ IN for multi-row
○ EXISTS where appropriate
