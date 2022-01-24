/*
Q.6 Write an SQL query to create index on the email column.
*/

USE task_database;

CREATE TABLE task_six(
	c_id	BIGINT(32)	NOT NULL,
    email	VARCHAR(32)	NOT NULL,
    PRIMARY KEY(c_id)
);

insert into task_six
value (1, 'a@abc.com');

CREATE INDEX email
ON task_six (email);

select * from task_six;