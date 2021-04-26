SELECT students.name, sum(assignment_submissions.duration)/count(assignment_submissions.id) as average_assignment_duration
from students
  join assignment_submissions on assignment_submissions.student_id = students.id
where students.end_date is NULL
group by students.name
order by sum(assignment_submissions.duration)/count(assignment_submissions.id) DESC
