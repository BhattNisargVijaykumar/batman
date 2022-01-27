USE exam_db;

CREATE TABLE actor_director(
	actor_id	INT(32)	NOT NULL,
    director_id	INT(32)	NOT NULL,
    timestamp	INT(32),
    PRIMARY KEY(timestamp)
);

INSERT INTO actor_director
value(1,1,0);

INSERT INTO actor_director
value(1,1,1);

INSERT INTO actor_director
value(1,1,2);

INSERT INTO actor_director
value(1,2,3);

INSERT INTO actor_director
value(1,2,4);

INSERT INTO actor_director
value(2,1,5);

INSERT INTO actor_director
value(2,1,6);
