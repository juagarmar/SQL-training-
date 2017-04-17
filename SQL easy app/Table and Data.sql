CREATE TABLE EMP (
Empno INT PRIMARY KEY,
Ename varchar(255) NOT NULL,
Job varchar(255),
Mgr INT,
Hiderdate date,
Sal INT,
Comm INT,
deptno INT 
FOREIGN KEY (deptno) REFERENCES EMP (deptno));

#ADD new column 

ALTER TABLE EMP 
ADD deptno INT; 

