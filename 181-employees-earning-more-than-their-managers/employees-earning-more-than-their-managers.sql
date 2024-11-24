# Write your MySQL query statement below
Select e2.name AS Employee
From employee e1
Inner Join employee e2
on e1.id = e2.managerId
Where e1.salary < e2.salary
