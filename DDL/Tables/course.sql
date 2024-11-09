CREATE TABLE Course (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE,
    capacity INT CHECK (capacity > 0),
    trainer_id INT,
    FOREIGN KEY (trainer_id) REFERENCES Trainer(trainer_id)
);