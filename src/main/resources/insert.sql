PRAGMA foreign_keys = ON;

-- Delete students first because students depends on courses.
DELETE
FROM students;
DELETE
FROM courses;

INSERT INTO courses(course_id, course_name, credits)
VALUES (1, 'Intro to Java', 2),
       (2, 'Java', 4),
       (3, 'Outro to Java', 8);

INSERT INTO students (id, name, email, age, course_id)
VALUES (1, 'Peter', 'pete@gmail.com', 20, 1),
       (2,'John','joe@gmail.com',23,1),
       (3,'James','james@gmail.com',32,2),
       (4,'Maia','maie@jupiter.org',19,3),
       (5,'Dione','dione@saturn.info',49,1);