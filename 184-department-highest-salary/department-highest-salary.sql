# Write your MySQL query statement below
With ranks AS (
    Select e.salary AS Salary ,d.name AS Department,e.name AS Employee, rank() Over(Partition by d.name Order by salary DESC) AS ranked
From Employee as e
Join Department as d
on e.departmentId = d.id
)
Select Department, Employee, Salary
From ranks
Where ranked = 1