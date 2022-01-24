/*
Q.2	Write an SQL query to report the movies with an odd-numbered ID and a description that is not "boring". Return the result table ordered by rating in descending order.
*/

USE task_database;

CREATE TABLE cinema(
	id		INT(32)	NOT NULL,
    movie	VARCHAR(64)	NOT NULL,
    m_description	VARCHAR(64)	NOT NULL,
    m_rating	FLOAT	NOT NULL,
    PRIMARY KEY(id)
);

select * from cinema where m_description <> 'boring' and id % 2 != 0 order by m_rating desc;
