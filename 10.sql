-- 10 
delete from transactions
where FromAccount in 
(
select AccountID from 
(select PID from person
where FirstName = "Raleigh" and LastName = "Stollard"
) as table1
join 
accounts on table1.PID = accounts.PersonID
)
or ToAccount in 
(
select AccountID from 
(select PID from person
where FirstName = "Raleigh" and LastName = "Stollard"
) as table2
join 
accounts on table2.PID = accounts.PersonID
);


delete from accounts
where PersonID = 
(
select PID from person
where FirstName = "Raleigh" and LastName = "Stollard"
);

delete from person
where FirstName = "Raleigh" and LastName = "Stollard";




