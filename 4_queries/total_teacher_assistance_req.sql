select count(assistance_requests.id), name
from teachers
  join assistance_requests on assistance_requests.teacher_id=teachers.id
where name ='Waylon Boehm'
group by (name)