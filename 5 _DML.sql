insert into shop values (
    1, 'Dhaka', 01786539282, 'Moumita'
);

insert into shop values (
    2, 'Khulna', 01786539272, 'Fahim'
);

insert into shop values (
    3, 'Chittagong', 01786531282, 'Nowrin'
);

insert into electronics(d_id, typee, modell , colour, price) values (
    1,
    'Computer',
    'Dell Inspiron',
    'red',
    60000  
);

insert into electronics(d_id, typee, modell , colour, price) values (
    2,
    'Computer',
    'Acer Du',
    'blue',
    55000
);
insert into electronics(d_id, typee, modell , colour, price) values (
    3,
    'laptop',
    'Pavilion',
    'black',
    50000
);

insert into electronics (d_id, typee, modell , colour, price) values (
    4,
    'mobile',
    'xiaomi',
    'gold',
    18000
);

insert into electronics(d_id, typee, modell , colour, price) values (
    5,
    'earphone',
    'skull candy',
    'red',
    4000
);

insert into electronics(d_id, typee, modell , colour, price) values (
    6,
    'earphone',
    'remax',
    'red',
    2000
);

insert into electronics(d_id, typee, modell , colour, price) values (
    7,
    'mobile',
    'Samsumg S5',
    'red',
    40000
);

insert into customers(c_id, c_name, c_contact, c_address) values (
    1,
    'prapti',
    0178562801,
    'dhaka'
);
insert into customers(c_id, c_name, c_contact, c_address) values (
    2,
    'moni',
    01892546261,
    'sylhet'
);
insert into customers(c_id, c_name, c_contact, c_address) values (
    3,
    'mouna',
    01892546265,
    'dhaka'
);
insert into customers(c_id, c_name, c_contact, c_address) values (
    6,
    'umama',
    0156342187,
    'cumilla'
);
insert into customers(c_id, c_name, c_contact, c_address) values (
    4,
    'labiba',
    015837896,
    'dhaka'
);
insert into customers(c_id, c_name, c_contact, c_address) values (
    5,
    'sohana',
    015340278,
    'nilfamari'
);

insert into shop_inventory(s_id, d_id, available) values (
    1, 1, 5
);
insert into shop_inventory(s_id, d_id, available) values (
    1, 2, 6
);
insert into shop_inventory(s_id, d_id, available) values (
    1, 3, 3
);
insert into shop_inventory(s_id, d_id, available) values (
    2, 6, 10
);
insert into shop_inventory(s_id, d_id, available) values (
    2, 5, 5
);
insert into shop_inventory(s_id, d_id, available) values (
    2, 4, 5
);
insert into shop_inventory(s_id, d_id, available) values (
    3, 6, 5
);
insert into shop_inventory(s_id, d_id, available) values (
    3, 3, 5
);
insert into shop_inventory(s_id, d_id, available) values (
    3, 1, 5
);


insert into transactions(c_id, d_id, s_id, quantity) values (
    1, 2, 3, 2
);

insert into transactions(c_id, d_id, s_id, quantity) values (
    2, 3, 1, 5
);

insert into transactions(c_id, d_id, s_id, quantity) values (
    3, 4, 2, 1
);
insert into transactions(c_id, d_id, s_id, quantity) values (
    4, 5, 1, 2
);

insert into transactions(c_id, d_id, s_id, quantity) values (
    5, 7, 2, 2
);
insert into transactions(c_id, d_id, s_id, quantity) values (
    6, 3, 3, 3
);
insert into transactions(c_id, d_id, s_id, quantity) values (
    1, 3, 3, 3
);