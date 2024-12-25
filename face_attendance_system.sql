CREATE DATABASE IF NOT EXISTS face_attendance_system;

use face_attendance_system;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS attendance;

CREATE TABLE users (
    id INT auto_increment,
    name varchar(100),
    email varchar(100),
    password varchar(255),
    role varchar(10),
    unique_id varchar(50),
    primary key(id),
    unique(email)
);

CREATE TABLE attendance (
    id INT auto_increment,
    course_name varchar(100),
    solt varchar(100),
    attended int,
    added_date varchar(30),
    user_email varchar(100),
    primary key(id)
)

-- adding admin
INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `unique_id`) VALUES (NULL, 'admin', 'admin@gmail.com', 'scrypt:32768:8:1$69qvjBsYvUL3NkdS$7d7127b2c42622a8a08e753f3d2e986292fb53f8042de48b5f30a2d50f26ed9152a175496570067a5eb85df7c927c9f573f2491afc70c9619ee36df7e5a4dd67', 'ADMIN', NULL);
