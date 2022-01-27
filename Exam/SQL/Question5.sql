USE exam_db;

CREATE TABLE enrollments(
	student_id	INT(32)	NOT NULL,
    course_id	INT(32)	NOT NULL,
    grade		INT(16)	NOT NULL
);

INSERT INTO enrollments
values (2,2,95);

INSERT INTO enrollments
values (2,3,95);

INSERT INTO enrollments
values (1,1,90);

INSERT INTO enrollments
values (1,2,99);

INSERT INTO enrollments
values (3,1,80);

INSERT INTO enrollments
values (3,2,75);

INSERT INTO enrollments
values (3,3,82);
