USE exam_db;

CREATE TABLE orders (
    order_number INT(32) NOT NULL,
    customer_number INT(32) NOT NULL,
    PRIMARY KEY (order_number)
);

INSERT INTO orders
value(1, 1);

INSERT INTO orders
value(2, 2);

INSERT INTO orders
value(3, 3);

INSERT INTO orders
value(4, 3);
