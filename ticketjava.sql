-- 시퀀스 조회
select *
from user_sequences;


--회원
select *
from users;

--회원 임시데이터 추가
insert into users VALUES (
seq_user_no.nextval, 'abc', 'abc1', '임시이름1', '임시전화번호1', '임시우편번호1', '임시주소1', '임시상세주소1', '임시이메일1', 1, sysdate, '임시사업자등록번호1', '임시salt'
);

--공연장 
select *
from theater;
--공연장 임시데이터 추가
insert into theater VALUES (
seq_theater_no.nextval, '임시 공연장명1', '임시 우편번호1', '임시 주소1', '임시상세주소1', '임시위도1', '임시경도2', '임시대표번호1', '임시홈페이지주소1', '임시공연장사진1'
);

--시설
select *
from hall;
--시설 임시데이터 추가
insert into hall VALUES (
seq_hall_no.nextval, 1, '임시시설명1'
);

--공연
select *
from product;
--공연 임시데이터 추가
insert into product VALUES (
seq_prod_no.nextval, 1, 2, '임시공연명', 1, sysdate, sysdate, sysdate, sysdate, sysdate, 45, 3, '임시공지사항1', '임시예매취소', 0, '임시포스터이미지경로'
);

--공연 상세정보
select *
from detail;
--공연 상세정보 임시데이터 추가
insert into detail VALUES (
seq_detail_no.nextval, 2, '임시공연정보1', '임시캐스팅정보1', '임시부가정보1'
);



commit;

--티켓자바 모든 시퀀스 만들기

create sequence seq_user_no increment by 1 START WITH 1 nocache;
create sequence seq_theater_no increment by 1 START WITH 1 nocache;
create sequence seq_hall_no increment by 1 START WITH 1 nocache;
create sequence seq_seat_no increment by 1 START WITH 1 nocache;
create sequence seq_prod_no increment by 1 START WITH 1 nocache;
create sequence seq_rez_no increment by 1 START WITH 1 nocache;
create sequence seq_dc_no increment by 1 START WITH 1 nocache;
create sequence seq_review_no increment by 1 START WITH 1 nocache;
create sequence seq_auth_no increment by 1 START WITH 1 nocache;
create sequence seq_noti_no increment by 1 START WITH 1 nocache;
create sequence seq_qna_no increment by 1 START WITH 1 nocache;
create sequence seq_qna_gno increment by 1 START WITH 1 nocache;
create sequence seq_notice_no increment by 1 START WITH 1 nocache;
create sequence seq_req_no increment by 1 START WITH 1 nocache;
create sequence seq_selseat_no increment by 1 START WITH 1 nocache;
create sequence seq_detail_no increment by 1 START WITH 1 nocache;
create sequence seq_seatprice_no increment by 1 START WITH 1 nocache;