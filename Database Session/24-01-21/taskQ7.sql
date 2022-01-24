/*
Q.7 Create a database schema for student grade system. It contains student data and their grade of each subject based on the different semester.
*/

USE task_database;

CREATE TABLE student_detail(
	s_id	BIGINT(32)	NOT NULL,
    first_name	VARCHAR(32)	NOT NULL,
    middle_name	VARCHAR(32)	NOT NULL,
    last_name	VARCHAR(32)	NOT NULL,
    address		VARCHAR(32)	NOT NULL,
    s_en_number	BIGINT(32)	NOT NULL,
    email	VARCHAR(32)	NOT NULL,
    school_name	VARCHAR(32)	NOT NULL,
    is_current_study	ENUM('y','n') NOT NULL,
    last_completed_semester TINYINT(8) NOT NULL,
    PRIMARY KEY(s_id)
);

CREATE TABLE student_grade (
	sg_id	BIGINT(32)	NOT NULL,
    s_id	BIGINT(32)	NOT NULL,
    semester	TINYINT(8)	NOT NULL,
    subject_name	VARCHAR(32)	NOT NULL,
    subject_grade	VARCHAR(32)	NOT NULL,
    PRIMARY KEY(sg_id),
    FOREIGN KEY (s_id)
		REFERENCES student_detail (s_id)
        ON DELETE CASCADE
);