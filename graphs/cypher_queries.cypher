// Q1. List all sessions attended by the student named “Alice”
MATCH (s:Student {name: "Alice"})-[:ATTENDED]->(sess:Session)
RETURN sess.session_id, sess.date, sess.module, sess.instructor

// Q2. Find the top 3 students with the highest number of attended sessions
MATCH (s:Student)-[:ATTENDED]->(sess:Session)
RETURN s.name AS StudentName, COUNT(sess) AS SessionsAttended
ORDER BY SessionsAttended DESC
LIMIT 3

// Q3. Count how many students attended each session
MATCH (s:Student)-[:ATTENDED]->(sess:Session)
RETURN sess.session_id AS SessionID, COUNT(DISTINCT s) AS NumberOfAttendees
ORDER BY SessionID ASC

// Q4. For each module, get the number of unique students who attended at least one session
MATCH (s:Student)-[:ATTENDED]->(sess:Session)
RETURN sess.module AS Module, COUNT(DISTINCT s) AS UniqueStudents
ORDER BY UniqueStudents DESC

// Q5. Return a list of students who have never attended any session
MATCH (s:Student)
WHERE NOT (s)-[:ATTENDED]->(:Session)
RETURN s.student_id, s.name, s.email
