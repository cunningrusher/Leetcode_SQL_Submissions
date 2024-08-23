# Write your MySQL query statement below
Select name
from employee where id in (Select managerID from employee group by managerId having count(*)>=5)