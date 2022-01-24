/*
Q.4 Write an SQL query to delete all the duplicate emails, keeping only one unique email with the smallest id. Return the result table in any order.
*/
USE task_database;

CREATE TABLE person(
	id	BIGINT(32)	NOT NULL,
    email	VARCHAR(32)	NOT NULL,
    PRIMARY KEY(id)
);


insert into person 
value (1, 'john@example.com');

insert into person 
value (2, 'bob@example.com');

insert into person 
value (3, 'john@example.com');

DELETE FROM person 
WHERE
    id NOT IN (SELECT 
        MIN(p.id)
    FROM
        (SELECT 
            *
        FROM
            person) p
    GROUP BY p.email);

select * from person;