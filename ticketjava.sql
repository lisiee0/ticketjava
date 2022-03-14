insert into theater
values (seq_theater_no.nextval, '세종문화회관', '30333', '서울시' , '소공동 11-1' , '123', '123', '02-222-2222', 'sejong.com', 'c:\javastudy\upload\sejong-logo.png');




insert into hall 
values (seq_hall_no.nextval, 7, 'A홀');

INSERT INTO users 
VALUES (seq_user_no.nextval, 'biz1234', '1234' , '사업자1' , '010-2222-1111', '77712' , '주소1', '주소2', 'com@com.com', 2 , sysdate , null , null)
;

INSERT INTO product 
VALUES (seq_prod_no.nextval, 7, 13, '라이온킹4' , 1, '2021/03/02' , '2021/03/02' , '2021/04/03' , '2021/04/10', TO_DATE('2021-04-10 12:10', 'YYYY-MM-DD HH24:MI'), 120, 3, '공지사항입니다', '예매취소환불없습니다', 1, 'c:\javastudy\upload\lionking-poster.png');

SELECT *
from theater;

select *
from hall;

select *
from users;

select *
from product;

delete from 	product
where 			prod_no = 219;

rollback;

drop user ticketjava cascade;

commit;