

Create table emp
(
	id INT,
    salary bigint(8),
    primary key(id)
);

select * from emp;

# PROCEDURE that return highest salary
call getSalary(3);

#PROCEDURES
DELIMITER //
CREATE PROCEDURE getSalary(emp_id int)
BEGIN
    select ifnull((select salary from emp where id = emp_id order by salary desc), null);
END //
DELIMITER ;



