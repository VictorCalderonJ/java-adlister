-- Create the adlister_db database if it doesn't exist
CREATE DATABASE IF NOT EXISTS adlister_db;

-- Use the adlister_db database
USE adlister_db;

-- Drop the users and ads tables if they exist
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS ads;

-- Create the users table
CREATE TABLE IF NOT EXISTS users (
                                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                     username VARCHAR(150) NOT NULL,
                                     email VARCHAR(200) NOT NULL,
                                     password VARCHAR(150) NOT NULL,
                                     PRIMARY KEY (id)
);

-- Create the ads table
CREATE TABLE IF NOT EXISTS ads (
                                   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                   user_id INT UNSIGNED NOT NULL,
                                   title VARCHAR(500) NOT NULL,
                                   description VARCHAR(150) NOT NULL,
                                   PRIMARY KEY (id),
                                   FOREIGN KEY (user_id) REFERENCES users(id)
);
