# Write your MySQL query statement below
with cte as (Select d.name as Department, 
       e.name as Employee, 
       e.salary as Salary, 
       Dense_RANK() over (partition by d.name order by e.salary desc) as rn
From Employee e
left join Department d
on e.departmentId=d.id)
Select Department,
       Employee,
       Salary
       From cte
       where rn<=3