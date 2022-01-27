create table person
(
	id INT,
    email VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);

select * from person;

SELECT email
	FROM 
        person  
	GROUP BY email 
    HAVING COUNT(email)>1;/* execute time 0.063 sec*/


SELECT email
	FROM 
        person  
	GROUP BY email 
    HAVING COUNT(*)>1;  /* execute time 0.000sec*/