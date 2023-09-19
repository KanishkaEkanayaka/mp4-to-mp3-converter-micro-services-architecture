-- user for the database(like database admin)
CREATE USER 'auth_user'@'%' IDENTIFIED BY 'Prolap@123';

-- create database
CREATE DATABASE auth;

-- grant privileges to the auth_user
GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'%';

USE auth;

CREATE TABLE user(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	password VARCHAR(255) NOT NULL
);

INSERT INTO user (email,password) VALUES ('kanishka@gmail.com','KaniFucker');
