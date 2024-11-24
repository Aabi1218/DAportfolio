# Write your MySQL query statement below
With ranked AS (
Select 
    d.name AS Department , 
    e.name AS Employee, 
    e.salary AS Salary,
    Dense_rank() OVER(Partition BY d.name Order BY e.salary DESC ) AS 'rank'
    From Employee AS e
    Join Department AS d
    on e.departmentId = d.id
)
Select Department, Employee,Salary
From ranked
Where ranked.rank < 4