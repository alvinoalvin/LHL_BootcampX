/* SELECT cohorts.name, sum(completed_at-started_at)/count
(completed_at)  as avg_duration
FROM assistance_requests
  join students on student_id = students.id
  join cohorts on cohort_id = cohorts.id
group by cohorts.name
order by avg_duration */

SELECT avg (total_duration) as average_total_duration
FROM (
  SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
  FROM assistance_requests
    JOIN students ON students.id = student_id
    JOIN cohorts on cohorts.id = cohort_id
  GROUP BY cohorts.name
  ORDER BY total_duration
) as total_durations;
