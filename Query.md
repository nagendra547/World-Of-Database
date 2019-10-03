### Select from employee and emp_department table;
select * from employee emp inner join emp_department empd where emp.id = empd.emp_id;


### Left outer join
select * from employee emp  left outer join emp_department empd on  emp.id = empd.emp_id;

### check partition of the table
SELECT PARTITION_NAME, TABLE_ROWS FROM  INFORMATION_SCHEMA.PARTITIONS WHERE TABLE_NAME='employee';

### check partition of the table with name
SELECT PARTITION_METHOD, PARTITION_NAME, TABLE_ROWS FROM  INFORMATION_SCHEMA.PARTITIONS WHERE TABLE_NAME='emp_asset';

### Display Data for particular partitions
select * from EMP_ASSET PARTITION (pList2);

### select data from employee where partition is p0 (For Hash Partition)
SELECT * FROM employee PARTITION (p0);

### Show partition data from department where partition is range
SELECT PARTITION_NAME, TABLE_ROWS FROM  INFORMATION_SCHEMA.PARTITIONS WHERE TABLE_NAME='department';
