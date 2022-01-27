DROP DATABASE IF EXISTS exam_db;
CREATE DATABASE IF NOT EXISTS exam_db; 
USE exam_db;

CREATE TABLE department (
    dept_id INT(32) NOT NULL,
    dept_name VARCHAR(32) NOT NULL,
    PRIMARY KEY (dept_id)
);

CREATE TABLE student (
    student_id INT(32) NOT NULL,
    student_name VARCHAR(64) NOT NULL,
    gender VARCHAR(8) NOT NULL,
    dept_id INT(32) NOT NULL,
    PRIMARY KEY (student_id),
    FOREIGN KEY (dept_id)
        REFERENCES department (dept_id)
        ON DELETE CASCADE
);

INSERT INTO department
value(1,'ENGINEERING');

INSERT INTO department
value(2,'SCIENCE');

INSERT INTO department
value(3,'LAW');

INSERT INTO student
value(1,'JACK','M',1);

INSERT INTO student
value(2,'JANE','F',1);

INSERT INTO student
value(3,'MARK','M',2);
