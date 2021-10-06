CREATE TABLE emp ( 
   empno  int(4) not null, 

  ename    VARCHAR(10), 

  job      VARCHAR(9), 

  mgr      int(4), 

  hiredate DATE, 

  sal      double(7,2), 

  comm     double(7,2), 

  deptno   int(2) ,
  primary key(empno)

); 


INSERT INTO emp VALUES (7369,'SMITH','CLERK',7902,str_to_date('17-12-1980','%e-%m-%Y'),800,NULL,20); 
INSERT INTO emp VALUES (7499,'ALLEN','SALESMAN',7698,str_to_date('20-2-1981','%d-%m-%Y'),1600,300,30); 
INSERT INTO emp VALUES (7521,'WARD','SALESMAN',7698,str_to_date('22-2-1981','%d-%m-%Y'),1250,500,30); 
INSERT INTO emp VALUES (7566,'JONES','MANAGER',7839,str_to_date('2-4-1981','%d-%m-%Y'),2975,NULL,20); 
INSERT INTO emp VALUES (7654,'MARTIN','SALESMAN',7698,str_to_date('28-9-1981','%d-%m-%Y'),1250,1400,30); 
INSERT INTO emp VALUES (7698,'BLAKE','MANAGER',7839,str_to_date('1-5-1981','%d-%m-%Y'),2850,NULL,30); 
INSERT INTO emp VALUES (7782,'CLARK','MANAGER',7839,str_to_date('9-6-1981','%d-%m-%Y'),2450,NULL,10); 
INSERT INTO emp VALUES (7788,'SCOTT','ANALYST',7566,str_to_date('13-07-1987','%d-%m-%Y'),3000,NULL,20); 
INSERT INTO emp VALUES (7839,'KING','PRESIDENT',NULL,str_to_date('17-11-1981','%d-%m-%Y'),5000,NULL,10); 
INSERT INTO emp VALUES (7844,'TURNER','SALESMAN',7698,str_to_date('08-09-1981','%d-%m-%Y'),1500,0,30); 
INSERT INTO emp VALUES (7876,'ADAMS','CLERK',7788,str_to_date('13-07-1987', '%d-%m-%Y'),1100,NULL,20); 
INSERT INTO emp VALUES (7900,'JAMES','CLERK',7698,str_to_date('03-12-1981','%d-%m-%Y'),950,NULL,30); 
INSERT INTO emp VALUES (7902,'FORD','ANALYST',7566,str_to_date('03-12-1981','%d-%m-%Y'),3000,NULL,20); 
INSERT INTO emp VALUES (7934,'MILLER','CLERK',7782,str_to_date('23-1-1982','%d-%m-%Y'),1300,NULL,10); 
 Select avg(sal) from emp;
 SELECT ename,avg((sal) ) ;
-- 3a;
 select *   ,(select avg(sal) from emp ) from emp  ;
-- 3b ;
 select *,avg(sal) from emp group by deptno;
 select *   ,(select avg(sal) from emp where deptno=10 ) from emp where deptno=10;  
  select *   ,(select avg(sal) from emp where deptno=20 ) from emp where deptno=20;  
   select *   ,(select avg(sal) from emp where deptno=30 ) from emp where deptno=30;  
 -- 3c ;
 select * ,sal as "FirstSalary" from emp group by(deptno);
 select * FROM EMP;
