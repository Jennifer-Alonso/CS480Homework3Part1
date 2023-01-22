-- 2. How many accounts does “Scrooge McDuck” have?

select count(PersonID) as totalAccounts from 
accounts join person on  
PersonID = PID
where firstName = "Scrooge" AND LastName = "McDuck"; 

