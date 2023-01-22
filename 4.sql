-- 4
SELECT distinct AccountID, TransactionID, Amount, Timestamped from
(
select AccountID, PersonID from Accounts join person on  
PersonID = PID
where firstName = "Scrooge" AND LastName = "McDuck"
) as t1
join 
transactions where AccountID = FromAccount
UNION
SELECT distinct AccountID, TransactionID, Amount, Timestamped from
(
select AccountID, PersonID from Accounts join person on  
PersonID = PID
where firstName = "Scrooge" AND LastName = "McDuck"
) as t2
join 
transactions where AccountID = toAccount
order by Timestamped DESC,TransactionID ASC, AccountID ASC;