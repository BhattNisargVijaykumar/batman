select * from department;

CREATE TABLE employees
(
	id INT,
    name VARCHAR(50),
    salary INT,
    department_id INT,
    PRIMARY KEY(id)
);

ALTER TABLE employees
ADD foreign key(department_id) references department(id);

CREATE TABLE department
(
	id INT,
    name VARCHAR(50),
    PRIMARY KEY(id)
);

select * from employees;

SELECT  d.name AS Department, e1.name AS Employee, e1.salary AS Salary
FROM 
employees e1
		INNER JOIN
        department d ON e1.department_id = d.id
		WHERE 3>(
				SELECT COUNT(DISTINCT salary)
				FROM employees e2
				WHERE e2.salary > e1.salary
							AND 
						e1.department_id = e2.department_id);