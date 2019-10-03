insert into Employee(name, salary, manager, id) values("Akasha", 1000, "Mirana", 1);
insert into Employee(name, salary, manager, id) values("Mirana", 2000, "", 2);
insert into Employee(name, salary, manager, id) values("Lina", 1000, "Mirana", 3);
insert into Employee(name, salary, manager, id) values("Luna", 3000, "Mirana ", 4);



insert into Department(id, name, organisation) values(101, "ESD", "Engineering");
insert into Department(id, name, organisation) values(1001, "DPD", "Database");
insert into Department(id, name, organisation) values(2001, "CPD", "Operation");


insert into EMP_DEPARTMENT(emp_id, dept_id, designation) values(1, 101, "Software Engineer");
insert into EMP_DEPARTMENT(emp_id, dept_id, designation) values(2, 2001, "Database Manager");

insert into EMP_ASSET(emp_id, asset_id, name) values(1, 10001, "PC");
insert into EMP_ASSET(emp_id, asset_id, name) values(1, 10002, "Mouse");
insert into EMP_ASSET(emp_id, asset_id, name) values(1, 10003, "Printer");
insert into EMP_ASSET(emp_id, asset_id, name) values(1, 10004, "Printer");

