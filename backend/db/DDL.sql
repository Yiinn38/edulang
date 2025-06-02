USE edulang_db;

CREATE TABLE roles
(
    id        INT PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE users
(
    id        INT PRIMARY KEY AUTO_INCREMENT,
    name      VARCHAR(100) NOT NULL,
    address   VARCHAR(100) NOT NULL UNIQUE,
    password  VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    role_id   INT          NOT NULL,
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

CREATE TABLE students
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    user_id    INT NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE teachers
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT         NOT NULL UNIQUE,
    status  VARCHAR(20) NOT NULL CHECK (status IN ('available', 'unavailable')),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE courses
(
    id       INT PRIMARY KEY AUTO_INCREMENT,
    name     VARCHAR(100) NOT NULL,
    language VARCHAR(50)  NOT NULL,
    level    VARCHAR(50)  NOT NULL,
    schedule VARCHAR(100) NOT NULL,
    capacity INT NOT NULL,
    teacher_id INT NOT NULL,
);
