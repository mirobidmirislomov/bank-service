create table company(
    company_id serial not null primary key,
    company_name text not null
);

create table complex(
    complex_id serial not null primary key,
    complex_name text not null,
    company_id int references company(company_id)
);

create table room(
    room_id serial not null primary key,
    room_count int not null,
    complex_id int references complex(complex_id),
    price bigint not null,
    size bigint not null,
    info varchar(64)
);

create table bank(
    bank_id serial not null primary key,
    bank_name varchar(64) not null,
    bank_sum varchar(64) not null,
    bank_year int not null,
    percent varchar(64) not null
);

insert into company(company_name) values('Tashkent city');
insert into company(company_name) values('Olmazor city');
insert into company(company_name) values('Murad buildings');
insert into company(company_name) values('Golden House');


insert into complex(complex_name, company_id) values('Hilton Tashkent Hotel', 1); 
insert into complex(complex_name, company_id) values('Tashkent City Zone 4 Tower', 1);

insert into complex(complex_name, company_id) values('1-Faza', 2);
insert into complex(complex_name, company_id) values('2-Faza', 2);
insert into complex(complex_name, company_id) values('3-Faza', 2);
insert into complex(complex_name, company_id) values('5-Faza', 2);

insert into complex(complex_name, company_id) values('NRG Oybek', 3);
insert into complex(complex_name, company_id) values('Nest One', 3);

insert into complex(complex_name, company_id) values('Yangi Darxon', 4);
insert into complex(complex_name, company_id) values('Greenwich', 4);



insert into room(room_count, complex_id, price, size, info) values(2, 1, 920, 60, 'Tashkent Hilton');
insert into room(room_count, complex_id, price, size, info) values(3, 1, 920, 80, 'Tashkent Hilton');
insert into room(room_count, complex_id, price, size, info) values(4, 1, 900, 90, 'Tashkent Hilton');
insert into room(room_count, complex_id, price, size, info) values(5, 1, 900, 100, 'Tashkent Hilton');

insert into room(room_count, complex_id, price, size, info) values(2, 2, 900, 60, 'Tashkent 4-Zone');
insert into room(room_count, complex_id, price, size, info) values(3, 2, 900, 80, 'Tashkent 4-Zone');
insert into room(room_count, complex_id, price, size, info) values(4, 2, 880, 90, 'Tashkent 4-Zone');
insert into room(room_count, complex_id, price, size, info) values(5, 2, 880, 100, 'Tashkent 4-Zone');


insert into room(room_count, complex_id, price, size, info) values(2, 3, 830, 50, 'Olmazor city 1-faza');
insert into room(room_count, complex_id, price, size, info) values(3, 3, 830, 70, 'Olmazor city 1-faza');
insert into room(room_count, complex_id, price, size, info) values(4, 3, 800, 80, 'Olmazor city 1-faza');
insert into room(room_count, complex_id, price, size, info) values(5, 3, 800, 100, 'Olmazor city 1-faza');

insert into room(room_count, complex_id, price, size, info) values(2, 4, 830, 50, 'Olmazor city 2-faza');
insert into room(room_count, complex_id, price, size, info) values(3, 4, 830, 70, 'Olmazor city 2-faza');
insert into room(room_count, complex_id, price, size, info) values(4, 4, 800, 80, 'Olmazor city 2-faza');
insert into room(room_count, complex_id, price, size, info) values(5, 4, 800, 100, 'Olmazor city 2-faza');

insert into room(room_count, complex_id, price, size, info) values(2, 5, 830, 50, 'Olmazor city 3-faza');
insert into room(room_count, complex_id, price, size, info) values(3, 5, 830, 70, 'Olmazor city 3-faza');
insert into room(room_count, complex_id, price, size, info) values(4, 5, 800, 80, 'Olmazor city 3-faza');
insert into room(room_count, complex_id, price, size, info) values(5, 5, 800, 100, 'Olmazor city 3-faza');

insert into room(room_count, complex_id, price, size, info) values(2, 6, 830, 50, 'Olmazor city 4-faza');
insert into room(room_count, complex_id, price, size, info) values(3, 6, 830, 70, 'Olmazor city 4-faza');
insert into room(room_count, complex_id, price, size, info) values(4, 6, 800, 80, 'Olmazor city 4-faza');
insert into room(room_count, complex_id, price, size, info) values(5, 6, 800, 100, 'Olmazor city 4-faza');


insert into room(room_count, complex_id, price, size, info) values(2, 7, 750, 70, 'NRG Oybek majmuosi');
insert into room(room_count, complex_id, price, size, info) values(3, 7, 750, 80, 'NRG Oybek majmuosi');
insert into room(room_count, complex_id, price, size, info) values(4, 7, 730, 90, 'NRG Oybek majmuosi');
insert into room(room_count, complex_id, price, size, info) values(5, 7, 730, 100, 'NRG Oybek majmuosi');

insert into room(room_count, complex_id, price, size, info) values(2, 8, 750, 70, 'Nest One majmuosi');
insert into room(room_count, complex_id, price, size, info) values(3, 8, 750, 80, 'Nest One majmuosi');
insert into room(room_count, complex_id, price, size, info) values(4, 8, 730, 90, 'Nest One majmuosi');
insert into room(room_count, complex_id, price, size, info) values(5, 8, 730, 100, 'Nest One majmuosi');

insert into room(room_count, complex_id, price, size, info) values(2, 9, 650, 60, 'Yangi Darxon');
insert into room(room_count, complex_id, price, size, info) values(3, 9, 650, 70, 'Yangi Darxon');
insert into room(room_count, complex_id, price, size, info) values(4, 9, 630, 80, 'Yangi Darxon');
insert into room(room_count, complex_id, price, size, info) values(5, 9, 630, 90, 'Yangi Darxon');

insert into room(room_count, complex_id, price, size, info) values(2, 10, 650, 60, 'Greenwich');
insert into room(room_count, complex_id, price, size, info) values(3, 10, 650, 70, 'Greenwich');
insert into room(room_count, complex_id, price, size, info) values(4, 10, 630, 80, 'Greenwich');
insert into room(room_count, complex_id, price, size, info) values(5, 10, 630, 90, 'Greenwich');

insert into bank(bank_name, bank_sum, bank_year, percent) values('Ipoteka bank', '60000', 10, 17);
insert into bank(bank_name, bank_sum, bank_year, percent) values('Ipoteka bank', '80000', 15, 19);
insert into bank(bank_name, bank_sum, bank_year, percent) values('Ipoteka bank', '100000', 20, 20);

insert into bank(bank_name, bank_sum, bank_year, percent) values('Mikrokredit bank', '70000', 10, 16);
insert into bank(bank_name, bank_sum, bank_year, percent) values('Mikrokredit bank', '80000', 15, 18);
insert into bank(bank_name, bank_sum, bank_year, percent) values('Mikrokredit bank', '90000', 20, 19);

insert into bank(bank_name, bank_sum, bank_year, percent) values('Markaziy bank', '80000', 10, 17);
insert into bank(bank_name, bank_sum, bank_year, percent) values('Markaziy bank', '100000', 15, 18);
insert into bank(bank_name, bank_sum, bank_year, percent) values('Markaziy bank', '110000', 20, 19);