# 1
Select * 
from cd.facilities
# 2
Select name, membercost + guestcost + initialoutlay + monthlymaintenance AS totalcost 
from cd.facilities
# 3
Select name
from cd.facilities
where membercost > 0
# 4
Select name
from cd.facilities
where membercost > 0 AND membercost < monthlymaintenance/50
# 5
Select name
from cd.facilities
where name like '%Tennis%'
# 6
Select *
from cd.facilities
where facid = 1 OR facid = 5;
# 7
