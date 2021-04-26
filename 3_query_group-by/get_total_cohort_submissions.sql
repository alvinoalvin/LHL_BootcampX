SELECT cohorts.name, count(assignment_submissions.id) as total_submissions
from cohorts
  join students on students.cohort_id = cohorts.id
  join assignment_submissions on assignment_submissions.student_id = students.id
group by cohorts.name