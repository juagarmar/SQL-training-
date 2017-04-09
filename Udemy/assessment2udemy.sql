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
Select * from cd.facilities 
where facid in (1,5);
# 8 
select memid, surname, firstname, joindate 
from cd.members 
where joindate >= '2012-09-01'
# 9
Select max(joindate) as latest 
from cd.members;
# 10
select count(*) from cd.facilities where guestcost >= 10;
# 12
 Select facid, sum(slots) as "Total Slots" 
 from cd.bookings 
 where starttime >= '2012-09-01' 
 and starttime < '2012-10-01' 
 group by facid 
 order by sum(slots);
# 13
Select facid, sum(slots) 
as "Total Slots" 
from cd.bookings 
group by facid 
having sum(slots) > 1000 
order by facid;
# 14
Select bks.starttime as start, facs.name as name 
from cd.facilities facs inner 
join cd.bookings bks 
on facs.facid = bks.facid 
where facs.facid in (0,1) 
and bks.starttime >= '2012-09-21' 
and bks.starttime < '2012-09-22' 
order by bks.starttime;
# 15
Select bks.starttime 
from cd.bookings bks inner 
join cd.members mems on mems.memid = bks.memid 
where mems.firstname='David' 
and mems.surname='Farrell';
