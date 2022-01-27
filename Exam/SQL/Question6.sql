USE exam_db;
CREATE TABLE products (
	product_id	INT(32)	NOT NULL,
    new_price	INT(32)	NOT NULL,
    change_date	DATE	NOT NULL
);

INSERT INTO products 
VALUE (1,20,'2019-08-14');

INSERT INTO products 
VALUE (2,50,'2019-08-14');

INSERT INTO products 
VALUE (1,30,'2019-08-15');

INSERT INTO products 
VALUE (1,35,'2019-08-16');

INSERT INTO products 
VALUE (2,65,'2019-08-17');

INSERT INTO products 
VALUE (3,20,'2019-08-18');
