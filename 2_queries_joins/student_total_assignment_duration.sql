SELECT SUM(duration) AS total_duration
from assignment_submissions
  JOIN students ON assignment_submissions.student_id = students.id
where name =  'FEB12';