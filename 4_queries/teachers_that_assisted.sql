/* select teachers.name, 'JUL02' as cohort
from assistance_requests
join teachers on teachers.id = assistance_requests.teacher_id
join students on students.id = assistance_requests.student_id
join cohorts on cohorts.id = students.cohort_id
where cohorts.name = 'JUL02'
group by teachers.name
ORDER by teachers.name */

SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
  JOIN assistance_requests ON teacher_id = teachers.id
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;
