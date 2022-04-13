CREATE TABLE ingredients
(
    id        INTEGER PRIMARY KEY,
    name      VARCHAR(30),
    date      DATE,
    dishes_id Int REFERENCES dishes (id)
);
CREATE TABLE dishes
(
    id             INTEGER PRIMARY KEY,
    name_of_dishes VARCHAR(30),
    type           VARCHAR(30)
);
CREATE TABLE menu(
    id        INTEGER PRIMARY KEY,
    categories      VARCHAR(30),
    dishes_id Int REFERENCES dishes (id)
);
CREATE TABLE orders(
                     id        INTEGER PRIMARY KEY,
                     tables_id Int REFERENCES tables (id),
                     dishes_id Int REFERENCES dishes (id)
);
CREATE TABLE tables(
                       id        INTEGER PRIMARY KEY,
                       type  VARCHAR(30),
                       orders_id Int REFERENCES orders (id)
);
CREATE TABLE staff(
                       id        INTEGER PRIMARY KEY,
                       name  VARCHAR(30),
                       positions  VARCHAR(30)
);
CREATE TABLE cooks(
                      id        INTEGER PRIMARY KEY,
                      name  VARCHAR(30),
                      staff_id Int REFERENCES staff (id)
);
CREATE TABLE clients(
                      id        INTEGER PRIMARY KEY,
                      tables_id Int REFERENCES tables (id)
);
alter table orders add column tables_id int references  tables(id);
insert into  tables(id, type, orders_id) --VALUES ();
select * from tables;
alter table tables rename to table;
update ingredients
set dishes_id = 1
where id=1;

select * from ingredients join dishes d on d.id = ingredients.dishes_id;
-- we join two tables
alter table dishes
drop column name_of_dishes
-- delete the clun from dishes
dishes_id int references dishes(id)