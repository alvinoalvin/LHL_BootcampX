SELECT name , start_date, cohort.name as cohort_name, cohort.start_date cohort_start_date
from  students 
JOIN cohorts on cohort_id = cohort.id
where cohort_id != cohort.id
order by cohort_start_date