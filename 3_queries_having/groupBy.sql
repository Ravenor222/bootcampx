-- SELECT day, count(*) FROM assignments
-- group by day
-- HAVING count(*) > 10
-- order by day 
-- ;

-- SELECT cohorts.name AS cohort_name, count(students.*) AS student_count FROM students
-- JOIN cohorts on cohorts.id = cohort_id
-- GROUP BY cohort_name
-- HAVING count(students.*) >= 18
-- order by student_count;


-- SELECT cohorts.name AS cohort, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions 
-- JOIN students on students.id = student_id
-- JOIN cohorts on cohorts.id = cohort_id
-- group by cohorts.name
-- order by total_submissions DESC;

-- SELECT students.name as student, avg(assignment_submissions.duration) AS average_assignment_duration
-- FROM students 
-- JOIN assignment_submissions ON student_id = students.id
-- WHERE end_date is null
-- group by student 
-- ORDER BY average_assignment_duration DESC;

-- SELECT students.name AS student,
--  avg(assignment_submissions.duration) AS average_assignment_duration,
--  avg(assignments.duration) AS average_estimated_duration 
--  FROM students 
--  JOIN assignment_submissions ON students.id = student_id
--  JOIN assignments ON assignments.id = assignment_id
--  WHERE end_date is null
--  GROUP BY student
--  HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
--  ORDER by (average_assignment_duration);

-- SELECT avg(total_students) as average_students FROM 
-- (SELECT count(students) as total_students
-- FROM students
-- JOIN cohorts on cohorts.id = cohort_id
-- GROUP BY cohorts) as totals_table;

select * FROM assignments WHERE 
ID NOT IN (SELECT assignment_id
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel');