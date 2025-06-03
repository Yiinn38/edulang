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
    status  VARCHAR(50) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE courses
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    name       VARCHAR(100) NOT NULL,
    language   VARCHAR(50)  NOT NULL,
    level      VARCHAR(50)  NOT NULL,
    schedule   VARCHAR(100) NOT NULL,
    capacity   INT          NOT NULL,
    teacher_id INT          NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES teachers (id)
);

CREATE TABLE id_card
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT  NOT NULL,
    course_id  INT  NOT NULL,
    date       DATE NOT NULL,
    UNIQUE (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students (id),
    FOREIGN KEY (course_id) REFERENCES courses (id)
);

CREATE TABLE grades
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    id_card    INT          NOT NULL,
    evaluation VARCHAR(100) NOT NULL,
    score      DECIMAL(3, 2) DEFAULT 0.0,
    date       DATE         NOT NULL,
    FOREIGN KEY (id_card) REFERENCES id_card (id)
);

CREATE TABLE payments
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT            NOT NULL,
    concept    VARCHAR(100)   NOT NULL,
    ammount    DECIMAL(10, 2) NOT NULL,
    date       DATE           NOT NULL,
    status     ENUM ('pendiente', 'pagado') DEFAULT 'pendiente',
    FOREIGN KEY (student_id) REFERENCES students (id)
);
