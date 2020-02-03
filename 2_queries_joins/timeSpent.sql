--  SELECT sum(assignment_submissions.duration) from assignment_submissions JOIN students ON students.id = student_id WHERE name = 'Ibrahim Schimmel';

SELECT sum(duration) as total_duration 
FROM assignment_submissions 
JOIN students on students.id=student_id
JOIN cohorts on cohorts.id=cohort_id
WHERE cohorts.name ='FEB12';