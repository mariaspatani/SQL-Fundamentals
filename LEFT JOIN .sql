SELECT Students.student_id, Students.name, Marks.marks
FROM Students
LEFT JOIN Marks
ON Students.student_id = Marks.student_id;
