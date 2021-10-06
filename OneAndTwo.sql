
CREATE TABLE `input` (
  `resource` int unsigned  AUTO_INCREMENT,
  `name` varchar(30) NOT NULL ,
`profession`varchar(30) NOT NULL,
  primary key(`resource`));
  
  insert into input values(1,"Anand","Doctor"),
  (2,"Abirami","Teacher"),
  (3,"Sukanya", "Engineer"),
  (4,"Sukumar","Lawyer");
  
  select resource, concat(name,"(",substring(profession,1,1),")")as Target  from input;
  
  
  
  
  CREATE TABLE `Employee` (
  `EmpID` int unsigned  AUTO_INCREMENT,
  `Fname` varchar(30) NOT NULL ,
  `Lname` varchar(30) NOT NULL ,
  `DOB`  varchar(30),
  `Sex` varchar(30) NOT NULL ,
  `Email` varchar(30) NOT NULL ,
  `Salary` double  ,
  `Mgrld` int  ,
  `DeptID` int NOT NULL ,
  primary key(`EmpID`));
  
select * from employee;
select * ,concat(Mgrld,"Manager",empID)from employee;
select * from employee where Salary >500;
select * from employee where Salary >500 && DeptID=10;
select * from employee where Salary >500 && DeptID=20;
select * from employee where Salary >500 && DeptID=30;
select * from employee where Salary >500 && DeptID=40;

select * from employee ;

SELECT *  FROM employee ;
SELECT * FROM employee WHERE str_to_date(DOB,'%e-%b-%Y')>= str_to_date('01-Jan-1990','%e-%b-%Y') 
and str_to_date(DOB,'%e-%b-%Y')<= str_to_date('31-DEC-1995','%e-%b-%Y') ;
SELECT e1.* FROM employee e1, employee e2 
WHERE e1.Salary = e2.Salary 
AND e1.EmpID != e2.EmpID;  
SELECT * FROM employee WHERE Email LIKE '%_@__%.__%';
SELECT * FROM employee WHERE Email LIKE '%_@hcl%.__%';
SELECT * FROM employee WHERE SEX="Female";
SELECT * FROM employee WHERE Lname=reverse(Lname);
Select Avg(salary) from Employee;
SELECT * FROM employee WHERE Salary>(Select avg(Salary) from employee );
Select *FROM employee where Salary=(Select max(salary) from employee where DeptID='20')  ;

  Select *,avg(Salary) ,concat(Avg(Salary))as "differnce"FROM employee where Salary=(Select max(salary) from employee )  ;



  
  INSERT INTO `interns`.`employee` (`EmpID`, `Fname`, `Lname`, `DOB`, `Sex`, `Email`, `Salary`, `Mgrld`, `DeptID`) VALUES ('1', 'Abirami', 'Bob', '10-Jan-90', 'Female', 'abirami@hcl.com', '1000', '2', '10');
INSERT INTO `interns`.`employee` (`EmpID`, `Fname`, `Lname`, `DOB`, `Sex`, `Email`, `Salary`, `Mgrld`, `DeptID`) VALUES ('2', 'Bhuvi', 'Rob', '10-Feb-91', 'Female', 'Bhuvi@cyz', '500', '3', '20');
INSERT INTO `interns`.`employee` (`EmpID`, `Fname`, `Lname`, `DOB`, `Sex`, `Email`, `Salary`, `Mgrld`, `DeptID`) VALUES ('3', 'Chandrima', 'Derek', '10-Mar-92', 'Female', '@abc.com', '2000', '4', '30');
INSERT INTO `interns`.`employee` (`EmpID`, `Fname`, `Lname`, `DOB`, `Sex`, `Email`, `Salary`, `Mgrld`, `DeptID`) VALUES ('4', 'Debasis', 'Pringle', '10-Apr-93', 'Male', 'Debasis@hcl.com', '3000', '5', '40');
INSERT INTO `interns`.`employee` (`EmpID`, `Fname`, `Lname`, `DOB`, `Sex`, `Email`, `Salary`, `Mgrld`, `DeptID`) VALUES ('5', 'Enigma', 'Gefree', '10-May-95', 'Female', 'enigma@gmail.com', '4500', '6', '10');
INSERT INTO `interns`.`employee` (`EmpID`, `Fname`, `Lname`, `DOB`, `Sex`, `Email`, `Salary`, `Mgrld`, `DeptID`) VALUES ('6', 'Funnel', 'Samas', '10-Jun-99', 'Male', 'funnel@hcl.com', '5500', '7', '20');
INSERT INTO `interns`.`employee` (`EmpID`, `Fname`, `Lname`, `DOB`, `Sex`, `Email`, `Salary`, `Mgrld`, `DeptID`) VALUES ('7', 'Gabriel', 'Lal', '10-Jul-97', 'Male', 'gabriel@xyz.com', '6500', '8', '30');
INSERT INTO `interns`.`employee` (`EmpID`, `Fname`, `Lname`, `DOB`, `Sex`, `Email`, `Salary`, `Mgrld`, `DeptID`) VALUES ('8', 'Hari', 'Fedrik', '10-Aug-98', 'Male', 'hari@hcl.com', '7900', '9', '40');
INSERT INTO `interns`.`employee` (`EmpID`, `Fname`, `Lname`, `DOB`, `Sex`, `Email`, `Salary`, `Mgrld`, `DeptID`) VALUES ('9', 'Inis', 'Gunjan', '10-Sep-99', 'Female', 'inia@hcl.com', '8900', '10', '10');
INSERT INTO `interns`.`employee` (`EmpID`, `Fname`, `Lname`, `DOB`, `Sex`, `Email`, `Salary`, `DeptID`) VALUES ('10', 'Jaisna', 'Singh', '10-Oct-00', 'Female', 'jasina@hcl.com', '1000', '20');

  
  
  
  INSERT INTO `interns`.`employee` (`EmpID`, `Fname`, `Lname`, `DOB`, `Sex`, `Email`, `Salary`, `Mgrld`, `DeptID`) VALUES ('11', 'Yash', 'Bob', '10-Jan-90', 'Female', 'abirami@hcl.com', '1000', '2', '10');
INSERT INTO `interns`.`employee` (`EmpID`, `Fname`, `Lname`, `DOB`, `Sex`, `Email`, `Salary`, `Mgrld`, `DeptID`) VALUES ('12', 'Bharat', 'Rob', '10-Feb-91', 'Female', 'bhuvi@hcl.com', '500', '2', '20');
INSERT INTO `interns`.`employee` (`EmpID`, `Fname`, `Lname`, `DOB`, `Sex`, `Email`, `Salary`, `Mgrld`, `DeptID`) VALUES ('13', 'Krish', 'Derek', '10-Mar-92', 'female', '@abc.com', '2000', '3', '30');
INSERT INTO `interns`.`employee` (`EmpID`, `Fname`, `Lname`, `DOB`, `Sex`, `Email`, `Salary`, `Mgrld`, `DeptID`) VALUES ('14', 'karina', 'Pringle ', '10-Apr-93', 'Male', 'Debasis@hcl.com', '3000', '3', '40');
INSERT INTO `interns`.`employee` (`EmpID`, `Fname`, `Lname`, `DOB`, `Sex`, `Email`, `Salary`, `Mgrld`, `DeptID`) VALUES ('15', 'King', 'Gefree', '10-May-95', 'Female', 'Enigma@gmail.com', '4500', '8', '10');
INSERT INTO `interns`.`employee` (`EmpID`, `Fname`, `Lname`, `DOB`, `Sex`, `Email`, `Salary`, `Mgrld`, `DeptID`) VALUES ('16', 'George', 'Samas', '10-Jun-99', 'Male', 'funnel@hcl.com', '5500', '8', '20');
INSERT INTO `interns`.`employee` (`EmpID`, `Fname`, `Lname`, `DOB`, `Sex`, `Email`, `Salary`, `Mgrld`, `DeptID`) VALUES ('17', 'Patric', 'Lal', '10-Jul-97', 'Male', 'gabriel@xyz.com', '6500', '9', '40');
INSERT INTO `interns`.`employee` (`EmpID`, `Fname`, `Lname`, `DOB`, `Sex`, `Email`, `Salary`, `Mgrld`, `DeptID`) VALUES ('18', 'Peter', 'Fedrik', '10-Aug-98', 'Male', 'Hari@hcl.com', '7900', '9', '40');
INSERT INTO `interns`.`employee` (`EmpID`, `Fname`, `Lname`, `DOB`, `Sex`, `Email`, `Salary`, `Mgrld`, `DeptID`) VALUES ('19', 'Mirande', 'Gunjan', '10-Sep-99', 'female', 'inia@hcl.com', '8900', '10', '10');
  
  
  
