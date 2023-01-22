-- 5
select * from
(
select * from
(select "to" as direction) as t1
union
(select "from" as direction)
) as t1
join
(
select transactions.TransactionID, Amount, Timestamped, FromAccount, ToAccount,Comment 
from transactions left join transactioncomment
on transactions.TransactionID = transactioncomment.TransactionID 
where FromAccount =  45000000 or ToAccount =  45000000
order by Timestamped Desc
limit 1
) as t2
where (FromAccount =45000000 and direction = "from" ) or (toAccount =45000000 and direction = "to");
