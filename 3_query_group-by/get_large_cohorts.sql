SELECT cohorts.name, count(students.id) as student_count
from cohorts
join students on cohorts.id = students.cohort_id
group by cohorts.name
having count(students.id) >= 18
order by count(students.id) ASC