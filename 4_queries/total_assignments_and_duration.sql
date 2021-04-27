select day, count(assignment_submissions) as number_of_assignments ,sum(assignment_submissions.duration)
from assignment_submissions
join assignments on assignments.id = assignment_submissions.assignment_id
group by day