CREATE TABLE Student_Course_Signup (
    signup_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    signup_date DATE NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);