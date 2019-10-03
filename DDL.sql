DROP TABLE IF EXISTS `EMPLOYEE`;
DROP TABLE IF EXISTS `DEPARTMENT`;
DROP TABLE IF EXISTS `EMP_DEPARTMENT`;
DROP TABLE IF EXISTS `EMP_ASSET`;

create table IF NOT EXISTS `EMPLOYEE`  ( name varchar(256), salary double,  manager varchar(256), id int, primary key(id) );
/* Adding Partition in the table by hash */
Alter table employee PARTITION BY HASH(id) partitions 2;


/* Range partition for Department
*/
create table IF NOT EXISTS `DEPARTMENT`  ( name varchar(256), id int, organisation varchar(256), primary key(id) ) PARTITION BY RANGE (id) (
PARTITION p11 VALUES LESS THAN (1000), 
PARTITION p12 VALUES LESS THAN (2000), 
PARTITION p13 VALUES LESS THAN (4000)); 


create table IF NOT EXISTS `EMP_DEPARTMENT` ( emp_id int, dept_id int, designation varchar(256), primary key(emp_id) );

/*List Partition on a table
*/
create table IF NOT EXISTS `EMP_ASSET` (emp_id int, asset_id int, name varchar(256), primary key(asset_id)) 
PARTITION  BY LIST(asset_id) (
PARTITION pList1 VALUES IN (10001,10002,10003),  
PARTITION pList2 VALUES IN (10004,10005,10006)); 