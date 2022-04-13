
CREATE TABLE ingredients
(
    id        INTEGER PRIMARY KEY,
    name      VARCHAR(30),
    date      VARCHAR(30),
    inn       VARCHAR(50) UNIQUE,
    dishes_id Int REFERENCES dishes (id)
);
CREATE TABLE dishes
(
    id             INTEGER PRIMARY KEY,
    name_of_dishes VARCHAR(30),
    type           VARCHAR(30)
);

ALTER TABLE coffee
    add column drinks_id INT REFERENCES drinks (id);
ALTER TABLE ingredients DROP inn;

create table cabins
(
    id        INTEGER PRIMARY KEY,
    type     VARCHAR(30),
    capacity      INT,
    clients_id Int REFERENCES clients (id)
);

create table pilaf(
    id        INTEGER PRIMARY KEY,
    name     VARCHAR(30),
    menu_id Int REFERENCES menu (id)
);
insert into dishes(id, name_of_dishes, type)
VALUES(2,'Оливье','Салат') ;
insert into ingredients(id, name, date, dishes_id) VALUES (2,'Картошка','2011-04-15 00:03:20',2);

insert into staff(id, name, positions) VALUES (1,'Miley Cyrus','cooker'),
                                              (2,'Jake Lee','administrator'),
                                              (3,'Ashley Morgan','waiter');

insert into cooks(id, name, staff_id) VALUES (1,'Кондитер',1);

insert into orders(id) values (1);
insert into tables(id, type, orders_id) VALUES (1,'VIP',1);
insert into clients(id, tables_id) VALUES (1,1);
insert into cabins(id, type, capacity, clients_id) VALUES (1,1,50,1);

TRUNCATE TABLE cabins;--clear tables

insert into menu(id, categories) VALUES (1,'Food'),
                                        (2,'Dessert'),
                                        (3,'Drinks');

insert into burgers(id, name, menu_id) VALUES (1,'Бургер с сыром',1),
                                              (2,'Бургер с курицей',1),
                                              (3,'Бургер с мясом',1);
insert into sweets(id, name, menu_id) VALUES (1,'Брауни',2),
                                             (2,'Чизкейк',2),
                                             (2,'Медовик',2);
insert into fishes(id, name, menu_id) VALUES (1,'Сайра',1),
                                             (2,'Форель',1),
                                             (3,'Сазан',1);
insert into drinks(id, name, menu_id) VALUES (1,'Hot',3),
                                             (2,'Gold',3);
insert into meals(id, name, menu_id) VALUES (1,'meal',1),
                                            (2,'fish',1),
                                            (3,'chicken',1);
insert into sauces(id, name, menu_id) VALUES (1,'cheese',1),
                                             (2,'tomato',1),
                                             (3,'garlic',1);
insert into pizza(id, name, menu_id) VALUES (1,'Peperoni',1),
                                            (2,'Margaritta',1),
                                            (3,'4-Cheese',1);
insert into coffee(id, name, drinks_id) VALUES (1,'Капучино',3),--не раб
                                               (2,'Экспрессо',3),
                                               (3,'Американо',3);
insert into lemonades(id, name, drinks_id) VALUES (1,'Классический',2),
                                               (2,'Ягодный',2),
                                               (3,'Фруктовый',2);
insert into shashlik(id, name, meals_id) VALUES (1,'Кусковой',1),
                                                (1,'С курицой',3);
insert into pilaf(id, name, menu_id) VALUES (1,'Узгенский',1),
                                            (2,'Ташкенский',1)




