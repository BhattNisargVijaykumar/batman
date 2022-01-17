DROP DATABASE IF EXISTS learning;
CREATE DATABASE IF NOT EXISTS learning; 
USE learning;

 CREATE TABLE customer_details (
    u_id 			INT 		NOT NULL,
    first_name 		VARCHAR(8) 	NOT NULL,
    last_name 		VARCHAR(8) 	NOT NULL,
    email_id		VARCHAR(8)	NOT NULL,
    mobile_number 	INT 		NOT NULL,
    PRIMARY KEY (u_id)
);

CREATE TABLE address_details (
    address_id 		INT 		NOT NULL,
    u_id			INT 		NOT NULL,
    address_line1 	VARCHAR(16) NOT NULL,
    address_line2 	VARCHAR(16) NOT NULL,
    city			VARCHAR(8)	NOT NULL,
    postal_code		VARCHAR(8)	NOT NULL,
    country			VARCHAR(16) NOT NULL,
    FOREIGN KEY (u_id)
        REFERENCES customer_details (u_id)
        ON DELETE CASCADE,
    PRIMARY KEY (address_id)
);

CREATE TABLE product_category (
category_id 	INT 		NOT NULL,
category_name 	VARCHAR(8) 	NOT NULL,
category_desc 	VARCHAR(16) NOT NULL,
PRIMARY KEY (category_id)
);

CREATE TABLE product_details (
    product_id			INT 		NOT NULL,
    product_photo 		BLOB,
    product_name 		VARCHAR(16) NOT NULL,
    product_desc 		VARCHAR(16) NOT NULL,
    product_price 		INT 		NOT NULL,
    product_parent_id 	INT 		NOT NULL,
    product_child_id 	INT 		NOT NULL,
    category_id 		INT 		NOT NULL,
    FOREIGN KEY (category_id)
        REFERENCES product_category (category_id)
        ON DELETE CASCADE,
    PRIMARY KEY (product_id)
);

CREATE TABLE orders_details (
order_id 			INT NOT NULL,
order_total 		INT NOT NULL,
order_payment_id 	INT NOT NULL,
order_qnt 			INT NOT NULL,
product_id 			INT NOT NULL,
address_id 			INT NOT NULL,
u_id 				INT NOT NULL,
FOREIGN KEY (product_id)
        REFERENCES product_details (product_id)
        ON DELETE CASCADE,
FOREIGN KEY (address_id)
        REFERENCES address_details (address_id)
        ON DELETE CASCADE,        
FOREIGN KEY (u_id)
        REFERENCES customer_details (u_id)
        ON DELETE CASCADE,  
    PRIMARY KEY (order_id)
);