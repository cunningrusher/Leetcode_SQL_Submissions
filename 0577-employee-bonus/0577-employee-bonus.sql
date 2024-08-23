# Write your MySQL query statement below
Select e.name,b.bonus
From Employee e
left join Bonus b on e.empId=b.empId
where b.bonus<1000 or b.bonus is NULL