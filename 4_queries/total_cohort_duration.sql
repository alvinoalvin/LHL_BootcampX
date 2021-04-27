SELECT cohorts.name, sum(completed_at-started_at) as total_duration
FROM assistance_requests
  join students on student_id = students.id
  join cohorts on cohort_id = cohorts.id
group by cohorts.name
order by total_duration