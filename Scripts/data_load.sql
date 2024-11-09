-- Vložená data pro tabulku Trainer
INSERT INTO Trainer (name, specialization, experience_years) VALUES
    ('Virunachal Sandjiv', 'Software Engineering', 5),
    ('Jan Novák', 'Data Science', 3),
    ('Petra Svobodová', 'Web Development', 7),
    ('Karel Macura', 'Machine Learning', 4),
    ('Lucie Veselá', 'Mobile Development', 6),
    ('Pavel Hlavatý', 'Database Design', 8),
    ('Jana Nová', 'Artificial Intelligence', 9),
    ('Ivana Horáková', 'Cybersecurity', 2),
    ('Bohouš Peterka', 'Cloud Computing', 6),
    ('Veronika Klimešová', 'Game Development', 4);

-- Vložená data pro tabulku Course
INSERT INTO Course (course_name, start_date, end_date, capacity, trainer_id) VALUES
    ('Python Basics', '2024-01-10', '2024-02-10', 30, 1),
    ('Data Analysis with Python', '2024-03-05', '2024-04-05', 25, 2),
    ('Frontend Development', '2024-02-01', '2024-03-01', 20, 3),
    ('Machine Learning Fundamentals', '2024-04-15', '2024-05-15', 15, 4),
    ('Mobile App Development', '2024-05-10', '2024-06-10', 18, 5),
    ('Database Fundamentals', '2024-06-20', '2024-07-20', 22, 6),
    ('Intro to AI', '2024-07-25', '2024-08-25', 28, 7),
    ('Cybersecurity Essentials', '2024-08-05', '2024-09-05', 25, 8),
    ('Cloud Computing 101', '2024-09-10', '2024-10-10', 30, 9),
    ('Game Design Basics', '2024-10-15', '2024-11-15', 15, 10);

-- Vložená data pro tabulku Student
INSERT INTO Student (name, email, date_of_birth, join_date) VALUES
    ('Martin Novák', 'm.novak8888@gmail.com', '2000-05-15', '2024-05-01'),
    ('Katerina Veselá', 'kata.vesela@yahoo.com', '1998-10-20', '2024-01-15'),
    ('Martin Kaprál', 'martinkapral1997@gmail.com', '1997-12-05', '2024-02-01'),
    ('Petro Petrić', 'kosovojesrbija@mail.ru', '1997-07-07', '2024-02-10'),
    ('Miroslav Černý', 'mircerny99@example.com', '1999-03-30', '2024-02-20'),
    ('Pavel Lorenc', 'lorenc79@email.cz', '1979-05-22', '2024-03-05'),
    ('Jan Mareš', 'honzamares1996@gmail.com', '1996-11-11', '2024-03-15'),
    ('Petra Řezníčková', 'petule.ulrichova@.com', '2001-02-28', '2024-03-25'),
    ('Adam Veselý', 'adaves253@seznam.cz', '1997-09-10', '2024-04-01'),
    ('Veronika Majarová', 'veruuu.majar@seznam.cz', '2000-12-25', '2024-04-10');

-- Vložená data pro tabulku Student_Course_Signup
INSERT INTO Student_Course_Signup (student_id, course_id, signup_date) VALUES
    (1, 1, '2024-01-05'),
    (2, 1, '2024-01-06'),
    (3, 2, '2024-03-01'),
    (4, 3, '2024-02-02'),
    (5, 4, '2024-04-16'),
    (6, 5, '2024-05-11'),
    (7, 6, '2024-06-21'),
    (8, 7, '2024-07-26'),
    (9, 8, '2024-08-06'),
    (10, 9, '2024-09-11');
