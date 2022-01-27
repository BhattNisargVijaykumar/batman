CREATE TABLE weather
(
	id INT,
    record_date DATE,
    temperature INT,
    primary key(id)
);

INSERT INTO `traning`.`weather` (`id`, `record_date`, `temperature`) VALUES ('1', '2015-01-01', '10');
INSERT INTO `traning`.`weather` (`id`, `record_date`, `temperature`) VALUES ('2', '2015-01-02', '25');
INSERT INTO `traning`.`weather` (`id`, `record_date`, `temperature`) VALUES ('3', '2015-01-03', '20');
INSERT INTO `traning`.`weather` (`id`, `record_date`, `temperature`) VALUES ('4', '2015-01-04', '30');


select * from weather;



SELECT w1.id
FROM 
weather w1
JOIN 
weather w2
ON 
w1.id=w2.id+1
WHERE w1.temperature>w2.temperature;

