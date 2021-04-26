select name, id, cohort_id
from students
where phone IS NULL or
  email is null