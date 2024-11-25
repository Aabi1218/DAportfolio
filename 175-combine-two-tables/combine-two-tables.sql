# Write your MySQL query statement below
Select p.firstName, p.lastName, a.city,a.state
From Person AS p
Left Join Address AS a
on p.personId = a.personId