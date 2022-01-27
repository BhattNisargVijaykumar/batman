select d.dept_name,
COUNT(s.student_id)
from department d
LEFT OUTER JOIN student s
ON d.dept_id=s.dept_id
group by d.dept_id;