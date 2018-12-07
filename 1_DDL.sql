drop table transactions;
drop table shop_inventory;
drop table customers;
drop table electronics;
drop table shop;

create table shop(
    s_id number,
    s_branch varchar(50),
    s_contact number,
    s_manager varchar(20),
    primary key(s_id)
);

create table electronics(
    d_id number,
    typee varchar(20),
    modell varchar(20),
    colour varchar(20),
    available number default 0 check (available >= 0),
    price number,
    primary key(d_id)
);

create table customers(
    c_id number,
    c_name varchar(20),
    c_contact number,
    c_address varchar(20),
    primary key(c_id)
);

create table shop_inventory(
    s_id number,
    d_id number,
    available number check(available > 0),
    foreign key (s_id) references shop(s_id) on delete cascade,
    foreign key (d_id) references electronics(d_id) on delete cascade
);

create table transactions(
    c_id number,
    d_id number,
    s_id number,
    quantity number default 1 check(quantity >= 1),
    tprice number check (tprice >= 0),
    foreign key (c_id) references customers(c_id) on delete cascade,
    foreign key (d_id) references electronics(d_id) on delete cascade,
    foreign key (s_id) references shop(s_id) on delete cascade
);
