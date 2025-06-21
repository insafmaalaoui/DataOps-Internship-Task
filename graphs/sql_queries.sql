SCHEMA RELATIONNEL : STUDENT ATTENDANCE SYSTEM



DROP TABLE IF EXISTS attendance;
DROP TABLE IF EXISTS sessions;
DROP TABLE IF EXISTS students;

Table student : 
    
CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL
);

Table Sesion : 
    
CREATE TABLE sessions (
    session_id INTEGER PRIMARY KEY,
    date DATE NOT NULL,
    instructor TEXT,
    module TEXT
);

Table Attendance : 
    
CREATE TABLE attendance (
    student_id INTEGER,
    session_id INTEGER,
    PRIMARY KEY (student_id, session_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (session_id) REFERENCES sessions(session_id)
);

SQL Queries : 

Q1:
SELECT se.*
FROM students st
JOIN attendance a ON st.student_id = a.student_id
JOIN sessions se ON a.session_id = se.session_id
WHERE st.name = 'Alice';

Q2:
SELECT st.name, COUNT(*) AS session_count
FROM students st
JOIN attendance a ON st.student_id = a.student_id
GROUP BY st.name
ORDER BY session_count DESC
LIMIT 3;

Q3.
SELECT se.session_id, COUNT(DISTINCT a.student_id) AS number_of_attendees
FROM sessions se
LEFT JOIN attendance a ON se.session_id = a.session_id
GROUP BY se.session_id
ORDER BY se.session_id;

Q4
SELECT se.module, COUNT(DISTINCT a.student_id) AS unique_students
FROM sessions se
JOIN attendance a ON se.session_id = a.session_id
GROUP BY se.module
ORDER BY unique_students DESC;

Q5
SELECT st.*
FROM students st
LEFT JOIN attendance a ON st.student_id = a.student_id
WHERE a.session_id IS NULL;
