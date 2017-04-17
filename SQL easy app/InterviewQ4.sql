# Write a correlated sub-query to list out the employees who earn more than the average salary of their department #

SELECT Ename, deptno, Sal 
FROM EMP AS A
WHERE Sal>(
SELECT AVG(Sal) 
FROM EMP AS B
WHERE A.deptno = B.deptno);
