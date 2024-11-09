-- zde ulozte par SELECT dotazu vyuzivajicich JOIN, prip. UNION nad tabulkami v projektu
SELECT -- Seznam studentů a kurzů na které jsou přihlášeni
    s.student_id,
    s.name AS student_name,
    s.email AS student_email,
    c.course_id,
    c.course_name AS course_name,
    c.start_date,
    c.end_date
FROM
    Student s
JOIN
    Student_Course_Signup scs ON s.student_id = scs.student_id
JOIN
    Course c ON scs.course_id = c.course_id
ORDER BY
    s.student_id, c.start_date;

SELECT -- List kurzů se jmény trenérů
    c.course_id,
    c.course_name,
    c.start_date,
    c.end_date,
    t.trainer_id,
    t.name AS trainer_name
FROM
    Course c
JOIN
    Trainer t ON c.trainer_id = t.trainer_id
ORDER BY
    c.start_date;

SELECT -- Seznam studentů bez kurzu
    s.student_id,
    s.name AS student_name,
    s.email AS student_email
FROM
    Student s
LEFT JOIN
    Student_Course_Signup scs ON s.student_id = scs.student_id
WHERE
    scs.course_id IS NULL;

SELECT -- Seznam všech lidí v akademii
    'Student' AS role,
    s.name AS person_name,
    s.email AS contact_info
FROM
    Student s
UNION

SELECT
    'Trainer' AS role,
    t.name AS person_name,
    t.specialization AS contact_info
FROM
    Trainer t;

SELECT -- Získání počtu studentů v jednotlivých kurzech
    c.course_name,
    COUNT(scs.student_id) AS num_students
FROM
    Course c
LEFT JOIN
    Student_Course_Signup scs ON c.course_id = scs.course_id
GROUP BY
    c.course_id
ORDER BY
    num_students DESC;
