/*
24-01-2021 test case-2 Extra Work.
Q.  Write an SQL query to report all the classes that have at least five students. Return the result table in any order.
*/

USE task_database;

DROP TABLE courses;
CREATE TABLE courses(
	student VARCHAR(32)	NOT NULL,
    class VARCHAR(32)	NOT NULL,
    PRIMARY KEY(student, class)
);


INSERT INTO courses
VALUE ('A','Math');

INSERT INTO courses
VALUE ('B','English');

INSERT INTO courses
VALUE ('C','Math');

INSERT INTO courses
VALUE ('D','Biology');

INSERT INTO courses
VALUE ('E','Math');

INSERT INTO courses
VALUE ('F','Computer');

INSERT INTO courses
VALUE ('G','Math');

INSERT INTO courses
VALUE ('H','Math');

INSERT INTO courses
VALUE ('I','Math');

select * from courses;

SELECT
class
FROM
courses
GROUP BY class
HAVING COUNT(student) >= 5
;