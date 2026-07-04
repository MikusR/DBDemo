PRAGMA foreign_keys = ON;

SELECT *
FROM courses;

SELECT *
FROM students;

SELECT *
FROM students
WHERE age > 20;

SELECT students.name, courses.course_name
FROM students
         JOIN courses ON students.course_id = courses.course_id;

SELECT courses.course_id,
       courses.course_name,
       COUNT(students.id) AS student_count
FROM courses
         LEFT JOIN students ON
    courses.course_id = students.course_id
GROUP BY courses.course_id, courses.course_name;

UPDATE students
SET age = 87
WHERE id = 1;

SELECT name, age
FROM students
WHERE id = 1;

UPDATE students
SET course_id = 3
WHERE id = 2;

SELECT students.name, courses.course_name
FROM students
         JOIN courses ON students.course_id = courses.course_id
WHERE id = 2;

DELETE FROM students
WHERE id = 3;

SELECT *
FROM students;