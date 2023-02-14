-- 문제 1
CREATE TABLE posts(
	postId INT AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    content VARCHAR(200) NOT NULL,
    PRIMARY KEY (postId)
);

SHOW COLUMNS FROM posts;

-- 문제 2
ALTER TABLE
    posts
ADD
    (writer varchar(100) default 'Anonymous',
    created_at datetime default CURRENT_TIMESTAMP);
    
-- 문제 3
ALTER TABLE
	posts
MODIFY
	content text NULL;
    
-- 문제 4
ALTER TABLE
	posts
DROP COLUMN
	writer;
    
SELECT * FROM posts;

-- 문제 5
DROP TABLE posts;

-- 문제 6
CREATE TABLE 
	IF not exists posts;
    
-- 문제 7
DROP TABLE
	IF exists posts;
    
