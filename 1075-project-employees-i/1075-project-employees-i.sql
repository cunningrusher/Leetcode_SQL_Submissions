# Write your MySQL query statement below
select p.project_id, ROUND((sum(e.experience_years)/count(project_id)),2) as average_years
From project p
left join employee e
on p.employee_id=e.employee_id
group by p.project_id