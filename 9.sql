-- 9 
UPDATE 	accounts 
set Balance = Balance * 1.01
where typeID in (
select typeID from accountType
where TypeName = "Checking"
);