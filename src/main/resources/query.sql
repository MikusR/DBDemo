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

SELECT students.course_id,
       course_name,
       COUNT(*)
FROM students
         INNER JOIN courses ON
    students.course_id = courses.course_id
GROUP BY students.course_id;

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