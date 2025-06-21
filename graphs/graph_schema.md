#  Graph Schema: Student Attendance System

##  Nodes

### 1. :Student
- `student_id` (integer)
- `name` (string)
- `email` (string)

### 2. :Session
- `session_id` (integer)
- `date` (date)
- `instructor` (string)
- `module` (string)

##  Relationships

### :Student -[:ATTENDED]-> :Session
- A student attended a session
- Based on `attendance.csv`
