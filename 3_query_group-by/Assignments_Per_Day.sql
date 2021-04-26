SELECT day, count(id) as total_assignments
from assignments
-- Join assignments on assignments.id = assignment_submissions.assignment_id
group by(day)
having count(id) >= 10
order by day
;