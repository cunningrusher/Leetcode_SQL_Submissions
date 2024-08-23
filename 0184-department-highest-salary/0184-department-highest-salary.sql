Select dep_name as Department, e_name as Employee, e_salary as Salary
From(Select d.name as dep_name,
            e.salary as e_salary,
            departmentId,
            e.id,e.name as e_name,RANK() over (Partition by e.departmentId order by salary desc ) as rn
from employee e
left join Department d
on e.departmentId=d.id) a
where rn=1
