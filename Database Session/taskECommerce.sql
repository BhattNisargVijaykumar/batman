DROP DATABASE IF EXISTS ecommerce_learning;
CREATE DATABASE IF NOT EXISTS ecommerce_learning; 
USE ecommerce_learning;

 CREATE TABLE user_detail (
    u_id 			BIGINT(32)  NOT NULL,
    first_name 		VARCHAR(64) NOT NULL,
    middle_name		VARCHAR(64)	NOT NULL,
    last_name 		VARCHAR(64) NOT NULL,
    mobile_number	VARCHAR(16) NOT NULL,
    email_id		VARCHAR(64)	NOT NULL,
    u_password_hash	VARCHAR(32)	NOT NULL,
    u_admin			TINYINT(8)	NOT NULL,
    u_vendor 		TINYINT(8)	NOT NULL,
    registered_date DATETIME	NOT NULL,
    last_login_date DATETIME	NOT NULL,
    intro			TINYTEXT	NOT NULL,
    u_profile		TEXT(16)	NOT NULL,
    PRIMARY KEY (u_id, first_name, middle_name, last_name, mobile_number, email_id)
);

CREATE TABLE category(
	category_id	BIGINT(32)		NOT NULL,
    parent_id	BIGINT(32)		NOT NULL,
    c_title		VARCHAR(64)		NOT NULL,
    meta_title	VARCHAR(128)	NOT NULL,
    slug		VARCHAR(128)	NOT NULL,
    c_content	TEXT(32)		NOT NULL,
    PRIMARY KEY(category_id, parent_id),
    FOREIGN KEY (parent_id)
        REFERENCES category (category_id)
        ON DELETE CASCADE
    
);

CREATE TABLE product_review(
	pr_id			BIGINT(32)	NOT NULL,
    product_id		BIGINT(32)	NOT NULL,
    parent_id		BIGINT(32)	NOT NULL,
    title			VARCHAR(128)NOT NULL,
    rating			SMALLINT(8)	NOT NULL,
    published		TINYINT(8)	NOT NULL,
    created_date	DATETIME	NOT NULL,
    published_date	DATETIME	NOT NULL,
    pr_content		TEXT(32)	NOT NULL,
	PRIMARY KEY(pr_id,parent_id),
    FOREIGN KEY (parent_id)
        REFERENCES product_review (pr_id)
        ON DELETE CASCADE
);

CREATE TABLE product(
	product_id		BIGINT(32)	NOT NULL,
    u_id			BIGINT(32)	NOT NULL,
    title			VARCHAR(128)NOT NULL,
    meta_title		VARCHAR(128)NOT NULL,
    slug			VARCHAR(128)NOT NULL,
    summary			TINYINT(16)	NOT NULL,
    product_type	SMALLINT(8)	NOT NULL,
    sku				VARCHAR(128)NOT NULL,
    price			FLOAT		NOT NULL,
    discount		FLOAT		NOT NULL,
    quantity		SMALLINT(8)	NOT	NULL,
    shop			TINYINT(8)	NOT NULL,
    created_date	DATETIME	NOT NULL,
    updated_date	DATETIME	NOT NULL,
    published_date	DATETIME	NOT NULL,
    starts_date		DATETIME	NOT NULL,
    ends_date		DATETIME	NOT NULL,
    product_content	TEXT(32)	NOT NULL,
    FOREIGN KEY (u_id)
        REFERENCES user_detail (u_id)
        ON DELETE CASCADE,
    PRIMARY KEY(product_id)
);

CREATE TABLE product_meta(
	product_meta_id			BIGINT(32)	NOT NULL,
    product_id				BIGINT(32)	NOT NULL,
    product_meta_key 		VARCHAR(64)	NOT NULL,
    product_meta_content	TEXT(32)	NOT NULL,
    FOREIGN KEY (product_id)
        REFERENCES product (product_id)
        ON DELETE CASCADE
);

CREATE TABLE tag(
	tag_id		BIGINT(32)		NOT NULL,
    title		VARCHAR(128)	NOT NULL,
    meta_title	VARCHAR(128)	NOT NULL,
    slug		VARCHAR(128)	NOT NULL,
    tag_content	TEXT(32)		NOT NULL,
    PRIMARY KEY(tag_id)
);

CREATE TABLE product_tag(
	product_id	BIGINT(32)	NOT NULL,
    tag_id		BIGINT(32)	NOT NULL,
    FOREIGN KEY (product_id)
        REFERENCES product (product_id)
        ON DELETE CASCADE,
	FOREIGN KEY (tag_id)
        REFERENCES tag (tag_id)
        ON DELETE CASCADE
);

CREATE TABLE u_order(
	order_id		BIGINT(32)	NOT NULL,
    u_id			BIGINT(32)	NOT NULL,
    session_id		VARCHAR(128)	NOT NULL,
    token			VARCHAR(128)	NOT NULL,
    o_status		SMALLINT(8)	NOT NULL,
    sub_total		FLOAT		NOT NULL,
    item_discount	FLOAT		NOT NULL,
    tax				FLOAT		NOT NULL,
    shipping		FLOAT		NOT NULL,
    total			FLOAT		NOT NULL,
    promo			VARCHAR(16)	NOT NULL,
    discount		FLOAT		NOT NULL,
    grand_total		FLOAT		NOT NULL,
    first_name		VARCHAR(64)	NOT NULL,
    middle_name		VARCHAR(64)	NOT NULL,
    last_name		VARCHAR(64)	NOT NULL,
    mobile_number	VARCHAR(16) NOT NULL,
    email_id		VARCHAR(64)	NOT NULL,
    add_line1		VARCHAR(64)	NOT NULL,
    add_line2		VARCHAR(64)	NOT NULL,
    city			VARCHAR(64)	NOT NULL,
    province		VARCHAR(64)	NOT NULL,
    country			VARCHAR(64)	NOT NULL,
    created_date	DATETIME	NOT NULL,
    updated_date	DATETIME	NOT NULL,
    order_content	TEXT(32)	NOT NULL,
    FOREIGN KEY (u_id)
        REFERENCES user_detail (u_id)
        ON DELETE CASCADE,    
    PRIMARY KEY(order_id)
);

CREATE TABLE order_item(
	order_item_id		BIGINT(32)		NOT NULL,
    product_id			BIGINT(32)		NOT NULL,
    order_id			BIGINT(32)		NOT NULL,
    sku					VARCHAR(128)	NOT NULL,
    price				FLOAT			NOT NULL,
	discount			FLOAT			NOT NULL,
    quantity			SMALLINT(8)		NOT NULL,
    created_date		DATETIME		NOT NULL,
    updated_date		DATETIME		NOT NULL,
    content				TEXT(32)		NOT NULL,
    FOREIGN KEY (product_id)
        REFERENCES product (product_id)
        ON DELETE CASCADE,
	FOREIGN KEY (order_id)
        REFERENCES u_order (order_id)
        ON DELETE CASCADE
);

CREATE TABLE transaction_detail(
	transaction_id		BIGINT(32)		NOT NULL,
    u_id				BIGINT(32)		NOT NULL,
    order_id			BIGINT(32)		NOT NULL,
    transaction_code	VARCHAR(128)	NOT NULL,
    transaction_type	SMALLINT(8)		NOT NULL,
    transaction_mode	SMALLINT(8)		NOT NULL,
    transaction_status	SMALLINT(8)		NOT NULL,
    created_date		DATETIME		NOT NULL,
    updated_date		DATETIME		NOT NULL,
    transaction_content	TEXT(32)		NOT NULL,
    FOREIGN KEY (u_id)
        REFERENCES user_detail (u_id)
        ON DELETE CASCADE,
	FOREIGN KEY (order_id)
        REFERENCES u_order (order_id)
        ON DELETE CASCADE
);

CREATE TABLE cart(
	cart_id		BIGINT(32)	NOT NULL,
    u_id		BIGINT(32)	NOT NULL,
    session_id	VARCHAR(128)	NOT NULL,
    token		VARCHAR(128)	NOT NULL,
    cart_status	SMALLINT(8)		NOT NULL,
    first_name		VARCHAR(64)	NOT NULL,
    middle_name		VARCHAR(64)	NOT NULL,
    last_name		VARCHAR(64)	NOT NULL,
    mobile_number	VARCHAR(16) NOT NULL,
    email_id		VARCHAR(64)	NOT NULL,
    add_line1		VARCHAR(64)	NOT NULL,
    add_line2		VARCHAR(64)	NOT NULL,
    city			VARCHAR(64)	NOT NULL,
    province		VARCHAR(64)	NOT NULL,
    country			VARCHAR(64)	NOT NULL,
    created_date	DATETIME	NOT NULL,
    updated_date	DATETIME	NOT NULL,
    cart_content	TEXT(32)	NOT NULL,
    FOREIGN KEY (u_id)
        REFERENCES user_detail (u_id)
        ON DELETE CASCADE,
    PRIMARY KEY (cart_id)
);

CREATE TABLE cart_item(
	cart_item_id	BIGINT(32)	NOT NULL,
    product_id	BIGINT(32)	NOT NULL,
    cart_id	BIGINT(32)	NOT NULL,
    sku		VARCHAR(128)	NOT NULL,
    price	FLOAT	NOT NULL,
    discount	FLOAT	NOT NULL,
    quantity SMALLINT(8)	NOT NULL,
    cart_active	TINYINT(8)	NOT NULL,
    created_date	DATETIME	NOT NULL,
    updated_date	DATETIME	NOT NULL,
    cart_item_content	TEXT(32)	NOT NULL,
    FOREIGN KEY (product_id)
        REFERENCES product (product_id)
        ON DELETE CASCADE,
	FOREIGN KEY (cart_id)
        REFERENCES cart (cart_id)
        ON DELETE CASCADE
);

CREATE TABLE product_category(
	product_id	BIGINT(8)	NOT NULL,
    category_id	BIGINT(8)	NOT NULL,
    FOREIGN KEY (product_id)
        REFERENCES product (product_id)
        ON DELETE CASCADE,
	FOREIGN KEY (category_id)
        REFERENCES category (category_id)
        ON DELETE CASCADE
);
