-- 3. What is the total balance of the account with customer id 3?
select sum(Balance)  from 
accounts join person on PersonID = PID
where PersonID = 3;
