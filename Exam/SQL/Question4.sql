USE exam_db;

CREATE TABLE product (
	product_key	INT(32)	NOT NULL,
    PRIMARY KEY(product_key)
);

CREATE TABLE customer (
    customer_id INT(32) NOT NULL,
    product_key INT(32) NOT NULL,
    FOREIGN KEY (product_key)
        REFERENCES product (product_key)
        ON DELETE CASCADE
);

INSERT INTO product 
VALUES (5);

INSERT INTO product 
VALUES (6);

INSERT INTO customer 
VALUES (1,5);

INSERT INTO customer 
VALUES (2,6);

INSERT INTO customer 
VALUES (3,5);

INSERT INTO customer 
VALUES (3,6);

INSERT INTO customer 
VALUES (1,6);
