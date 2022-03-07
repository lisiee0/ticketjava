insert into product (prod_no, prodname)
values(seq_prod_no.nextval, '라이온킹');

insert into discount (dc_no, prod_no, dctype, dcrate, dcname)
values(seq_dc_no.nextval, 1, 0, 30, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname)
values(seq_dc_no.nextval, 1, 1, 3000, '재관람 할인');

insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc)
values(seq_dc_no.nextval, 1, 0, 50, '타임 세일', '22/03/07','22/03/20');

insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc)
values(seq_dc_no.nextval, 1, 0, 60, '문화의날', '22/03/07','22/03/20');


insert into seatprice values (seq_seatprice_no.nextval, 1, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 1, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 1, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 1, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 1, 'b', 60000);