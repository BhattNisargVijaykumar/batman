CREATE TABLE logs
(
	id INT,
    num VARCHAR(8),
    PRIMARY KEY(id)
);

select * from logs;
        
select l1.num as consecutive_nums 
from logs l1
		JOIN 
			logs l2 ON  l1.num = l2.num
		JOIN
			logs l3 ON l2.num =l3.num  
				where l2.id-l1.id = 1 AND l3.id-l2.id = 1;  

