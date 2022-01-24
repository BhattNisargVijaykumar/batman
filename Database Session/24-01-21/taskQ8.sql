/*
Q.8 Write an SQL query to report the first name, last name, city, and state of each person in the Person table. If the address of a personId is not present in the Address table, report null instead. Return the result table in any order.
*/

USE task_database;

CREATE TABLE task_nine_person(
	person_id	INT(32)	NOT NULL,
    last_name	VARCHAR(32)	NOT NULL,
    first_name	VARCHAR(32)	NOT NULL,
    PRIMARY KEY(person_id)
);

CREATE TABLE task_nine_address(
	address_id	INT(32)	NOT NULL,
    person_id	INT(32)	NOT NULL,
    city		VARCHAR(64)	NOT NULL,
    state		VARCHAR(64)	NOT NULL,
    PRIMARY KEY(address_id),
    FOREIGN KEY (person_id)
		REFERENCES	task_nine_person (person_id)
        ON DELETE CASCADE
);


insert into task_nine_person
value (1,'xyz','abc');

insert into task_nine_person
value (2,'def','xyz');

insert into task_nine_address 
value (1,2,'ahd','qwerty');

insert into task_nine_address
value (2,1,'surt','qwerty');

select * from task_nine_person;

select * from task_nine_address;

select first_name, last_name, city, state
from task_nine_person left join task_nine_address
on task_nine_person.person_id = task_nine_address.person_id
;