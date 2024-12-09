# Write your MySQL query statement below
Select stock_name , SUM(CASE When operation = 'buy' THEN -price
Else price
End
) AS capital_gain_loss
FROM Stocks
Group BY stock_name