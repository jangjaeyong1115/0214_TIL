-- 문제 1
CREATE TABLE users(
	userId INT AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    birthday DATE NOT NULL,
    city VARCHAR(100) NULL,
    country VARCHAR(100) NULL,
    email VARCHAR(100) NULL,
    created_at DATETIME NULL,
    PRIMARY KEY (userId)
);

SHOW COLUMNS FROM users;

ALTER TABLE
    users
ADD
    created_at DATETIME default CURRENT_TIMESTAMP;

SELECT * FROM classicmodels.users;
    
-- 문제 2
INSERT INTO
	users (first_name, last_name, birthday, city, country, email)
VALUES
	('beemo', 'jeong','1000-01-01', NULL , NULL , 'beemo@hphk.kr'),
    ('Jieun', 'lee','1993-05-16','Seoul','Korea',NULL),
    ('Dami', 'Kim','1995-04-09','Seoul','Korea',NULL),
    ('Kwangsoo', 'Lee','1985-07-14','Seoul','Korea',NULL);

SELECT * FROM classicmodels.users;

-- 문제 3
INSERT INTO
	users (first_name, last_name, birthday, city, country, email)
VALUES
	('jaeyong','jang','1996-11-15','Seoul','Korea');
	

-- 문제 4
UPDATE 
	users
SET
	first_name = REPLACE(first_name,'Jieun','Jaeyong'),
    last_name = REPLACE(last_name,'lee','jang'),
    birthday = REPLACE(birthday,'1993-05-16','1996-11-15')
WHERE
	userId = 2;
    
SELECT * FROM classicmodels.users;

-- 문제 5
SET SQL_SAFE_UPDATES =0;

UPDATE
	users
SET
	country = REPLACE(country,'NULL','KOREA');
    
-- 문제 6
DELETE FROM
	users
WHERE
	first_name = 'beemo';
    
-- 문제 7
DELETE FROM
	users
WHERE
	first_name = 'Kwangsoo' and last_name = 'Lee';
    
-- 문제 8
DELETE FROM
	users
ORDER BY
	created_at DESC limit 1;
	
    

