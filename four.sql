CREATE TABLE Customer ( 
  CustID  int not null, 
  FirstName    VARCHAR(10), 
  LastName      VARCHAR(9), 
  DOB      date, 
  SEX    varchar(10), 
  Address      varchar(50), 
  Country    varchar(30), 
  On_Board_Date date,
  primary key(CustID)

)
 PARTITION BY LIST(store_id) (
    partition s VALUES IN (3,5,6,9,17),
    partition l VALUES IN (1,2,10,11,19,20)
    
)

PARTITION BY RANGE (On_Board_Date) (
    PARTITION p0 VALUES LESS THAN ("1995"),
    PARTITION p1 VALUES LESS THAN ("2000"),
    PARTITION p2 VALUES LESS THAN ("2005"),
    PARTITION p3 VALUES LESS THAN ("2010")
)
PARTITION BY LIST(store_id) (
    PARTITION pNorth VALUES IN (3,5,6,9,17),
    PARTITION pEast VALUES IN (1,2,10,11,19,20),
    PARTITION pWest VALUES IN (4,12,13,14,18),
    PARTITION pCentral VALUES IN (7,8,15,16)
);
CREATE unique INDEX  btreetestcustomer  ON customer(CustID);
create index idx_custId using btree on Customer (custId);
create index idx_sex using hash on customer (Sex);
show index  from customer
