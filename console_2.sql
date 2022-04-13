create table workers(
    id INT PRIMARY KEY ,
    name VARCHAR(30),
    age INTEGER,
    salary INTEGER
);
insert into workers (id, name, age, salary) values (1, 'Rafaellle', 23, 5757);
insert into workers (id, name, age, salary) values (2, 'Editha', 59, 6263);
insert into workers (id, name, age, salary) values (3, 'Zonda', 6, 3763);
insert into workers (id, name, age, salary) values (4, 'Brittney', 34, 7987);
insert into workers (id, name, age, salary) values (5, 'Genevieve', 14, 6868);
insert into workers (id, name, age, salary) values (6, 'Paulita', 37, 3047);
insert into workers (id, name, age, salary) values (7, 'Welch', 21, 1243);
insert into workers (id, name, age, salary) values (8, 'Mylo', 44, 8663);
insert into workers (id, name, age, salary) values (9, 'Kristian', 59, 9160);
insert into workers (id, name, age, salary) values (10, 'Sheffield', 3, 2672);
select * from workers where id>3;