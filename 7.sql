-- 7
insert into accounts (AccountID, TypeID, PersonID,Balance)
select 7777, typeID, PID, 50.00 from 
(
select typeID, PID from 
(
select typeID from accountType
where TypeName = "Checking"
)as t1
join  
(
select PID from person 
where Email  = "dollarbills@cash.money"
)as t2
) as t3;
