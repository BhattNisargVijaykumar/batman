/*
24-01-2021 test case-3 Extra Work.
Q.  Write an SQL query to report the name, population, and area of the big countries.
*/

USE task_database;

DROP TABLE world;
CREATE TABLE world(
	name VARCHAR(32)	NOT NULL,
    continent VARCHAR(32)	NOT NULL,
    area	INT(32)	NOT NULL,
    population	INT(64)	NOT NULL,
    gdp		BIGINT(32)	NOT NULL,
    PRIMARY KEY(name)
);

INSERT INTO world
VALUE ('Afghanistan','Asia', 652230, 25500100, 20343000000);

INSERT INTO world
VALUE ('Albania','Europe', 28748, 2831741, 12960000000);

INSERT INTO world
VALUE ('Algeria','Africa', 2381741, 37100000, 188681000000);

INSERT INTO world
VALUE ('Andorra','Europe', 468, 78115, 3712000000);

INSERT INTO world
VALUE ('Angola','Africa', 1246700, 20609294, 100990000000);

select * from world;

SELECT name, population, area FROM world WHERE area > 3000000 OR population > 25000000;