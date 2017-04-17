CREATE TABLE EMP (
Empno INT PRIMARY KEY,
Ename varchar(255) NOT NULL,
Job varchar(255),
Mgr INT,
Hiderdate date,
Sal INT,
Comm INT);

#ADD new column#
ALTER TABLE EMP 
ADD deptno INT; 

#CREATE A NEW_TABLE#
CREATE TABLE DEPT(
Deptno INT PRIMARY KEY,
Dname INT NOT NULL,
Location INT);

#ADD FOREIGN_KEY#
ALTER TABLE EMP
ADD FOREIGN KEY (Deptno) REFERENCES DEPT(Deptno);

#INSERT DATA#
#TABLE_MPE#
INSERT INTO EMP VALUES (7499, 'Allen', 'Salesman', 7698, '19810220', 1600, 300, 30)
INSERT INTO EMP VALUES (7521, 'Ward', 'Salesman', 7698, '19810222', 1250,500,30)
INSERT INTO EMP VALUES (7561, 'Jones', 'Manager', 7839, '19810402', 2975, 0, 20)
INSERT INTO EMP VALUES (7654, 'Martin', 'Salesman', 7698, '19811228', 1250, 1400, 30)
INSERT INTO EMP VALUES (7698, 'Blake', 'Manager', 7839, '19810512', 2850, 0, 30)
INSERT INTO EMP VALUES (7782, 'Clark', 'Manager', 7839, '19810109', 2450, 0, 10)
INSERT INTO EMP VALUES (7788, 'Scott', 'Analyst', 7566, '19870419', 3000, 0, 20)
INSERT INTO EMP VALUES (7839, 'King', 'President', 7566, '19870417', 5000, 0, 10)
INSERT INTO EMP VALUES (7844, 'Tunner', 'Salesman', 7698, '19810908', 1500, 0, 30)
INSERT INTO EMP VALUES (7876, 'Adams', 'Clerk', 7780, '19870523', 1100, 0, 20)
INSERT INTO EMP VALUES (7900, 'James', 'Clerk', 7698, '19811103', 950, 0, 30)
INSERT INTO EMP VALUES (7902, 'Ford', 'Analyst', 7566, '19811103', 3000, 0, 20)
INSERT INTO EMP VALUES (7934, 'Miller', 'Clerk', 7782, '19820123', 1300, 0, 10)


