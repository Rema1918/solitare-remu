
--AGGREGATE FUNCTIONS (Sum, max, Min, Avg, Count, Group by, Having Clauses)

select FirstName, count(FirstName) as 'Count' from Person.Person group by FirstName
select max(bonus), min(bonus), avg(bonus), count(bonus) from Sales.SalesPerson -- To check the minimum,maximum,average,Total bonus(AGGREGATE FUNCTIONS-> Its in braket())

select max(bonus) 'Highest bonus', 
min(bonus) 'Minimum bonus', 
avg(bonus) 'Average bonus', 
count(bonus) 'total bonus'
from Sales.SalesPerson --'Highest bonus', 'Minimum bonus', 'Average bonus','Total bonus' this is to change the column name

select FirstName, COUNT(FirstName) as CountName from Person.Person group by FirstName having count(FirstName)>1; -- HAVING CLAUSE is used when the group by is invovled 
select FirstName, COUNT(FirstName) as CountName from Person.Person group by FirstName having count(FirstName)>2;