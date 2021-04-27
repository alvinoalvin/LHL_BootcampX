/* select students.id, assignments.day as day, assignments.chapter as chapter, students.name, count(assistance_requests)
from assistance_requests 
join assignments on assignments.id = assignment_id
join students on students.id = student_id
group by students.id */

SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
FROM assignments
  JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;
