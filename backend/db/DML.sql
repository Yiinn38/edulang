USE edulang_db;

INSERT INTO roles (role_name)
VALUES ('administrador'),
       ('docente'),
       ('alumno');

INSERT INTO users (name, address, password, role_id)
VALUES ('Carlos Mendoza', 'c.mendoza@edulang.com', 'C4rl0s_m3nd+', 1),
       ('Laura González', 'l.gonzalez@edulang.com', 'L4ur4_g0nz@', 2),
       ('Jorge Ramírez', 'j.ramirez@edulang.com', 'J0rg3_r4m1r3z!', 2),
       ('Pedro Sánchez', 'p.sanchez@edulang.com', 'P3dr0_s4nch3z*', 3),
       ('Ana Torres', 'a.torres@edulang.com', 'AnaT0rr3s_2024', 3),
       ('Luis Morales', 'l.morales@edulang.com', 'Lui5_M0r@l3s', 3),
       ('Elena Díaz', 'e.diaz@edulang.com', '3l3n4_D14z+', 3),
       ('Sofía Martínez', 's.martinez@edulang.com', 'S0f1a_M4rt!n', 3),
       ('María Rojas', 'm.rojas@edulang.com', 'M4r1a_R0j4s=', 3),
       ('Daniela León', 'd.leon@edulang.com', 'D4n13L30n_', 3),
       ('Miguel Vargas', 'm.vargas@edulang.com', 'M1gu3l_V@rg', 3),
       ('Carmen Ruiz', 'c.ruiz@edulang.com', 'C4rm3n_Ru1z!', 3);

INSERT INTO teachers (user_id, status)
VALUES (2, 'Lunes-Viernes, 9-14 hrs'),
       (3, 'Martes y Jueves, 10-13hrs');

INSERT INTO students (user_id)
VALUES (4),
       (5),
       (6),
       (7),
       (8),
       (9),
       (10),
       (11),
       (12);

INSERT INTO courses (name, language, level, schedule, capacity, teacher_id)
VALUES ('Inglés A1', 'Inglés', 'A1', 'Lun-Mié 10:00', 20, 1),
       ('Inglés B1', 'Inglés', 'B1', 'Mar-Jue 12:00', 20, 1),
       ('Francés A1', 'Francés', 'A1', 'Lun-Vie 9:00', 15, 2),
       ('Alemán A2', 'Alemán', 'A2', 'Mar-Jue 14:00', 10, 2),
       ('Italiano B1', 'Italiano', 'B1', 'Mié 13:00', 12, 1),
       ('Japonés A1', 'Japonés', 'A1', 'Vie 10:00', 10, 2),
       ('Inglés C1', 'Inglés', 'C1', 'Lun-Vie 17:00', 8, 1),
       ('Francés B2', 'Francés', 'B2', 'Mar 11:00', 15, 2),
       ('Chino A1', 'Chino', 'A1', 'Sáb 9:00', 20, 2),
       ('Portugués B1', 'Portugués', 'B1', 'Mié 14:00', 12, 1);

INSERT INTO id_card (student_id, course_id, date)
VALUES (11, 1, '2025-05-10'),
       (12, 1, '2025-05-11'),
       (13, 2, '2025-05-12'),
       (14, 3, '2025-05-13'),
       (15, 4, '2025-05-14'),
       (16, 5, '2025-05-15'),
       (17, 6, '2025-05-16'),
       (18, 7, '2025-05-17'),
       (19, 8, '2025-05-18');

INSERT INTO grades (id_card, evaluation, score, date)
VALUES
    (30, 'Parcial 1', 8.5, '2025-05-20'),
    (31, 'Parcial 1', 9.0, '2025-05-20'),
    (32, 'Parcial 1', 7.8, '2025-05-21'),
    (33, 'Parcial 1', 9.2, '2025-05-22'),
    (34, 'Parcial 1', 6.5, '2025-05-22'),
    (35, 'Parcial 1', 8.1, '2025-05-23'),
    (36, 'Parcial 1', 7.0, '2025-05-23'),
    (37, 'Parcial 1', 9.5, '2025-05-24'),
    (38, 'Parcial 1', 6.8, '2025-05-24');

INSERT INTO payments (student_id, concept, ammount, date, status)
VALUES
    (11, 'Inscripción', 500, '2025-05-01', 'pagado'),
    (11, 'Mensualidad Mayo', 750, '2025-05-10', 'pagado'),
    (12, 'Inscripción', 500, '2025-05-02', 'pagado'),
    (12, 'Mensualidad Mayo', 750, '2025-05-11', 'pendiente'),
    (13, 'Inscripción', 500, '2025-05-03', 'pagado'),
    (14, 'Inscripción', 500, '2025-05-04', 'pagado'),
    (15, 'Inscripción', 500, '2025-05-05', 'pendiente'),
    (16, 'Inscripción', 500, '2025-05-06', 'pagado'),
    (17, 'Inscripción', 500, '2025-05-07', 'pagado'),
    (18, 'Inscripción', 500, '2025-05-08', 'pendiente');


                                                                      

