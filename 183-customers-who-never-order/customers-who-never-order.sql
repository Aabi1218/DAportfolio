# Write your MySQL query statement below
Select name AS Customers
From Customers AS c
Left Join Orders AS o
on o.customerId = c.id
Where customerId IS NULL