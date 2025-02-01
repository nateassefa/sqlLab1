-- SQL Exercises (With Answers)

-- 1. Retrieve all students who enrolled in 2023.
SELECT * FROM students WHERE enrollmentYear = 2023;

-- 2. Find students whose email contains 'gmail.com'.
SELECT * FROM students WHERE email LIKE '%gmail.com%'

-- 3. Count how many students are enrolled in the database.
SELECT COUNT(*) AS totalStudents FROM students;

-- 4. Find students born between 2000 and 2005.
SELECT * FROM students WHERE birthYear BETWEEN  2000 AND 2005;

-- 5. List students sorted by last name in descending order.
SELECT * FROM students ORDER BY lastName DESC;

-- 6. Find the names of students and the courses they are enrolled in.
SELECT students.firstName, students.lastName, courses.courseName 
FROM students
JOIN enrollments on students.studentID = enrollments.studentID
JOIN courses on enrollments.courseID = courses.courseID;

-- 7. List all students and their courses, ensuring students without courses are included (LEFT JOIN).
SELECT students.firstName, students.lastName, courses.courseName 
FROM students 
LEFT JOIN enrollments ON students.studentID = enrollments.studentID
LEFT JOIN courses on enrollments.courseID = courses.courseID;

-- 8. Find all courses with no students enrolled (LEFT JOIN).
SELECT courses.courseName
FROM courses
LEFT JOIN enrollments ON courses.courseID = enrollments.courseID
WHERE enrollments.studentID IS NULL;


-- 10. List courses and show the number of students enrolled in each course.
SELECT courses.courseName, COUNT(enrollments.studentID) AS studentCount
FROM courses
LEFT JOIN enrollments on courses.courseID = enrollment.courseID
GROUP BY courses.courseName; 


