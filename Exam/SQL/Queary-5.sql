SELECT 
    student_id, course_id, grade
FROM
    Enrollments
WHERE
    (student_id, grade) IN (SELECT student_id, MAX(grade)
        FROM
            Enrollments
        GROUP BY student_id)
ORDER BY student_id;