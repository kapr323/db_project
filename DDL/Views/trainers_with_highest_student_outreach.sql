-- tento view vraci TOP 3 trenery s nejvetsim dosahem studentu,
-- jinymi slovy trenery, kteri vyucuji kurzy s nejvetsim poctem zapsanych studentu
CREATE VIEW trainers_with_highest_student_outreach AS
SELECT
    t.trainer_id,
    t.name AS trainer_name,
    t.specialization,
    t.experience_years,
    COUNT(scs.student_id) AS total_students
FROM
    Trainer t
JOIN
    Course c ON t.trainer_id = c.trainer_id
JOIN
    Student_Course_Signup scs ON c.course_id = scs.course_id
GROUP BY
    t.trainer_id, t.name, t.specialization, t.experience_years
ORDER BY
    total_students DESC
LIMIT 3;
