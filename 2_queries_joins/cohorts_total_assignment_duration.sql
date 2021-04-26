SELECT SUM(duration) AS total_duration
from assignment_submissions
  JOIN students ON assignment_submissions.student_id = students.id
  JOIN cohorts ON students.cohort_id = cohorts.id
where cohorts.name =  'FEB12';