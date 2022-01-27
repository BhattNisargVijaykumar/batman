/*DROP DATABASE IF EXISTS restaurant_db;
CREATE DATABASE IF NOT EXISTS restaurant_db; */
USE restaurant_db;

CREATE TABLE user(
	userId	BIGINT(32)	NOT NULL,
    firstName	VARCHAR(64)	NOT NULL,
    middleNme	VARCHAR(64)	NOT NULL,
    lastName	VARCHAR(64)	NOT NULL,
	mobile		VARCHAR(16)	NOT NULL,
    email		VARCHAR(64)	NOT NULL,
    passwordHash	VARCHAR(32)	NOT NULL,
    admin		TINYINT(8)	NOT NULL,
    vendor		TINYINT(8)	NOT NULL,
    chef		TINYINT(8)	NOT NULL,
    agent		TINYINT(8)	NOT NULL,
    registerdAt	DATETIME	NOT NULL,
    lastLogin	DATETIME	NOT NULL,
    intro		TINYTEXT	NOT NULL,
    profile		TEXT(32)	NOT NULL
);

CREATE TABLE menu(
	menuId	BIGINT(32)	NOT NULL,
    userId	BIGINT(32)	NOT NULL,
    title	VARCHAR(64)	NOT NULL,
    slug	VARCHAR(128)	NOT NULL,
    summary	TINYTEXT	NOT NULL,
    type	SMALLINT(8)	NOT NULL,
    crteatedAt	DATETIME	NOT NULL,
    updatedAt	DATETIME	NOT NULL,
    content	TEXT(32)	NOT NULL
);

CREATE TABLE item(
	itemId	BIGINT(32)	NOT NULL,
    userId	BIGINT(32)	NOT NULL,
    vendorID	BIGINT(32)	NOT NULL,
    title	VARCHAR(128)	NOT NULL,
    slug	VARCHAR(128)	NOT NULL,
    summary	TINYTEXT	NOT NULL,
    type	SMALLINT(8)	NOT NULL,
    cooking	TINYINT(8)	NOT NULL,
    sku		VARCHAR(128)	NOT NULL,
    price	FLOAT	NOT NULL,
    quantity	FLOAT	NOT NULL,
    unit	SMALLINT(8)	NOT NULL,
    recipe	TEXT(32)	NOT NULL,
    instructions	TEXT(32) NOT NULL,
    createdAt	DATETIME	NOT NULL,
    updatedAt	DATETIME	NOT NULL,
    content		TEXT(32)	NOT NULL
);

CREATE TABLE menu_item(
	miId	BIGINT(32)	NOT NULL,
    menuID	BIGINT(32)	NOT NULL,
    itemId	BIGINT(32)	NOT NULL,
    active	TINYINT(8)	NOT NULL
);

CREATE TABLE item_chef(
	icId	BIGINT(32)	NOT NULL,
    itemId	BIGINT(32)	NOT NULL,
    chefId	BIGINT(32)	NOT NULL,
    active	TINYINT(8)	NOT NULL
);

CREATE TABLE ingredient(
	ingId	BIGINT(32)	NOT NULL,
    userId	BIGINT(32)	NOT NULL,
    vendorId	BIGINT(32)	NOT NULL,
    title	VARCHAR(128)	NOT NULL,
    slug	VARCHAR(128)	NOT NULL,
    summary	TINYTEXT	NOT NULL,
    type	SMALLINT(8)	NOT NULL,
    sku	VARCHAR(128)	NOT NULL,
    quantity	FLOAT	NOT NULL,
    unit	SMALLINT(8)	NOT NULL,
    createdAt	DATETIME	NOT NULL,
    updatedAt	DATETIME	NOT NULL,
    content		TEXT(32)	NOT NULL
);

CREATE TABLE recipe(
	recipeId	BIGINT(32)	NOT NULL,
    itemId	BIGINT(32)	NOT NULL,
    ingId	BIGINT(32)	NOT NULL,
    quantity	FLOAT	NOT NULL,
    unit	SMALLINT(8)	NOT NULL,
    instructions	TEXT(32)	NOT NULL
);

CREATE TABLE table_top(
	tableId	BIGINT(32)	NOT NULL,
    code	VARCHAR(128)	NOT NULL,
    status	SMALLINT(8)	NOT NULL,
    capacity	SMALLINT(8)	NOT NULL,
    createdAt	DATETIME	NOT NULL,
    updatedAt	DATETIME	NOT NULL,
    content		TEXT(32)	NOT NULL
);

CREATE TABLE booking(
	bookingId	BIGINT(32)	NOT NULL,
    tableID		BIGINT(32)	NOT NULL,
    userID		BIGINT(32)	NOT NULL,
    token	VARCHAR(128)	NOT NULL,
    bookingStatus	SMALLINT(8)	NOT NULL,
    firstName	VARCHAR(64)	NOT NULL,
    middleName	VARCHAR(64)	NOT NULL,
    lastName	VARCHAR(64)	NOT NULL,
    mobileNo	VARCHAR(16)	NOT NULL,
    emailId		VARCHAR(32)	NOT NULL,
    addLine1	VARCHAR(64)	NOT NULL,
    addLine2	VARCHAR(64)	NOT NULL,
    city		VARCHAR(32)	NOT NULL,
    province	VARCHAR(64)	NOT NULL,
    country		VARCHAR(64)	NOT NULL,
    createdAt	DATETIME	NOT NULL,
    updatedAt	DATETIME	NOT NULL,
    content		TEXT(32)	NOT NULL
);

CREATE TABLE booking_item(
	bookingItemId	BIGINT(32)	NOT NULL,
    bookingId	BIGINT(32)	NOT NULL,
    itemId	BIGINT(32)	NOT NULL,
    sku	VARCHAR(128)	NOT NULL,
    price	FLOAT	NOT NULL,
    discount	FLOAT	NOT NULL,
    quantity	SMALLINT(8)	NOT NULL,
    unit	SMALLINT(8)	NOT NULL,
    status	SMALLINT(8)	NOT NULL,
    createdAt	DATETIME	NOT NULL,
    updatedAt	DATETIME	NOT NULL,
    content	TEXT(32)	NOT NULL
);



SELECT 
    i.*
FROM
    item i
        JOIN
    order_item oi ON (i.id = oi.itemID)
GROUP BY orderID
HAVING createdAt BETWEEN '19:00:00' AND '22:00:00';