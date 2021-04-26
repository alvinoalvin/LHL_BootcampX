SELECT students.name, sum(assignment_submissions.duration)/count(assignment_submissions.id) as average_assignment_duration, sum(assignments.duration)/count(assignments.duration) as average_estimated_duration
from students
  join assignment_submissions on assignment_submissions.student_id = students.id
  join assignments on assignments.id = assignment_submissions.assignment_id
where students.end_date is NULL
group by students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
order by sum(assignment_submissions.duration)/count(assignment_submissions.id) ASC
