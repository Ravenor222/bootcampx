-- SELECT count(id) FROM students WHERE cohort_id < '4';

-- SELECT name, id , cohort_id FROM students WHERE email is null;

-- SELECT name, email, id , cohort_id FROM students WHERE email NOT LIKE '%gmail.com' AND phone is null;

-- SELECT name,id,cohort_id from students where end_date is null order by cohort_id;

-- SELECT name,email,phone FROM students where GITHUB is NULL AND end_date is NOT NULL;