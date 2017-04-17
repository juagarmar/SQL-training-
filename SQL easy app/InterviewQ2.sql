# List the highest salary paid for each job #

SELECT job, MAX(Sal) 
FROM EMP
GROUP BY job;
