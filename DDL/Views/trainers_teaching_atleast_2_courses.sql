-- tento view vraci trenery kteri vyucuji alespon 2 kurzy
CREATE VIEW trainers_teaching_atleast_2_courses AS
SELECT
    t.trainer_id,
    t.name AS trainer_name,
    t.specialization,
    t.experience_years,
    COUNT(c.course_id) AS total_courses
FROM
    Trainer t
JOIN
    Course c ON t.trainer_id = c.trainer_id
GROUP BY
    t.trainer_id, t.name, t.specialization, t.experience_years
HAVING
    COUNT(c.course_id) >= 2;
