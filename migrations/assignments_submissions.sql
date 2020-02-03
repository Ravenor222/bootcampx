CREATE TABLE assignments (
    ID SERIAL PRIMARY KEY,
    name VARCHAR(255),
    content TEXT,
    day INTEGER,
    chapter INTEGER,
    duration INTEGER
);

CREATE TABLE assignment_submissions (
    ID SERIAL PRIMARY KEY,
    assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
    student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
    duration INTEGER,
    submission_date DATE
);