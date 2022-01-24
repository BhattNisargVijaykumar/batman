/*
Q.3 Write an SQL query to swap all 'f' and 'm' values (i.e., change all 'f' values to 'm' and vice versa) with a single update statement and no intermediate temporary tables.Note that you must write a single update statement, do not write any select statement for this problem.
*/

USE task_database;

CREATE TABLE salary(
	id	BIGINT(32)	NOT NULL AUTO_INCREMENT,
    e_name	VARCHAR(64)	NOT NULL,
    sex		ENUM('m', 'f')	NOT NULL,
    salary	INT		NOT NULL,
    PRIMARY KEY(id)
);

insert into salary
value(1, 'A', 'm', '2500');

insert into salary
value(2, 'B', 'f', '1500');

insert into salary
value(3, 'C', 'm', '5500');

insert into salary
value(4, 'D', 'f', '500');

UPDATE salary 
SET 
    sex = CASE sex
        WHEN 'f' THEN 'm'
        WHEN 'm' THEN 'f'
    END
;
select * from salary;