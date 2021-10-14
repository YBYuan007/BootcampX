const {Pool} =require('pg'); 
const pool = new Pool ({
  user: 'vagrant', 
  password:'123', 
  host:'localhost', 
  database:'bootcampx'
}); 

const nn =process.argv[2]; 

const a = (`
SELECT cohorts.name as cohort_name , teachers.name as teacher_name
FROM  assistance_requests
INNER JOIN teachers
ON teachers.id = assistance_requests.teacher_id 
INNER JOIN students
ON students.id = assistance_requests.student_id 
INNER JOIN cohorts
ON cohorts.id = students.cohort_id
WHERE cohorts.name = $1
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name
LIMIT 5; 
`)
pool
.query(a, [nn])
.then(res=>{
  res.rows.forEach(element => {
    console.log(`${element.cohort_name}: ${element.teacher_name}`);
  })
});


// pool.query (`
// SELECT cohorts.name as cohort_name , teachers.name as teacher_name
// FROM  assistance_requests
// INNER JOIN teachers
// ON teachers.id = assistance_requests.teacher_id 
// INNER JOIN students
// ON students.id = assistance_requests.student_id 
// INNER JOIN cohorts
// ON cohorts.id = students.cohort_id
// WHERE cohorts.name = '${process.argv[2]}'
// GROUP BY teachers.name, cohorts.name
// ORDER BY teachers.name
// LIMIT 5; 
// `)
// .then(res=>{
//   res.rows.forEach(element => {
//     console.log(`${element.cohort_name}: ${element.teacher_name}`);
//   })
// });


