# List all the employees who have at least one person reporting to them #
SELECT * FROM EMP
WHERE Empno IN (SELECT Mgr FROM EMP);
