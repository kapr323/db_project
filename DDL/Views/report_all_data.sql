-- tento reportovaci view vraci vsechny vhodne aliasovane sloupce ze vsech tabulek v projektu spojenych pomoci odpovidajicich JOINu
CREATE VIEW report_all_data AS
SELECT
    s.student_id AS student_id,
    s.name AS student_name,
    s.email AS student_email,
    s.date_of_birth AS student_date_of_birth,
    s.join_date AS student_join_date,
    
    t.trainer_id AS trainer_id,
    t.name AS trainer_name,
    t.specialization AS trainer_specialization,
    t.experience_years AS trainer_experience_years,
    
    c.course_id AS course_id,
    c.course_name AS course_name,
    c.start_date AS course_start_date,
    c.end_date AS course_end_date,
    c.capacity AS course_capacity,
    c.trainer_id AS course_trainer_id,
    
    scs.signup_id AS signup_id,
    scs.student_id AS signup_student_id,
    scs.course_id AS signup_course_id,
    scs.signup_date AS signup_date
FROM
    Student s
JOIN
    Student_Course_Signup scs ON s.student_id = scs.student_id
JOIN
    Course c ON scs.course_id = c.course_id
JOIN
    Trainer t ON c.trainer_id = t.trainer_id;
