/*
24-01-2021 test case-1 Extra Work.
*/
USE task_database;

DROP TABLE activity;
CREATE TABLE activity(
	player_id	INT(32)	NOT NULL,
    device_id	INT(32)	NOT NULL,
    event_date	DATE	NOT NULL,
    games_played	INT(32)	NOT NULL,
    PRIMARY KEY(player_id, event_date)
);

INSERT INTO	activity
VALUES(1,2,'2016-03-01',5);

INSERT INTO	activity
VALUES(1,2,'2016-05-02',6);

INSERT INTO	activity
VALUES(2,3,'2017-06-25',1);

INSERT INTO	activity
VALUES(3,1,'2016-03-02',0);

INSERT INTO	activity
VALUES(3,4,'2018-07-03',5);

select * from activity;
/*
Q.1	Write an SQL query to report the first login date for each player. Return the result table in any order.
*/
select player_id, min(event_date) as first_login
from Activity
group by player_id;

/*
Q.2	Write an SQL query to report the device that is first logged in for each player. Return the result table in any order.
*/

select player_id, device_id
from activity a1
where a1.event_date<=all(select a2.event_date from activity a2 where a1.player_id=a2.player_id);

/*
Q.3	Write an SQL query to report for each player and date, how many games played so far by the player. That is, the total number of games played by the player until that date. Check the example for clarity. Return the result table in any order.
*/

UPDATE activity SET player_id = 1 WHERE event_date = '2017-06-25';

select player_id, event_date, sum(games_played) over(partition by player_id order by event_date) 'games_played_so_far'
from Activity;