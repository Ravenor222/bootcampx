const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const arguments = process.argv.slice(2);


pool.query(`
    select distinct(teachers.name) as teacher, cohorts.name 
    from cohorts 
    JOIN students on cohorts.id = cohort_id 
    JOIN assistance_requests ON students.id = student_id 
    JOIN teachers ON teachers.id = teacher_id 
    WHERE cohorts.name = $1 
    ORDER BY teachers.name;
`, [arguments[0]])

.then(res => {
    console.log("connected")
    res.rows.forEach(teacher => {
        console.log(`${arguments[0]} : ${teacher.teacher}`)
    })
})