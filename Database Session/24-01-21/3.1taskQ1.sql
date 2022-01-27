/*
Q.1	Create a database structure for employee leave application. It should include all the employee's information as well as their leave information.
*/

USE task_database;

CREATE TABLE employee_experience_detail (
    eed_id BIGINT(32) NOT NULL,
    starting_date DATETIME NOT NULL,
    ending_date DATETIME NOT NULL,
    organization_name VARCHAR(32) NOT NULL,
    organization_location VARCHAR(32) NOT NULL,
	PRIMARY KEY (eed_id)
);

CREATE TABLE employee_leave_detail (
    el_id BIGINT(32) NOT NULL,
    leave_date DATETIME NOT NULL,
    leave_desc VARCHAR(64) NOT NULL,
	PRIMARY KEY (el_id)
);

CREATE TABLE employee_other_detail (
	eod_id	BIGINT(32)	NOT NULL,
    e_salary	BIGINT(32)	NOT NULL,
    e_work_start DATETIME	NOT NULL,
    e_work_end	DATETIME	NOT NULL,
    e_tax		BIGINT(32)	NOT NULL,
    e_holidays	VARCHAR(64)	NOT NULL,
	PRIMARY KEY (eod_id)
	
);

CREATE TABLE employee_emergency_contact_detail (
	e_emergency_id	BIGINT(32)	NOT NULL,
    e_contact1_name	VARCHAR(32)	NOT NULL,
    e_contact1_no	BIGINT(16)	NOT NULL,
    e_contact1_relation	VARCHAR(32)	NOT NULL,
    e_contact2_name	VARCHAR(32)	NOT NULL,
    e_contact2_no	BIGINT(16)	NOT NULL,
    e_contact2_relation	VARCHAR(32)	NOT NULL,
    e_contact3_name	VARCHAR(32)	NOT NULL,
    e_contact3_no	BIGINT(16)	NOT NULL,
    e_contact3_relation	VARCHAR(32)	NOT NULL,
	PRIMARY KEY (e_emergency_id)
);

CREATE TABLE employee_detail (
    e_id 			BIGINT(32)  NOT NULL,
    first_name 		VARCHAR(64) NOT NULL,
    middle_name		VARCHAR(64)	NOT NULL,
    last_name 		VARCHAR(64) NOT NULL,
    mobile_number	VARCHAR(16) NOT NULL,
    email_id		VARCHAR(64)	NOT NULL,
    e_password_hash	VARCHAR(32)	NOT NULL,
    education_data	VARCHAR(32)	NOT NULL,
    e_address_line1	VARCHAR(32) NOT NULL,
    e_address_line2	VARCHAR(32)	NOT NULL,
    e_address_city	VARCHAR(32)	NOT NULL,
    e_address_state	VARCHAR(32)	NOT NULL,
    e_address_country	VARCHAR(32)	NOT NULL,
    e_address_post_code	VARCHAR(32)	NOT NULL,
    gender			TINYINT(8)	NOT NULL,
    e_position		TINYINT(8)	NOT NULL,
    eed_id BIGINT(32) NOT NULL,
    el_id BIGINT(32) NOT NULL,
	eod_id	BIGINT(32)	NOT NULL,
	e_emergency_id	BIGINT(32)	NOT NULL,
    FOREIGN KEY (eed_id)
        REFERENCES employee_experience_detail (eed_id)
        ON DELETE CASCADE,
	FOREIGN KEY (el_id)
        REFERENCES employee_leave_detail (el_id)
        ON DELETE CASCADE,
	FOREIGN KEY (eod_id)
        REFERENCES employee_other_detail (eod_id)
        ON DELETE CASCADE,
	FOREIGN KEY (e_emergency_id)
        REFERENCES employee_emergency_contact_detail (e_emergency_id)
        ON DELETE CASCADE,
    PRIMARY KEY (e_id)
);