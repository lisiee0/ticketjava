--티켓자바 개발용 쿼리 

select * from users;


--개발용 회원 추가 (개인)
--유저번호 id pw name password zipcode addre1 addre2 email 타입(1개인 2사업자) 가입일 사업자no salt
INSERT INTO users 
VALUES (seq_user_no.nextval, 'guest1234', '1234' , '일반1' , '010-2222-1111', '77712' , '주소1', '주소2', 'com@com.com', 1 , sysdate , null , null)
;

--개발용 회원 추가 (사업자 공연등록용)
INSERT INTO users 
VALUES (seq_user_no.nextval, 'biz1234', '1234' , '사업자1' , '010-2222-1111', '77712' , '주소1', '주소2', 'com@com.com', 2 , sysdate , null , null)
;


--공연장no 이름 우편번호 주소 상세주소 위도 경도 대표번호 홈페이지주소 공연장사진
insert into theater
values (seq_theater_no.nextval, '세종문화회관', '30333', '서울시' , '소공동 11-1' , '123', '123', '02-222-2222', 'sejong.com', 'c:\javastudy\upload\sejong-logo.png');


--홀 시설 추가 (4번 세종문화회관)
insert into hall 
values (seq_hall_no.nextval, 4, 'A홀');

select * from users;
select * from hall;
--유저no 사업자1 일반2
-- 공연no 회원no 시설no 공연명 공연타입(1뮤지컬) 공연기간 공연기간 예매기간 예매기간 공연시작시간 관람시간 등급(3 12세) 공지사항 예매취소 노출(1 on) 포스터
INSERT INTO product 
VALUES (seq_prod_no.nextval, 5, 7 , '라이온킹' , 1, '2021/03/02' , '2021/03/02' , '2021/04/03' , '2021/04/10', TO_DATE('2021-04-10 12:10', 'YYYY-MM-DD HH24:MI'), 120, 3, '공지사항입니다', '예매취소환불없습니다', 1, 'c:\javastudy\upload\lionking-poster.png');

select * from product;
select * from users;
--마이페이지 데이터
--리뷰 후기 데이터
--후기no 공연no 회원no 내용 평점 작성일
insert INTO review
values (seq_review_no.nextval, 22, 6, '재미있었습니다 나름만족', 8 , TO_DATE('2021-04-10 17:10', 'YYYY-MM-DD HH24:MI') );


select * from users;
select * from product;
--티켓자바 성공한 좌석 11개 , 함께한 누적 공연시간 1000분 , 누적 할인액 3000원, 실제 공연을 관람한 분들의 리뷰 30개
--예매내역 입력
--예매no 공연no 회원no 예매일 관람일 전번 이메일 상태(1예매0취소)
insert INTO reserve
values (seq_rez_no.nextval, 9, 22, TO_DATE('2021-04-10 17:10', 'YYYY-MM-DD HH24:MI'), TO_DATE('2021-04-11 15:00', 'YYYY-MM-DD HH24:MI'), '010-3333-2222', 'com@com.com', 1 );


select * from discount;
--할인(좌석)
--할인no 공연no 할인설명 할인시작 할인종료 할인율 할인구분(1원0%)
insert into discount
values (seq_dc_no.nextval, 9, '재관람할인', TO_DATE('2021-04-09 14:10', 'YYYY-MM-DD HH24:MI'), TO_DATE('2021-04-10 14:00', 'YYYY-MM-DD HH24:MI'), 1000, 1 );


select * from selseat;
select * from reserve;
select * from discount;
--좌석선택
--좌석no 예매no 할인no 좌석등급(소문자) 구역(대문자) 열 번호 결제액 상태(1예매0취소)
insert into selseat
values (seq_selseat_no.nextval, 6, 1, 'vip', 'C', 2, 3, 15000, 1);



--예매내역 출력
--예매번호 예매일 상품명 관람일 매수 현재상태
select * from reserve;
select * from product;

select  r.rez_no rezNo
        , to_char(r.rezdate, 'yy-mm-dd hh24:mi') rezDate
        , r.prod_no prodNo
        , p.prodname prodName
        , to_char(r.viewdate, 'yy-mm-dd hh24:mi') viewDate
        , r.status status
from reserve r, product p
;

--예매매수 카운트 (예매번호) 그룹바이 회원번호
select count(r.rez_no) ticketCount
from reserve r , selseat ss
where r.rez_no = ss.selseat_no
group by r.rez_no
;


-- 예매취소내역 리스트 카운터 포함
select
        u.user_no userNo,
        r.rez_no rezNo, 
        to_char(r.rezdate, 'yy-mm-dd hh24:mi') rezDate,
        r.prod_no prodNo,
        p.prodname prodName,
        to_char(r.viewdate, 'yy-mm-dd hh24:mi') viewDate,
        r.ticketCount ticketCount,
        r.status status
        from (select r.rez_no,
                       r.rezdate,
                       r.viewdate,
                       r.status,
                       r.prod_no,
                       count(s.selseat_no) ticketCount
                from reserve r, selseat s
                where r.rez_no = s.rez_no
                group by r.rez_no, r.rezdate, r.viewdate, r.status, r.prod_no) r, product p, users u
where u.user_no = 4 
;

select * from users;
select * from theater;
--예매상세 디테일 
--공연명 관람일 장소 좌석 예매일 예매상태 예매자 / 예매번호 좌석등급 좌석번호 가격 상태
select  DISTINCT

        u.user_no userNo,
        p.prod_no prodNo,
        u.name name,
        p.prodname prodName, 
        th.theatername theaterName,
        h.hallname hallname,
        to_char(r.viewdate, 'yy-mm-dd hh24:mi') viewDate,
        r.rez_no rezNo,
        to_char(r.rezdate, 'yy-mm-dd hh24:mi') rezDate,
        s.selseat_no selseatNo,
        s.grade grade, 
        s.section section, 
        s.col col,
        s.num num,
        s.payment payment,
        s.status status
        
from	reserve r, selseat s, users u, product p, theater th, hall h
where	r.rez_no = s.rez_no 
and		u.user_no = 4 
and		p.prod_no = 22
;




--예매상세 디테일 좌석리스트


select s.selseat_no
from selseat s
group by s.selseat_no

;

-- u.user_no = p.user_no and
-- where u.user_no = p.user_no  and r.rez_no = s.rez_no and p.prod_no = r.prod_no
-- and p.hall_no = h.hall_no and th.theater_no = h.theater_no and r.rez_no = s.rez_no 
-- group by s.selseat_no

select * from hall;
select rez_no
from reserve;


--커밋
commit;

--롤백
rollback;

--원준 삭제 안하고 바꾸려면 두줄 실행
alter table selseat drop CONSTRAINT FK_reserve_TO_selseat;
alter table selseat add CONSTRAINT FK_reserve_TO_selseat foreign key (rez_no) REFERENCES reserve (rez_no) on delete cascade;


