/*
Q.5 Write an SQL query to report all customers who never order anything. Return the result table in any order.
*/

USE task_database;

CREATE TABLE customers(
	c_id	BIGINT(32)	NOT NULL,
    name	VARCHAR(32)	NOT NULL,
    PRIMARY KEY(c_id)
);

CREATE TABLE orders(
	id	BIGINT(32)	NOT NULL,
    c_id	BIGINT(32) NOT NULL,
    FOREIGN KEY (c_id)
        REFERENCES customers (c_id)
        ON DELETE CASCADE
);


insert into customers 
value (1, 'Joe');

insert into customers 
value (2, 'Henry');

insert into customers 
value (3, 'Sam');

insert into customers 
value (4, 'Max');

insert into orders
value (1 , 3);

insert into orders
value (2 , 1);

select * from customers;

SELECT Name as customers
FROM
(
    SELECT customers.Name 
    FROM customers 
    LEFT JOIN orders 
    ON customers.c_id = orders.c_id
    WHERE orders.c_id IS NULL
) a 