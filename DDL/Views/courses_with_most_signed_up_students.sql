-- tento view vraci TOP 5 kurzu s nejvice zapsanymi studenty
CREATE VIEW courses_with_most_signed_up_students AS
SELECT c.course_name, COUNT(scs.signup_id) AS num_signups
FROM Course c
JOIN Student_Course_Signup scs ON c.course_id = scs.course_id
GROUP BY c.course_id
ORDER BY num_signups DESC
LIMIT 5;