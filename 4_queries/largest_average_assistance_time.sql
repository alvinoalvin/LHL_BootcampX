select cohorts.name as name, avg(completed_at - started_at) as average_assistance_time
from assistance_requests
  join students on assistance_requests.student_id  = students.id
  join cohorts on students.cohort_id = cohorts.id
group by cohorts.name
order by average_assistance_time desc
limit 1 ;