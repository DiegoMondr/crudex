CREATE DATABASE veo_links;

USE veo_links;

CREATE TABLE users(
    id INT(11) NOT NULL,
    username VARCHAR(20) NOT NULL,
    password VARCHAR(20) NOT NULL,
    fullname VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);


ALTER TABLE users 
    ADD PRIMARY KEY (id);

ALTER TABLE users
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 1;

DESCRIBE users;


CREATE TABLE links(
    id INT (11) NOT NULL,
    title VARCHAR(50) NOT NULL,
    url VARCHAR(100) NOT NULL,
    description TEXT,
    user_id INT (11),
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) 
);