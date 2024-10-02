-- Create 'ola' database
CREATE DATABASE ola;

-- Switch to 'ola' database
USE ola;

-- Create 'users' table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Create 'rides' table
CREATE TABLE rides (
    ride_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    pickup VARCHAR(255),
    dropoff VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

select * from rides;
select * from users;

