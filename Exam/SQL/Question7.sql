USE exam_db;

CREATE TABLE employee (
	employee_id	INT(32)	NOT NULL,
    team_id		INT(32)	NOT NULL,
    PRIMARY KEY(employee_id)
);

INSERT INTO employee
VALUE (1,8);

INSERT INTO employee
VALUE (2,8);

INSERT INTO employee
VALUE (3,8);

INSERT INTO employee
VALUE (4,7);

INSERT INTO employee
VALUE (5,9);

INSERT INTO employee
VALUE (6,9);