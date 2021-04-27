select count(assistance_requests.id), name
from students
  join assistance_requests on assistance_requests.student_id=students.id
where name ='Elliot Dickinson'
group by (name)