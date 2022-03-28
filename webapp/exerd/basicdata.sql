/*******************************************************************************
    회원(users) 등록
********************************************************************************/
insert into users values (SEQ_USER_NO.nextval, 'test', '082c37fc044a2a40e6e191788e7d0a5b09db37a5135f75d8e02b1d3100fd5ef6', '테스터', '010-9999-9999', '99999', '서울 강서구 우현로 99', '공원', 'test@naver.com', 1, sysdate, null, 'TZ7ycgRKAEjh0OQZ');
insert into users values (SEQ_USER_NO.nextval, 'biz', 'c34e61af45341f2634151409e3e031fe6161b758d00c0bdb271d4b9c9b2a1a43', '사업자', '010-1234-5678', '01234', '서울 강서구 우현로 12', 'EMK뮤지컬컴퍼니', 'emk@musical.com', 2, sysdate, 'a1b2c3d4', 'WOwFkL1cxb4zW6UV');
insert into users values (SEQ_USER_NO.nextval, 'aaa', '12454a5a10f26cb4a25741bf99cd2f1c91e5bcbd383c58cab449cccdcaaca1bc', '유재석', '010-1111-1111', '02234', '서울 강서구 우현로 13', '오두막집', 'yoo@naver.com', 1, sysdate, null, '40ukNcey4D3Dkz1V');
insert into users values (SEQ_USER_NO.nextval, 'bbb', '09026347f0a9d14da85fd6472ae8c248672b561f537b32a1f90ecc19d9cb7a15', '정우성', '010-2222-2222', '03234', '서울 강서구 우현로 14', '기와집', 'jung@naver.com', 1, sysdate, null, '8GAniBWf5R1PiZmH');
insert into users values (SEQ_USER_NO.nextval, 'ccc', '67b02c7418e5e82528fcfbc8338d6a1f0712b5367741450d81ee344d62074a3b', '이효리', '010-3333-3333', '04234', '서울 강서구 우현로 15', '초가집', 'lee@naver.com', 1, sysdate, null, 'G8KOpNVwVdxIatHb');
insert into users values (SEQ_USER_NO.nextval, 'ddd', '9724be48956cbdd6b152c1fb2898f8674eb43cc982c1b583f95e0acd571cfb70', '강호동', '010-4444-4444', '05234', '서울 강서구 우현로 16', '힐스테이트', 'kang@naver.com', 1, sysdate, null, 'd4ovosyZgdN3qln5');
insert into users values (SEQ_USER_NO.nextval, 'eee', '026dbcecdc6347c3f55aa2539548a3f2046533e28d860174090b3404a866c20d', '이정재', '010-5555-5555', '06234', '서울 강서구 우현로 17', '아이파크', 'ljj@naver.com', 1, sysdate, null, 'r67aTGZLqWMze0sg');
insert into users values (SEQ_USER_NO.nextval, 'admin', 'b1be4dd8015e8d2402f3d002549970eb740d1d03432870cd8bde4e73c7eb51a6', '관리자', null, null, null, null, null, 0, sysdate, null, 'eyCIr8myhI93Z96i');
insert into users values (SEQ_USER_NO.nextval, 'hwang', '4a39efd3eac0f9631a77577da4d72b53df1a9390fa2220c70b05275bea5f4527', '황일영', '010-1234-5678', '10370', '서울 도봉구 노해로 133', '100', 'test@test.com', 2, sysdate, '6789246218786', 'fdfBuYwHtgza52Vf');
insert into users values (SEQ_USER_NO.nextval, 'hankyu', '9dfbfbb14113a8c3e6577980484fded3f245bb71411ee4f0785eca0bf203bb3a','서한규','010-1234-1234','13494','경기 성남시 분당구 판교역로 235','1155','2ser0m2@naver.com',1, sysdate ,null,'jZv2fUFOw8JlvUgf');

/*******************************************************************************
    공연장(theater) & 시설(hall) & 공지사항(notice) 등록
********************************************************************************/

/*          공연장           */
insert into theater values (0, '-', null, null, null, '0', '0', '-', '-', null);
insert into theater values (seq_theater_no.nextval, '예술의전당', '06757', '서울 서초구 남부순환로 2406', '예술의전당', '0', '0', '02-580-1300', 'http://www.sac.or.kr', 'sac.png');
insert into theater values (seq_theater_no.nextval, '블루스퀘어', '04399', '서울 용산구 이태원로 294', '블루스퀘어', '0', '0', '1544-1591', 'http://www.bluesquare.kr/index.asp', 'blue.png');
insert into theater values (seq_theater_no.nextval, '디큐브아트센터', '08209', '서울 구로구 경인로 662', '7층 디큐브아트센터', '0', '0', '02-2211-3000', 'http://www.d3art.co.kr', 'dcube.png');
insert into theater values (seq_theater_no.nextval, '세종문화회관', '03172', '서울 종로구 세종대로 175', '세종문화회관', '0', '0', '02-399-1000', 'http://www.sejongpac.or.kr/', 'sejong.png');
insert into theater values (seq_theater_no.nextval, '의정부예술의전당', '11622', '경기 의정부시 의정로 1', '의정부예술의전당', '0', '0', '031-828-5841', 'http://www.uac.or.kr/', 'uac.png');
insert into theater values (seq_theater_no.nextval, '대구오페라하우스', '41585', '대구 북구 호암로 15', '대구오페라하우스', '0', '0', '053-666-6000', 'http://www.daeguoperahouse.org/', 'daeguopera.png');
insert into theater values (seq_theater_no.nextval, '성남아트센터', '13514', '경기 성남시 분당구 성남대로 808', '성남아트센터', '0', '0', '031-783-8000', 'http://www.snart.or.kr/', 'snart.png');
insert into theater values (seq_theater_no.nextval, '한국소리문화의전당', '54901', '전북 전주시 덕진구 소리로 31', '한국소리문화의전당', '0', '0', '063-270-8000', 'http://www.sori21.co.kr/', 'sori.png');
insert into theater values (seq_theater_no.nextval, '군포문화예술회관', '15820', '경기 군포시 고산로 599', '군포문화예술회관', '0', '0', '031-390-3500', 'http://www.gunpoart.net', 'gpart.png');
insert into theater values (seq_theater_no.nextval, '안성맞춤아트홀', '17596', '경기 안성시 발화대길 21', '안성맞춤아트홀', '0', '0', '031-660-0666', 'https://www.anseong.go.kr/arthall/main.do', 'asart.png');
insert into theater values (seq_theater_no.nextval, '충무아트센터', '04569', '서울 중구 퇴계로 387', '충무아트센터', '0', '0', '02-2230-6600', 'http://www.caci.or.kr', 'caci.png');
insert into theater values (seq_theater_no.nextval, '천안예술의전당', '31246', '충남 천안시 동남구 성남면 종합휴양지로 185', '천안예술의전당', '0', '0', '1566-0155', 'http://www.cnac.or.kr', 'cnac.png');
insert into theater values (seq_theater_no.nextval, '국립정동극장', '04518', '서울 중구 정동길 43', '국립정동극장', '0', '0', '02-751-1500', 'http://www.jeongdong.or.kr', 'jdart.png');
insert into theater values (seq_theater_no.nextval, '구로아트밸리', '08301', '서울 구로구 구로동 101', '구로아트밸리', '0', '0', '02-2029-1700', 'http://www.guroartsvalley.or.kr', 'guro.png');
insert into theater values (seq_theater_no.nextval, '통영국제음악당', '53079', '경남 통영시 큰발개1길 38', '통영국제음악당', '0', '0', '055-650-0400', 'http://www.timf.org/kr/', 'timf.png');
insert into theater values (seq_theater_no.nextval, '목동종합운동장', '07990', '서울 양천구 안양천로 939', '목동종합운동장', '0', '0', '02-2640-3848', 'https://stadium.seoul.go.kr/', null);
insert into theater values (seq_theater_no.nextval, '수원월드컵경기장', '16230', '경기 수원시 팔달구 월드컵로 310', '수원월드컵경기장', '0', '0', '031-202-2002', 'http://www.suwonworldcup.or.kr/', null);
insert into theater values (seq_theater_no.nextval, '제주월드컵경기장', '63572', '제주특별자치도 서귀포시 월드컵로 33', '제주월드컵경기장', '0', '0', '064-760-3601', 'http://www.visitjeju.net', null);
insert into theater values (seq_theater_no.nextval, '부천종합운동장', '14655', '경기 부천시 길주로 지하 502', '부천종합운동장', '0', '0', '032-340-0890', 'https://www.best.or.kr', null);
insert into theater values (seq_theater_no.nextval, '김포솔터축구장', '10068', '경기 김포시 김포한강3로 385', '김포솔터축구장', '0', '0', '02-2640-3848', 'https://stadium.seoul.go.kr/', null);
insert into theater values (seq_theater_no.nextval, '천안축구센터', '31136', '충남 천안시 서북구 축구센터로 150', '천안축구센터', '0', '0', '041-529-5170', 'https://cfmc.or.kr/_football/index.asp', null);
insert into theater values (seq_theater_no.nextval, '강릉종합운동장', '25474', '강원 강릉시 종합운동장길 69', '강릉종합운동장', '0', '0', '033-647-2004', 'https://www.gn.go.kr/gaf/index.do', null);
insert into theater values (seq_theater_no.nextval, '탄천종합운동장', '13495', '경기 성남시 분당구 탄천로 215', '탄천종합운동장', '0', '0', '031-725-7100', 'https://www.2ssc.or.kr:4431/', null);
insert into theater values (seq_theater_no.nextval, '에그옐로우', '08787', '서울 관악구 남부순환로 1820', '에그옐로우 14층', '0', '0', '02-3285-0012', 'http://www.gith.co.kr/', 'egglogo.jpg');

/*         시설명           */
insert into hall values (0, 0, null);
insert into hall values (seq_hall_no.nextval, 1, '오페라극장');
insert into hall values (seq_hall_no.nextval, 1, 'CJ 토월극장');
insert into hall values (seq_hall_no.nextval, 1, '콘서트홀');
insert into hall values (seq_hall_no.nextval, 2, '신한카드홀');
insert into hall values (seq_hall_no.nextval, 2, '마스터카드홀');
insert into hall values (seq_hall_no.nextval, 3, '대성홀');
insert into hall values (seq_hall_no.nextval, 4, '대극장');
insert into hall values (seq_hall_no.nextval, 4, 'M씨어터');
insert into hall values (seq_hall_no.nextval, 5, '대극장');
insert into hall values (seq_hall_no.nextval, 6, '대극장');
insert into hall values (seq_hall_no.nextval, 7, '콘서트홀');
insert into hall values (seq_hall_no.nextval, 7, '오페라하우스');
insert into hall values (seq_hall_no.nextval, 8, '모악당');
insert into hall values (seq_hall_no.nextval, 9, '수리홀');
insert into hall values (seq_hall_no.nextval, 10, '대공연장');
insert into hall values (seq_hall_no.nextval, 11, '대극장');
insert into hall values (seq_hall_no.nextval, 12, '대공연장');
insert into hall values (seq_hall_no.nextval, 13, '메인홀');
insert into hall values (seq_hall_no.nextval, 14, '예술극장');
insert into hall values (seq_hall_no.nextval, 15, '오페라홀');
insert into hall values (seq_hall_no.nextval, 16, null);
insert into hall values (seq_hall_no.nextval, 17, null);
insert into hall values (seq_hall_no.nextval, 18, null);
insert into hall values (seq_hall_no.nextval, 19, null);
insert into hall values (seq_hall_no.nextval, 20, null);
insert into hall values (seq_hall_no.nextval, 21, null);
insert into hall values (seq_hall_no.nextval, 22, null);
insert into hall values (seq_hall_no.nextval, 23, null);
insert into hall values (seq_hall_no.nextval, 24, '공연장 A');


/*               공지사항                */
insert into notice values (SEQ_NOTICE_NO.nextval, 1, '2022년 전반기 코로나 관련 방역수칙', sysdate);
insert into notice values (SEQ_NOTICE_NO.nextval, 1, '2022년 예술의전당 오케스트라 공개채용', sysdate);
insert into notice values (SEQ_NOTICE_NO.nextval, 2, '2022년 예산사용내역 공지', sysdate);
insert into notice values (SEQ_NOTICE_NO.nextval, 3, '2022년 전반기 아티스트 모집', sysdate);
insert into notice values (SEQ_NOTICE_NO.nextval, 4, '세종문화회관 개관 20주년 결산', sysdate);
insert into notice values (SEQ_NOTICE_NO.nextval, 4, '지하철 5호선 8번출구 유지보수공사 안내', sysdate);
insert into notice values (SEQ_NOTICE_NO.nextval, 5, '2022년 라인업 발표', sysdate);
insert into notice values (SEQ_NOTICE_NO.nextval, 6, '전산시스템 오류 관련 안내', sysdate);
insert into notice values (SEQ_NOTICE_NO.nextval, 7, '2022년 새해 복 많이 받으세요', sysdate);
insert into notice values (SEQ_NOTICE_NO.nextval, 8, '2022년 모악당 유지보수 계획', sysdate);
insert into notice values (SEQ_NOTICE_NO.nextval, 9, '2022년 전반기 방역수칙을 생활화합시다', sysdate);
insert into notice values (SEQ_NOTICE_NO.nextval, 10, '좋은 하루 되세요', sysdate);
insert into notice values (SEQ_NOTICE_NO.nextval, 11, '2022년 전반기 관현악단 단원 공개모집', sysdate);
insert into notice values (SEQ_NOTICE_NO.nextval, 12, '2022년 공연 일정', sysdate);

/****************************************************************************************
    공연(product) & 좌석가격(seatprice) & 공연상세(detail) & 할인(discount) & 후기(review) 등록
****************************************************************************************/

-----1데스노트----------------------------------------
insert into product
values (seq_prod_no.nextval, 2, 1, '뮤지컬 <데스노트>', 1, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 120, 3, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'deathnote.png');

insert into detail values (seq_detail_no.nextval, 1, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 1, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 1, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 1, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 1, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 1, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 1, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 1, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 1, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 1, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 1, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 1, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 1, 3, '재미있게 잘봤습니다. 다음에 재관람 할인으로 또 보러 갈게요', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 1, 4, '재미있게 잘봤습니다. 강추합니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 1, 5, '주차공간이 협소해서 주차하는데만 2시간 걸렸어요. 4점 드립니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 1, 6, '연출이 상당히 인상깊었습니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 1, 7, '오랜만에 가족들과 본 공연인데 다들 만족했습니다. 감사합니다', 5, sysdate);
---------------------------------------------------------------

-----2아이다----------------------------------------
insert into product
values (seq_prod_no.nextval, 2, 2, '뮤지컬 <아이다>', 1, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 120, 3, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'aida.png');

insert into detail values (seq_detail_no.nextval, 2, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 2, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 2, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 2, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 2, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 2, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 2, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 2, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 2, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 2, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 2, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 2, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 2, 3, '재미있게 잘봤습니다. 다음에 재관람 할인으로 또 보러 갈게요', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 2, 4, '재미있게 잘봤습니다. 강추합니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 2, 5, '주차공간이 협소해서 주차하는데만 2시간 걸렸어요. 3점 드립니다.', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 2, 6, '연출이 상당히 인상깊었습니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 2, 7, '오랜만에 가족들과 본 공연인데 다들 만족했습니다. 감사합니다', 3, sysdate);
---------------------------------------------------------------

-----3엑스칼리버----------------------------------------
insert into product
values (seq_prod_no.nextval, 2, 4, '뮤지컬 <엑스칼리버>', 1, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 120, 3, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'ex.png');

insert into detail values (seq_detail_no.nextval, 3, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 3, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 3, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 3, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 3, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 3, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 3, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 3, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 3, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 3, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 3, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 3, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 3, 3, '재미있게 잘봤습니다. 다음에 재관람 할인으로 또 보러 갈게요', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 3, 4, '재미있게 잘봤습니다. 강추합니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 3, 5, '주차공간이 협소해서 주차하는데만 2시간 걸렸지만. 5점 드립니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 3, 6, '연출이 상당히 인상깊었습니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 3, 7, '오랜만에 가족들과 본 공연인데 다들 만족했습니다. 감사합니다', 4, sysdate);
---------------------------------------------------------------

-----4지킬앤하이드----------------------------------------
insert into product
values (seq_prod_no.nextval, 2, 6, '뮤지컬 <지킬앤하이드>', 1, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 120, 3, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'jh.png');

insert into detail values (seq_detail_no.nextval, 4, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 4, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 4, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 4, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 4, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 4, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 4, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 4, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 4, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 4, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 4, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 4, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 4, 3, '재미있게 잘봤습니다. 다음에 재관람 할인으로 또 보러 갈게요', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 4, 4, '재미있게 잘봤습니다. 강추합니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 4, 5, '주차공간이 협소해서 주차하는데만 2시간 걸렸어요. 9점 드립니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 4, 6, '연출이 상당히 인상깊었습니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 4, 7, '오랜만에 가족들과 본 공연인데 다들 만족했습니다. 감사합니다', 5, sysdate);
---------------------------------------------------------------

-----5킹아더----------------------------------------
insert into product
values (seq_prod_no.nextval, 2, 7, '뮤지컬 <킹아더>', 1, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 120, 3, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'king.png');

insert into detail values (seq_detail_no.nextval, 5, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 5, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 5, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 5, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 5, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 5, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 5, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 5, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 5, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 5, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 5, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 5, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 5, 3, '재미있게 잘봤습니다. 다음에 재관람 할인으로 또 보러 갈게요', 2, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 5, 4, '재미있게 잘봤습니다. 강추합니다.', 1, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 5, 5, '주차공간이 협소해서 주차하는데만 2시간 걸렸어요. 9점 드립니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 5, 6, '연출이 상당히 인상깊었습니다.', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 5, 7, '오랜만에 가족들과 본 공연인데 다들 만족했습니다. 감사합니다', 4, sysdate);
---------------------------------------------------------------

-----6팬레터----------------------------------------
insert into product
values (seq_prod_no.nextval, 2, 9, '뮤지컬 <팬레터>', 1, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 120, 3, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'letter.png');

insert into detail values (seq_detail_no.nextval, 6, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 6, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 6, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 6, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 6, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 6, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 6, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 6, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 6, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 6, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 6, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 6, 0, 60, '스페셜데이', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 6, 3, '재미있게 잘봤습니다. 다음에 재관람 할인으로 또 보러 갈게요', 2, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 6, 4, '재미있게 잘봤습니다. 강추합니다.', 1, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 6, 5, '주차공간이 협소해서 주차하는데만 2시간 걸렸어요. 9점 드립니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 6, 6, '연출이 상당히 인상깊었습니다.', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 6, 7, '오랜만에 가족들과 본 공연인데 다들 만족했습니다. 감사합니다', 4, sysdate);
---------------------------------------------------------------

-----7라이온킹----------------------------------------
insert into product
values (seq_prod_no.nextval, 2, 10, '뮤지컬 <라이온킹>', 1, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 120, 3, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'lion.png');

insert into detail values (seq_detail_no.nextval, 7, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 7, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 7, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 7, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 7, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 7, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 7, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 7, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 7, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 7, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 7, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 7, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 7, 3, '재미있게 잘봤습니다. 다음에 재관람 할인으로 또 보러 갈게요', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 7, 4, '재미있게 잘봤습니다. 강추합니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 7, 5, '주차공간이 협소해서 주차하는데만 2시간 걸렸어요. 9점 드립니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 7, 6, '연출이 상당히 인상깊었습니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 7, 7, '오랜만에 가족들과 본 공연인데 다들 만족했습니다. 감사합니다', 5, sysdate);
---------------------------------------------------------------

-----8아몬드----------------------------------------
insert into product
values (seq_prod_no.nextval, 2, 11, '뮤지컬 <아몬드>', 1, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 120, 3, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'mond.png');

insert into detail values (seq_detail_no.nextval, 8, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 8, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 8, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 8, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 8, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 8, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 8, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 8, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 8, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 8, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 8, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 8, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 8, 3, '재미있게 잘봤습니다. 다음에 재관람 할인으로 또 보러 갈게요', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 8, 4, '재미있게 잘봤습니다. 강추합니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 8, 5, '주차공간이 협소해서 주차하는데만 2시간 걸렸어요. 9점 드립니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 8, 6, '연출이 상당히 인상깊었습니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 8, 7, '오랜만에 가족들과 본 공연인데 다들 만족했습니다. 감사합니다', 5, sysdate);
---------------------------------------------------------------

-----9프리다----------------------------------------
insert into product
values (seq_prod_no.nextval, 2, 15, '뮤지컬 <프리다>', 1, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 120, 3, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'prida.png');

insert into detail values (seq_detail_no.nextval, 9, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 9, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 9, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 9, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 9, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 9, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 9, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 9, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 9, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 9, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 9, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 9, 0, 80, '앵콜 공연', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 9, 3, '재미있게 잘봤습니다. 다음에 재관람 할인으로 또 보러 갈게요', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 9, 4, '재미있게 잘봤습니다. 강추합니다.', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 9, 5, '주차공간이 협소해서 주차하는데만 2시간 걸렸어요. 9점 드립니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 9, 6, '연출이 상당히 인상깊었습니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 9, 7, '오랜만에 가족들과 본 공연인데 다들 만족했습니다. 감사합니다', 5, sysdate);
---------------------------------------------------------------


-----10더테일----------------------------------------
insert into product
values (seq_prod_no.nextval, 2, 19, '뮤지컬 <더 테일>', 1, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 120, 3, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'tale.png');

insert into detail values (seq_detail_no.nextval, 10, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 10, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 10, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 10, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 10, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 10, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 10, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 10, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 10, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 10, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 10, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 10, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 10, 3, '재미있게 잘봤습니다. 다음에 재관람 할인으로 또 보러 갈게요', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 10, 4, '재미있게 잘봤습니다. 강추합니다.', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 10, 5, '주차공간이 협소해서 주차하는데만 2시간 걸렸어요. 9점 드립니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 10, 6, '연출이 상당히 인상깊었습니다.', 1, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 10, 7, '오랜만에 가족들과 본 공연인데 다들 만족했습니다. 감사합니다', 3, sysdate);

/******************************************************/
/** 연극 (play) 등록 **/
/******************************************************/

-----11.라스트 세션------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 2, '연극 <라스트 세션>', 2, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 14:00', 'YYYY-MM-DD HH24:MI'), 90, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'last.png');

insert into detail values (seq_detail_no.nextval, 11, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 11, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 11, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 11, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 11, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 11, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 11, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 11, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 11, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 11, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 11, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 11, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 11, 3, '시간가는 줄 모르고 몰입하게 되네요. 강추합니다!', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 11, 4, '재미있게 잘봤습니다. 연극 좋아하시는 분들은 꼭 보세요.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 11, 5, '배우들의 연기가 일품입니다. 무대 연출 또한 훌륭했습니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 11, 6, '극장이 전철과 가깝고 극장안 편의시설 또한 최고였습니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 11, 7, '오랜만에 가족들과 본 연극인데 다들 재밌게 봤습니다. 감사합니다', 5, sysdate);


-----12.쉬어매드니스------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 5, '연극 <쉬어 매드니스>', 2, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 14:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'shear.png');

insert into detail values (seq_detail_no.nextval, 12, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 12, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 12, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 12, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 12, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 12, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 12, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 12, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 12, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 12, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 12, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 12, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 12, 3, '시간가는 줄 모르고 몰입하게 되네요. 강추합니다!', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 12, 4, '재미있게 잘봤습니다. 연극 좋아하시는 분들은 꼭 보세요.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 12, 5, '배우들의 연기가 일품입니다. 무대 연출 또한 훌륭했습니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 12, 6, '극장이 전철과 가깝고 극장안 편의시설 또한 최고였습니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 12, 7, '오랜만에 가족들과 본 연극인데 다들 재밌게 봤습니다. 감사합니다', 5, sysdate);


-----13.비클래스------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 8, '연극 <비클래스>', 2, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 14:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'bclass.png');

insert into detail values (seq_detail_no.nextval, 13, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 13, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 13, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 13, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 13, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 13, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 13, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 13, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 13, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 13, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 13, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 13, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 13, 3, '시간가는 줄 모르고 몰입하게 되네요. 강추합니다!', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 13, 4, '재미있게 잘봤습니다. 연극 좋아하시는 분들은 꼭 보세요.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 13, 5, '배우들의 연기가 일품입니다. 무대 연출 또한 훌륭했습니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 13, 6, '극장이 전철과 가깝고 극장안 편의시설 또한 최고였습니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 13, 7, '오랜만에 가족들과 본 연극인데 다들 재밌게 봤습니다. 감사합니다', 5, sysdate);


-----14.옥탑방고양이------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 10, '연극 <옥탑방고양이>', 2, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 14:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'roof.png');

insert into detail values (seq_detail_no.nextval, 14, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 14, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 14, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 14, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 14, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 14, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 14, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 14, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 14, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 14, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 14, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 14, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 14, 3, '시간가는 줄 모르고 몰입하게 되네요. 강추합니다!', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 14, 4, '재미있게 잘봤습니다. 연극 좋아하시는 분들은 꼭 보세요.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 14, 5, '배우들의 연기가 일품입니다. 무대 연출 또한 훌륭했습니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 14, 6, '극장이 전철과 가깝고 극장안 편의시설 또한 최고였습니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 14, 7, '오랜만에 가족들과 본 연극인데 다들 재밌게 봤습니다. 감사합니다', 5, sysdate);


-----15.죽음의집------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 12, '연극 <죽음의집>', 2, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 14:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'death.png');

insert into detail values (seq_detail_no.nextval, 15, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 15, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 15, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 15, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 15, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 15, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 15, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 15, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 15, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 15, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 15, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 15, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 15, 3, '시간가는 줄 모르고 몰입하게 되네요. 강추합니다!', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 15, 4, '재미있게 잘봤습니다. 연극 좋아하시는 분들은 꼭 보세요.', 1, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 15, 5, '배우들의 연기가 일품입니다. 무대 연출 또한 훌륭했습니다.', 1, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 15, 6, '극장이 전철과 가깝고 극장안 편의시설 또한 최고였습니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 15, 7, '오랜만에 가족들과 본 연극인데 다들 재밌게 봤습니다. 감사합니다', 5, sysdate);


-----16.러브이즈타이밍------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 13, '연극 <러브 이즈 타이밍>', 2, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 14:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'love.png');

insert into detail values (seq_detail_no.nextval, 16, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 16, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 16, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 16, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 16, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 16, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 16, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 16, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 16, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 16, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 16, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 16, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 16, 3, '시간가는 줄 모르고 몰입하게 되네요. 강추합니다!', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 16, 4, '재미있게 잘봤습니다. 연극 좋아하시는 분들은 꼭 보세요.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 16, 5, '배우들의 연기가 일품입니다. 무대 연출 또한 훌륭했습니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 16, 6, '극장이 전철과 가깝고 극장안 편의시설 또한 최고였습니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 16, 7, '오랜만에 가족들과 본 연극인데 다들 재밌게 봤습니다. 감사합니다', 5, sysdate);


-----17.회란기------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 15, '연극 <회란기>', 2, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 14:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'circle.png');

insert into detail values (seq_detail_no.nextval, 17, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 17, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 17, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 17, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 17, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 17, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 17, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 17, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 17, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 17, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 17, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 17, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 17, 3, '시간가는 줄 모르고 몰입하게 되네요. 강추합니다!', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 17, 4, '재미있게 잘봤습니다. 연극 좋아하시는 분들은 꼭 보세요.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 17, 5, '배우들의 연기가 일품입니다. 무대 연출 또한 훌륭했습니다.', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 17, 6, '극장이 전철과 가깝고 극장안 편의시설 또한 최고였습니다.', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 17, 7, '오랜만에 가족들과 본 연극인데 다들 재밌게 봤습니다. 감사합니다', 2, sysdate);


-----18.나의PS파트너------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 16, '연극 <나의 PS파트너>', 2, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 14:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'ps.png');

insert into detail values (seq_detail_no.nextval, 18, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 18, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 18, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 18, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 18, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 18, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 18, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 18, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 18, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 18, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 18, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 18, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 18, 3, '시간가는 줄 모르고 몰입하게 되네요. 강추합니다!', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 18, 4, '재미있게 잘봤습니다. 연극 좋아하시는 분들은 꼭 보세요.', 2, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 18, 5, '배우들의 연기가 일품입니다. 무대 연출 또한 훌륭했습니다.', 2, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 18, 6, '극장이 전철과 가깝고 극장안 편의시설 또한 최고였습니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 18, 7, '오랜만에 가족들과 본 연극인데 다들 재밌게 봤습니다. 감사합니다', 5, sysdate);


-----19.운빨로맨스------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 17, '연극 <운빨로맨스>', 2, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 14:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'luck.png');

insert into detail values (seq_detail_no.nextval, 19, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 19, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 19, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 19, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 19, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 19, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 19, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 19, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 19, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 19, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 19, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 19, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 19, 3, '시간가는 줄 모르고 몰입하게 되네요. 강추합니다!', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 19, 4, '재미있게 잘봤습니다. 연극 좋아하시는 분들은 꼭 보세요.', 2, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 19, 5, '배우들의 연기가 일품입니다. 무대 연출 또한 훌륭했습니다.', 2, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 19, 6, '극장이 전철과 가깝고 극장안 편의시설 또한 최고였습니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 19, 7, '오랜만에 가족들과 본 연극인데 다들 재밌게 봤습니다. 감사합니다', 5, sysdate);


-----20.핫식스------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 19, '연극 <핫식스>', 2, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 14:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'hot.png');

insert into detail values (seq_detail_no.nextval, 20, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 20, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 20, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 20, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 20, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 20, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 20, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 20, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 20, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 20, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 20, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 20, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 20, 3, '시간가는 줄 모르고 몰입하게 되네요. 강추합니다!', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 20, 4, '재미있게 잘봤습니다. 연극 좋아하시는 분들은 꼭 보세요.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 20, 5, '배우들의 연기가 일품입니다. 무대 연출 또한 훌륭했습니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 20, 6, '극장이 전철과 가깝고 극장안 편의시설 또한 최고였습니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 20, 7, '오랜만에 가족들과 본 연극인데 다들 재밌게 봤습니다. 감사합니다', 5, sysdate);

/***********************************************************/
/****          콘서트(concert) 등록                       ****/
/***********************************************************/

-----21.2022 soundberry Theater------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 3, '콘서트 <2022 Soundberry Theater>', 3, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 16:30', 'YYYY-MM-DD HH24:MI'), 120, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'sound.png');

insert into detail values (seq_detail_no.nextval, 21, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 21, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 21, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 21, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 21, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 21, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 21, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 21, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 21, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 21, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 21, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 21, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 21, 3, '후회없는 선택입니다. 제가 좋아하는 노래들이라 더욱 감동적이었습니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 21, 4, '연인과 함께 듣기 좋은 노래들입니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 21, 5, '음향장치들이 무대의 생동감을 더해줘서 좋았습니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 21, 6, '직원들의 안내가 매우 친절해서 콘서트 시작 전에 기분이 좋았습니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 21, 7, '오랫동안 기억에 남을만한 추억이었습니다 감사합니다.', 4, sysdate);


-----22.국카스텐------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 4, '콘서트 <국카스텐>', 3, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 16:30', 'YYYY-MM-DD HH24:MI'), 110, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'guck.png');

insert into detail values (seq_detail_no.nextval, 22, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 22, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 22, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 22, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 22, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 22, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 22, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 22, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 22, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 22, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 22, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 22, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 22, 3, '후회없는 선택입니다. 제가 좋아하는 노래들이라 더욱 감동적이었습니다', 2, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 22, 4, '연인과 함께 듣기 좋은 노래들입니다.', 1, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 22, 5, '음향장치들이 무대의 생동감을 더해줘서 좋았습니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 22, 6, '직원들의 안내가 매우 친절해서 콘서트 시작 전에 기분이 좋았습니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 22, 7, '오랫동안 기억에 남을만한 추억이었습니다 감사합니다.', 1, sysdate);


-----23.이달의어썸------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 5, '콘서트 <이달의 어썸>', 3, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 16:30', 'YYYY-MM-DD HH24:MI'), 110, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'month.png');

insert into detail values (seq_detail_no.nextval, 23, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 23, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 23, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 23, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 23, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 23, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 23, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 23, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 23, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 23, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 23, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 23, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 23, 3, '후회없는 선택입니다. 제가 좋아하는 노래들이라 더욱 감동적이었습니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 23, 4, '연인과 함께 듣기 좋은 노래들입니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 23, 5, '음향장치들이 무대의 생동감을 더해줘서 좋았습니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 23, 6, '직원들의 안내가 매우 친절해서 콘서트 시작 전에 기분이 좋았습니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 23, 7, '오랫동안 기억에 남을만한 추억이었습니다 감사합니다.', 5, sysdate);


-----24.김문정only------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 6, '콘서트 <김문정 [ONLY]>', 3, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 16:30', 'YYYY-MM-DD HH24:MI'), 110, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'only.png');

insert into detail values (seq_detail_no.nextval, 24, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 24, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 24, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 24, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 24, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 24, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 24, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 24, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 24, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 24, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 24, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 24, 0, 70, '예술인 할인', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 24, 3, '후회없는 선택입니다. 제가 좋아하는 노래들이라 더욱 감동적이었습니다', 2, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 24, 4, '연인과 함께 듣기 좋은 노래들입니다.', 1, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 24, 5, '음향장치들이 무대의 생동감을 더해줘서 좋았습니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 24, 6, '직원들의 안내가 매우 친절해서 콘서트 시작 전에 기분이 좋았습니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 24, 7, '오랫동안 기억에 남을만한 추억이었습니다 감사합니다.', 1, sysdate);



-----25.라쿠나------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 7, '콘서트 <라쿠나 [Lacuna]>', 3, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 16:30', 'YYYY-MM-DD HH24:MI'), 110, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'lacuna.png');

insert into detail values (seq_detail_no.nextval, 25, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 25, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 25, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 25, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 25, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 25, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 25, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 25, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 25, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 25, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 25, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 25, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 25, 3, '후회없는 선택입니다. 제가 좋아하는 노래들이라 더욱 감동적이었습니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 25, 4, '연인과 함께 듣기 좋은 노래들입니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 25, 5, '음향장치들이 무대의 생동감을 더해줘서 좋았습니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 25, 6, '직원들의 안내가 매우 친절해서 콘서트 시작 전에 기분이 좋았습니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 25, 7, '오랫동안 기억에 남을만한 추억이었습니다 감사합니다.', 5, sysdate);



-----26.선우정아페스티벌------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 9, '콘서트 <선우정아 : Festival>', 3, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 16:30', 'YYYY-MM-DD HH24:MI'), 110, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'sunwoo.png');

insert into detail values (seq_detail_no.nextval, 26, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 26, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 26, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 26, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 26, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 26, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 26, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 26, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 26, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 26, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 26, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 26, 0, 65, '선우정아 생일', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 26, 3, '후회없는 선택입니다. 제가 좋아하는 노래들이라 더욱 감동적이었습니다', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 26, 4, '연인과 함께 듣기 좋은 노래들입니다.', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 26, 5, '음향장치들이 무대의 생동감을 더해줘서 좋았습니다.', 2, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 26, 6, '직원들의 안내가 매우 친절해서 콘서트 시작 전에 기분이 좋았습니다.', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 26, 7, '오랫동안 기억에 남을만한 추억이었습니다 감사합니다.', 4, sysdate);



-----27.메타포닉------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 10, '콘서트 <메타포닉 포르테 디 콰트로>', 3, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 16:30', 'YYYY-MM-DD HH24:MI'), 110, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'meta.png');

insert into detail values (seq_detail_no.nextval, 27, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 27, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 27, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 27, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 27, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 27, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 27, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 27, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 27, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 27, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 27, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 27, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 27, 3, '후회없는 선택입니다. 제가 좋아하는 노래들이라 더욱 감동적이었습니다', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 27, 4, '연인과 함께 듣기 좋은 노래들입니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 27, 5, '음향장치들이 무대의 생동감을 더해줘서 좋았습니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 27, 6, '직원들의 안내가 매우 친절해서 콘서트 시작 전에 기분이 좋았습니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 27, 7, '오랫동안 기억에 남을만한 추억이었습니다 감사합니다.', 4, sysdate);



-----28.스탠딩에그------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 12, '콘서트 <스탠딩에그>', 3, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 16:30', 'YYYY-MM-DD HH24:MI'), 110, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'egg.png');

insert into detail values (seq_detail_no.nextval, 28, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 28, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 28, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 28, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 28, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 28, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 28, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 28, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 28, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 28, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 28, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 28, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 28, 3, '후회없는 선택입니다. 제가 좋아하는 노래들이라 더욱 감동적이었습니다', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 28, 4, '연인과 함께 듣기 좋은 노래들입니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 28, 5, '음향장치들이 무대의 생동감을 더해줘서 좋았습니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 28, 6, '직원들의 안내가 매우 친절해서 콘서트 시작 전에 기분이 좋았습니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 28, 7, '오랫동안 기억에 남을만한 추억이었습니다 감사합니다.', 4, sysdate);



-----29.실리카겔------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 15, '콘서트 <실리카겔 단독공연>', 3, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 16:30', 'YYYY-MM-DD HH24:MI'), 110, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'syn.png');

insert into detail values (seq_detail_no.nextval, 29, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 29, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 29, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 29, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 29, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 29, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 29, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 29, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 29, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 29, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 29, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 29, 0, 75, '마지막공연', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 29, 3, '후회없는 선택입니다. 제가 좋아하는 노래들이라 더욱 감동적이었습니다', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 29, 4, '연인과 함께 듣기 좋은 노래들입니다.', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 29, 5, '음향장치들이 무대의 생동감을 더해줘서 좋았습니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 29, 6, '직원들의 안내가 매우 친절해서 콘서트 시작 전에 기분이 좋았습니다.', 2, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 29, 7, '오랫동안 기억에 남을만한 추억이었습니다 감사합니다.', 4, sysdate);



-----30.줄리아드림------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 18, '콘서트 <줄리아드림>', 3, '2022-03-01', '2022-05-31', '2022-02-15', '2022-05-31', TO_DATE('2022-03-01 16:30', 'YYYY-MM-DD HH24:MI'), 110, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'julia.png');

insert into detail values (seq_detail_no.nextval, 30, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 30, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 30, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 30, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 30, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 30, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 30, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 30, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 30, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 30, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 30, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 30, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 30, 3, '후회없는 선택입니다. 제가 좋아하는 노래들이라 더욱 감동적이었습니다', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 30, 4, '연인과 함께 듣기 좋은 노래들입니다.', 2, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 30, 5, '음향장치들이 무대의 생동감을 더해줘서 좋았습니다.', 1, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 30, 6, '직원들의 안내가 매우 친절해서 콘서트 시작 전에 기분이 좋았습니다.', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 30, 7, '오랫동안 기억에 남을만한 추억이었습니다 감사합니다.', 5, sysdate);

/******************************************************/
/** 스포츠 (sports) 등록 **/
/******************************************************/


-----31.서울이랜드------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 21, '스포츠 <서울이랜드 FC>', 4, '2022-04-04', '2022-04-04', '2022-03-15', '2022-04-04', TO_DATE('2022-04-04 20:00', 'YYYY-MM-DD HH24:MI'), 105, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'eland.png');

insert into detail values (seq_detail_no.nextval, 31, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 31, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 31, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 31, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 31, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 31, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 31, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 31, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 31, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 31, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 31, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 31, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 31, 3, 'K리그 화이팅', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 31, 4, '경기력이 갈수록 좋아지니까 더 재밌습니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 31, 5, '주차공간이 다소 협소합니다. 주차하실분은 30분전에 가시는걸 추천합니다', 2, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 31, 6, '편의시설이 훌륭합니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 31, 7, '뜨거운 응원의 열기를 느낄 수 있어 좋았습니다.', 3, sysdate);

-----32.수원삼성------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 22, '스포츠 <수원삼성블루윙즈>', 4, '2022-04-04', '2022-04-04', '2022-03-15', '2022-04-04', TO_DATE('2022-04-04 20:00', 'YYYY-MM-DD HH24:MI'), 105, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'suwon.png');

insert into detail values (seq_detail_no.nextval, 32, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 32, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 32, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 32, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 32, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 32, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 32, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 32, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 32, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 32, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 32, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 32, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 32, 3, 'K리그 화이팅', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 32, 4, '경기력이 갈수록 좋아지니까 더 재밌습니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 32, 5, '주차공간이 다소 협소합니다. 주차하실분은 30분전에 가시는걸 추천합니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 32, 6, '편의시설이 훌륭합니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 32, 7, '뜨거운 응원의 열기를 느낄 수 있어 좋았습니다.', 5, sysdate);



-----33.제주------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 23, '스포츠 <제주유나이티드>', 4, '2022-04-04', '2022-04-04', '2022-03-15', '2022-04-04', TO_DATE('2022-04-04 20:00', 'YYYY-MM-DD HH24:MI'), 105, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'jeju.png');

insert into detail values (seq_detail_no.nextval, 33, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 33, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 33, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 33, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 33, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 33, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 33, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 33, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 33, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 33, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 33, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 33, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 33, 3, 'K리그 화이팅',3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 33, 4, '경기력이 갈수록 좋아지니까 더 재밌습니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 33, 5, '주차공간이 다소 협소합니다. 주차하실분은 30분전에 가시는걸 추천합니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 33, 6, '편의시설이 훌륭합니다', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 33, 7, '뜨거운 응원의 열기를 느낄 수 있어 좋았습니다.', 5, sysdate);


-----34.부천FC------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 24, '스포츠 <부천FC 1995>', 4, '2022-04-04', '2022-04-04', '2022-03-15', '2022-04-04', TO_DATE('2022-04-04 20:00', 'YYYY-MM-DD HH24:MI'), 105, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'bucheon.png');

insert into detail values (seq_detail_no.nextval, 34, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 34, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 34, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 34, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 34, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 34, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 34, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 34, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 34, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 34, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 34, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 34, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 34, 3, 'K리그 화이팅', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 34, 4, '경기력이 갈수록 좋아지니까 더 재밌습니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 34, 5, '주차공간이 다소 협소합니다. 주차하실분은 30분전에 가시는걸 추천합니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 34, 6, '편의시설이 훌륭합니다', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 34, 7, '뜨거운 응원의 열기를 느낄 수 있어 좋았습니다.', 5, sysdate);




-----35.김포FC------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 25, '스포츠 <김포FC>', 4, '2022-04-04', '2022-04-04', '2022-03-15', '2022-04-04', TO_DATE('2022-04-04 20:00', 'YYYY-MM-DD HH24:MI'), 105, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'gimpo.png');

insert into detail values (seq_detail_no.nextval, 35, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 35, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 35, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 35, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 35, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 35, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 35, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 35, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 35, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 35, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 35, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 35, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 35, 3, 'K리그 화이팅',4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 35, 4, '경기력이 갈수록 좋아지니까 더 재밌습니다', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 35, 5, '주차공간이 다소 협소합니다. 주차하실분은 30분전에 가시는걸 추천합니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 35, 6, '편의시설이 훌륭합니다', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 35, 7, '뜨거운 응원의 열기를 느낄 수 있어 좋았습니다.', 4, sysdate);



-----36.천안시축구단------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 26, '스포츠 <천안시축구단>', 4, '2022-04-04', '2022-04-04', '2022-03-15', '2022-04-04', TO_DATE('2022-04-04 20:00', 'YYYY-MM-DD HH24:MI'), 105, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'cheonan.png');

insert into detail values (seq_detail_no.nextval, 36, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 36, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 36, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 36, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 36, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 36, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 36, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 36, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 36, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 36, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 36, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 36, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 36, 3, 'K리그 화이팅',3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 36, 4, '경기력이 갈수록 좋아지니까 더 재밌습니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 36, 5, '주차공간이 다소 협소합니다. 주차하실분은 30분전에 가시는걸 추천합니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 36, 6, '편의시설이 훌륭합니다', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 36, 7, '뜨거운 응원의 열기를 느낄 수 있어 좋았습니다.', 5, sysdate);



-----37.강원 FC------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 27, '스포츠 <강원FC>', 4, '2022-04-04', '2022-04-04', '2022-03-15', '2022-04-04', TO_DATE('2022-04-04 20:00', 'YYYY-MM-DD HH24:MI'), 105, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'gangwon.png');

insert into detail values (seq_detail_no.nextval, 37, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 37, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 37, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 37, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 37, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 37, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 37, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 37, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 37, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 37, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 37, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 37, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 37, 3, 'K리그 화이팅', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 37, 4, '경기력이 갈수록 좋아지니까 더 재밌습니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 37, 5, '주차공간이 다소 협소합니다. 주차하실분은 30분전에 가시는걸 추천합니다', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 37, 6, '편의시설이 훌륭합니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 37, 7, '뜨거운 응원의 열기를 느낄 수 있어 좋았습니다.', 5, sysdate);


-----38.성남 FC------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 28, '스포츠 <성남FC>', 4, '2022-04-04', '2022-04-04', '2022-03-15', '2022-04-04', TO_DATE('2022-04-04 20:00', 'YYYY-MM-DD HH24:MI'), 105, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'seongnam.png');

insert into detail values (seq_detail_no.nextval, 38, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 38, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 38, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 38, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 38, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 38, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 38, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 38, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 38, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 38, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 38, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 38, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 38, 3, 'K리그 화이팅',4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 38, 4, '경기력이 갈수록 좋아지니까 더 재밌습니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 38, 5, '주차공간이 다소 협소합니다. 주차하실분은 30분전에 가시는걸 추천합니다', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 38, 6, '편의시설이 훌륭합니다', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 38, 7, '뜨거운 응원의 열기를 느낄 수 있어 좋았습니다.', 5, sysdate);

/******************************************************/
/** 전시 (exhibition) 등록 **/
/******************************************************/

-----39.투탕카멘------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 2, '전시 <투탕카멘 [파라오의 비밀]>', 5, '2022-04-04', '2022-04-30', '2022-03-15', '2022-04-30', TO_DATE('2022-04-04 13:00', 'YYYY-MM-DD HH24:MI'), 90, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'tuta.png');

insert into detail values (seq_detail_no.nextval, 39, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 39, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 39, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 39, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 39, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 39, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 39, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 39, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 39, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 39, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 39, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 39, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 39, 3, '기묘하네요.',4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 39, 4, '신기합니다. 한번쯤은 볼만한 전시회입니다.', 1, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 39, 5, '주차공간이 다소 협소합니다. 주차하실분은 50분전에 가시는걸 추천합니다', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 39, 6, '아이들이 너무 좋아하네요. 재미있었습니다', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 39, 7, '교육용으로도 손색없습니다.', 2, sysdate);

-----40.hybe------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 5, '전시 <하이브 [HYBE INSIGHT]>', 5, '2022-04-04', '2022-04-30', '2022-03-15', '2022-04-30', TO_DATE('2022-04-04 13:00', 'YYYY-MM-DD HH24:MI'), 90, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'hybe.png');

insert into detail values (seq_detail_no.nextval, 40, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 40, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 40, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 40, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 40, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 40, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 40, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 40, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 40, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 40, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 40, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 40, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 40, 3, '기묘하네요.', 2, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 40, 4, '신기합니다. 한번쯤은 볼만한 전시회입니다.', 1, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 40, 5, '주차공간이 다소 협소합니다. 주차하실분은 50분전에 가시는걸 추천합니다', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 40, 6, '아이들이 너무 좋아하네요. 재미있었습니다', 2, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 40, 7, '교육용으로도 손색없습니다.', 2, sysdate);


-----41.팀버튼------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 8, '전시 <팀 버튼 특별전>', 5, '2022-04-04', '2022-04-30', '2022-03-15', '2022-04-30', TO_DATE('2022-04-04 13:00', 'YYYY-MM-DD HH24:MI'), 90, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'tim.png');

insert into detail values (seq_detail_no.nextval, 41, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 41, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 41, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 41, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 41, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 41, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 41, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 41, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 41, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 41, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 41, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 41, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 41, 3, '기묘하네요.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 41, 4, '신기합니다. 한번쯤은 볼만한 전시회입니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 41, 5, '주차공간이 다소 협소합니다. 주차하실분은 50분전에 가시는걸 추천합니다', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 41, 6, '아이들이 너무 좋아하네요. 재미있었습니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 41, 7, '교육용으로도 손색없습니다.', 5, sysdate);


-----42.데이비드------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 13, '전시 <데이비드 슈리글리전>', 5, '2022-04-04', '2022-04-30', '2022-03-15', '2022-04-30', TO_DATE('2022-04-04 13:00', 'YYYY-MM-DD HH24:MI'), 90, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'david.png');

insert into detail values (seq_detail_no.nextval, 42, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 42, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 42, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 42, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 42, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 42, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 42, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 42, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 42, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 42, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 42, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 42, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 42, 3, '기묘하네요.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 42, 4, '신기합니다. 한번쯤은 볼만한 전시회입니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 42, 5, '주차공간이 다소 협소합니다. 주차하실분은 50분전에 가시는걸 추천합니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 42, 6, '아이들이 너무 좋아하네요. 재미있었습니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 42, 7, '교육용으로도 손색없습니다.', 4, sysdate);


-----43.로그아웃------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 14, '전시 <로그아웃>', 5, '2022-04-04', '2022-04-30', '2022-03-15', '2022-04-30', TO_DATE('2022-04-04 13:00', 'YYYY-MM-DD HH24:MI'), 90, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'log.png');

insert into detail values (seq_detail_no.nextval, 43, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 43, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 43, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 43, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 43, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 43, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 43, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 43, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 43, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 43, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 43, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 43, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 43, 3, '기묘하네요.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 43, 4, '신기합니다. 한번쯤은 볼만한 전시회입니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 43, 5, '주차공간이 다소 협소합니다. 주차하실분은 50분전에 가시는걸 추천합니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 43, 6, '아이들이 너무 좋아하네요. 재미있었습니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 43, 7, '교육용으로도 손색없습니다.', 5, sysdate);

-----44.반고흐------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 15, '전시 <빈센트 반고흐>', 5, '2022-04-04', '2022-04-30', '2022-03-15', '2022-04-30', TO_DATE('2022-04-04 13:00', 'YYYY-MM-DD HH24:MI'), 90, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'vin.png');

insert into detail values (seq_detail_no.nextval, 44, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 44, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 44, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 44, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 44, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 44, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 44, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 44, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 44, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 44, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 44, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 44, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 44, 3, '기묘하네요.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 44, 4, '신기합니다. 한번쯤은 볼만한 전시회입니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 44, 5, '주차공간이 다소 협소합니다. 주차하실분은 50분전에 가시는걸 추천합니다', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 44, 6, '아이들이 너무 좋아하네요. 재미있었습니다', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 44, 7, '교육용으로도 손색없습니다.', 4, sysdate);

-----45.에디슨과학------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 16, '전시 <참소리축음기와 에디슨>', 5, '2022-04-04', '2022-04-30', '2022-03-15', '2022-04-30', TO_DATE('2022-04-04 13:00', 'YYYY-MM-DD HH24:MI'), 90, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'soriedi.png');

insert into detail values (seq_detail_no.nextval, 45, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 45, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 45, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 45, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 45, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 45, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 45, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 45, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 45, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 45, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 45, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 45, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 45, 3, '기묘하네요.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 45, 4, '신기합니다. 한번쯤은 볼만한 전시회입니다.', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 45, 5, '주차공간이 다소 협소합니다. 주차하실분은 50분전에 가시는걸 추천합니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 45, 6, '아이들이 너무 좋아하네요. 재미있었습니다', 2, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 45, 7, '교육용으로도 손색없습니다.', 2, sysdate);


-----46.한국스토리------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 17, '전시 <한국 스토리 뮤지엄>', 5, '2022-04-04', '2022-04-30', '2022-03-15', '2022-04-30', TO_DATE('2022-04-04 13:00', 'YYYY-MM-DD HH24:MI'), 90, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'kor.png');

insert into detail values (seq_detail_no.nextval, 46, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 46, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 46, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 46, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 46, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 46, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 46, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 46, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 46, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 46, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 46, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 46, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 46, 3, '기묘하네요.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 46, 4, '신기합니다. 한번쯤은 볼만한 전시회입니다.', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 46, 5, '주차공간이 다소 협소합니다. 주차하실분은 50분전에 가시는걸 추천합니다', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 46, 6, '아이들이 너무 좋아하네요. 재미있었습니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 46, 7, '교육용으로도 손색없습니다.', 5, sysdate);



-----47.숙련기술체험관------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 18, '전시 <숙련기술체험관>', 5, '2022-04-04', '2022-04-30', '2022-03-15', '2022-04-30', TO_DATE('2022-04-04 13:00', 'YYYY-MM-DD HH24:MI'), 90, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'skill.png');

insert into detail values (seq_detail_no.nextval, 47, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 47, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 47, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 47, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 47, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 47, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 47, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 47, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 47, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 47, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 47, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 47, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 47, 3, '기묘하네요.', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 47, 4, '신기합니다. 한번쯤은 볼만한 전시회입니다.', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 47, 5, '주차공간이 다소 협소합니다. 주차하실분은 50분전에 가시는걸 추천합니다', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 47, 6, '아이들이 너무 좋아하네요. 재미있었습니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 47, 7, '교육용으로도 손색없습니다.', 2, sysdate);



-----48.아르떼뮤지엄------------------------------------

insert into product
values (seq_prod_no.nextval, 2, 19, '전시 <아르떼뮤지엄>', 5, '2022-04-04', '2022-04-30', '2022-03-15', '2022-04-30', TO_DATE('2022-04-04 13:00', 'YYYY-MM-DD HH24:MI'), 90, 1, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'arte.png');

insert into detail values (seq_detail_no.nextval, 48, 'prodpath.jpg', 'castpath.jpg', 'addpath.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 48, 'vip', 140000);
insert into seatprice values (seq_seatprice_no.nextval, 48, 'r', 120000);
insert into seatprice values (seq_seatprice_no.nextval, 48, 's', 100000);
insert into seatprice values (seq_seatprice_no.nextval, 48, 'a', 80000);
insert into seatprice values (seq_seatprice_no.nextval, 48, 'b', 60000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 48, 0, 35, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 48, 0, 20, '지역주민 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 48, 0, 20, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 48, 0, 40, '장애인 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 48, 0, 50, '타임 세일', '22/03/07','22/03/20');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname, begindc, enddc) values(seq_dc_no.nextval, 48, 0, 55, '문화의날', '22/03/10','22/03/20');

insert into review values (SEQ_REVIEW_NO.nextval, 48, 3, '기묘하네요.', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 48, 4, '신기합니다. 한번쯤은 볼만한 전시회입니다.', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 48, 5, '주차공간이 다소 협소합니다. 주차하실분은 50분전에 가시는걸 추천합니다', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 48, 6, '아이들이 너무 좋아하네요. 재미있었습니다', 5, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 48, 7, '교육용으로도 손색없습니다.', 2, sysdate);

------ 추가 데이터 ------------------------------
insert into product values (seq_prod_no.nextval, 2, 20, '뮤지컬 <빈센트 반 고흐>', 1, '2022-04-15', '2022-05-31', '2022-03-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'van.png');
insert into product values (seq_prod_no.nextval, 2, 20, '뮤지컬 <더 스톤>', 1, '2022-04-15', '2022-05-31', '2022-03-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'stone.png');
insert into product values (seq_prod_no.nextval, 2, 19, '뮤지컬 <웨스턴 스토리>', 1, '2022-04-15', '2022-05-31', '2022-03-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'western.png');
insert into product values (seq_prod_no.nextval, 2, 18, '뮤지컬 <난쟁이들>', 1, '2022-04-15', '2022-05-31', '2022-03-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'nan.png');

-----53 팀프로젝트 시연회----------------------------------------------------------------
insert into product
values (seq_prod_no.nextval, 9, 29, '팀 프로젝트 시연회', 1, '2022-03-28', '2022-03-28', '2022-03-28', '2022-03-28', TO_DATE('2022-03-28 14:30', 'YYYY-MM-DD HH24:MI'), 180, 1, 'HRD앱에서 입,퇴실 확인!<br>QR 개인소장 절대금지!<br>OT자료는 아래 TMS 주소에서 확인 가능합니다!<br><br><br>(TMS주소)<br>https://githrd.cafe24.com/student/index.php<br><br>(줌주소)<br>https://us02web.zoom.us/j/7656030770?pwd=WE51VGhWdTZHVDBITjhNVkQvZEtJQT09<br>회의 ID: 765 603 0770<br>암호 : global<br><br><학원 이메일> - 출결증빙서류<br>githrd00@naver.com<br><br><학원 FAX><br>02-3285-0012<br><br>(강사/강의)<br>연락처   : 황일영/010-3286-5102/iremys@gmail.com<br>공유폴더: https://bit.ly/3BgxbEY <br>깃허브   : https://github.com/codeclz2021<br>', '취소/환불 불가능합니다<br>좋은 하루 되십시오', 1, 'bono.jpg');

insert into detail values (seq_detail_no.nextval, 53, 'prod1.jpg', 'cast1.png', 'addd1.png');

insert into seatprice values (seq_seatprice_no.nextval, 53, 'vip', 10000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 53, 0, 1, '1퍼센트 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 53, 0, 2, '재수강 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 53, 0, 3, '얼리버드 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 53, 0, 4, '국가유공자 할인');

-------------------------------------------------------------------------------------------

insert into product values (seq_prod_no.nextval, 2, 17, '뮤지컬 <위대한 유산 [PIP]>', 1, '2022-04-15', '2022-05-31', '2022-03-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'pip.png');
insert into product values (seq_prod_no.nextval, 2, 20, '뮤지컬 <차미>', 1, '2022-04-15', '2022-05-31', '2022-03-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'me.png');
insert into product values (seq_prod_no.nextval, 2, 16, '뮤지컬 <블루헬멧 : 메이사의 노래>', 1, '2022-04-15', '2022-05-31', '2022-03-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'helmet.png');
insert into product values (seq_prod_no.nextval, 2, 15, '뮤지컬 <엠 [M]>', 1, '2022-04-15', '2022-05-31', '2022-03-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'm.png');
insert into product values (seq_prod_no.nextval, 2, 14, '뮤지컬 <블러디 사일런스>', 1, '2022-04-15', '2022-05-31', '2022-03-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'bs.png');
insert into product values (seq_prod_no.nextval, 2, 19, '뮤지컬 <렛미플라이>', 1, '2022-04-15', '2022-05-31', '2022-03-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'let.png');
insert into product values (seq_prod_no.nextval, 2, 15, '뮤지컬 <싯다르타>', 1, '2022-04-15', '2022-05-31', '2022-03-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'sid.png');
insert into product values (seq_prod_no.nextval, 2, 13, '뮤지컬 <드래곤 플라워>', 1, '2022-04-15', '2022-05-31', '2022-03-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'dra.png');
insert into product values (seq_prod_no.nextval, 2, 11, '뮤지컬 <리어>', 1, '2022-04-15', '2022-05-31', '2022-03-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'lear.png');
insert into product values (seq_prod_no.nextval, 2, 12, '뮤지컬 <내 친구 유관순>', 1, '2022-04-15', '2022-05-31', '2022-03-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'yoo.png');
insert into product values (seq_prod_no.nextval, 2, 18, '뮤지컬 <유진과 유진>', 1, '2022-04-15', '2022-05-31', '2022-03-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'jin.png');
insert into product values (seq_prod_no.nextval, 2, 10, '뮤지컬 <선물 인투 더 바이블>', 1, '2022-04-15', '2022-05-31', '2022-03-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'bible.png');
insert into product values (seq_prod_no.nextval, 2, 9, '뮤지컬 <스크루테이프의 편지>', 1, '2022-04-15', '2022-05-31', '2022-03-15', '2022-05-31', TO_DATE('2022-03-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'tmzn.png');
insert into product values (seq_prod_no.nextval, 2, 8, '연극 <내가 멜론을 얼마나 좋아하는데>', 2, '2022-04-17', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-04-17 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'melon.png');
insert into product values (seq_prod_no.nextval, 2, 7, '연극 <그남자 그여자>', 2, '2022-04-17', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-04-17 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'mw.png');
insert into product values (seq_prod_no.nextval, 2, 20, '연극 <택시안에서>', 2, '2022-04-17', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-04-17 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'taxi.png');
insert into product values (seq_prod_no.nextval, 2, 18, '연극 <준생>', 2, '2022-04-17', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-04-17 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'wnstod.png');
insert into product values (seq_prod_no.nextval, 2, 19, '연극 <불효자는 웁니다>', 2, '2022-04-17', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-04-17 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'qnfgy.png');
insert into product values (seq_prod_no.nextval, 2, 17, '연극 <안티고네>', 2, '2022-04-17', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-04-17 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'anti.png');
insert into product values (seq_prod_no.nextval, 2, 16, '연극 <임금알>', 2, '2022-04-17', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-04-17 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'dlarma.png');
insert into product values (seq_prod_no.nextval, 2, 15, '연극 <욕조연극>', 2, '2022-04-17', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-04-17 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'bath.png');
insert into product values (seq_prod_no.nextval, 2, 14, '연극 <별을 수놓는 여자>', 2, '2022-04-17', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-04-17 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'qufdmf.png');
insert into product values (seq_prod_no.nextval, 2, 4, '연극 <갈매기>', 2, '2022-04-17', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-04-17 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'rkfao.png');
insert into product values (seq_prod_no.nextval, 2, 28, '콘서트 <아스트로 AROHA FESTIVAL>', 3, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'dktm.png');
insert into product values (seq_prod_no.nextval, 2, 26, '콘서트 <성시경 팬미팅 [사월]>', 3, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'tlrud.png');
insert into product values (seq_prod_no.nextval, 2, 27, '콘서트 <씨아이엑스 CIX 1st Concert [REBEL]>', 3, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'cix.png');
insert into product values (seq_prod_no.nextval, 2, 23, '콘서트 <이문세 콘서트>', 3, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'anstp.png');
insert into product values (seq_prod_no.nextval, 2, 22, '콘서트 <세븐틴 in CARAT LAND>', 3, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'sv.png');
insert into product values (seq_prod_no.nextval, 2, 25, '콘서트 <이은미 전국투어 콘서트>', 3, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'dmsal.png');
insert into product values (seq_prod_no.nextval, 2, 5, '콘서트 <이승환 콘서트 우리 그때,>', 3, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'tmdghks.png');
insert into product values (seq_prod_no.nextval, 2, 7, '콘서트 <윤한의 화이트데이 콘서트>', 3, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'dbsgks.png');
insert into product values (seq_prod_no.nextval, 2, 18, '콘서트 <유키 구라모토와 친구들>', 3, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'dbzl.png');
insert into product values (seq_prod_no.nextval, 2, 19, '콘서트 <김선욱 피아노 리사이틀>', 3, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'tjsdnr.png');
insert into product values (seq_prod_no.nextval, 2, 0, '스포츠 <청풍호 모노레일 이용권>', 4, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'wpcjs.png');
insert into product values (seq_prod_no.nextval, 2, 0, '스포츠 <남이섬 트레킹온아일랜드>', 4, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'skadl.png');
insert into product values (seq_prod_no.nextval, 2, 25, '스포츠 <수원 FC>', 4, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'tndnjs.png');
insert into product values (seq_prod_no.nextval, 2, 0, '스포츠 <알파카 월드>', 4, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'dkfvk.png');
insert into product values (seq_prod_no.nextval, 2, 0, '스포츠 <볼베어 스포츠 테마파크>', 4, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'qhf.png');
insert into product values (seq_prod_no.nextval, 2, 0, '스포츠 <부산항 힐링 야영장>', 4, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'qntks.png');
insert into product values (seq_prod_no.nextval, 2, 0, '스포츠 <대봉스카이랜드>', 4, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'eoqhd.png');
insert into product values (seq_prod_no.nextval, 2, 0, '스포츠 <루프앤클라우드>', 4, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'fnvm.png');
insert into product values (seq_prod_no.nextval, 2, 5, '전시 <빛의벙커 모네, 르누아르, 샤갈>', 5, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'ahsp.png');
insert into product values (seq_prod_no.nextval, 2, 6, '전시 <세계차 엑스포>', 5, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'ck.png');
insert into product values (seq_prod_no.nextval, 2, 7, '전시 <우연히 웨스 앤더슨>', 5, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'awa.png');
insert into product values (seq_prod_no.nextval, 2, 8, '전시 <주술회전>', 5, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'wntnf.png');
insert into product values (seq_prod_no.nextval, 2, 9, '전시 <아트랩 전시회 [OOTD]>', 5, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'ootd.png');
insert into product values (seq_prod_no.nextval, 2, 10, '전시 <유미의 세포들>', 5, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'dbal.png');
insert into product values (seq_prod_no.nextval, 2, 11, '전시 <오토마타와 그림자 놀이>', 5, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'dhxh.png');
insert into product values (seq_prod_no.nextval, 2, 12, '전시 <라스팅 임프레션즈>', 5, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'lasting.png');
insert into product values (seq_prod_no.nextval, 2, 18, '전시 <구하우스 미술관>', 5, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'koo.png');
insert into product values (seq_prod_no.nextval, 2, 19, '전시 <테디베어사파리>', 5, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'xpel.png');
insert into product values (seq_prod_no.nextval, 2, 20, '전시 <안성맞춤 천문과학관>', 5, '2022-05-01', '2022-05-28', '2022-03-15', '2022-05-28', TO_DATE('2022-05-01 19:00', 'YYYY-MM-DD HH24:MI'), 110, 2, '※ 티켓자바 오픈 시스템 작업을 위해 매월 10일 오전 10시 ~ 오전 10시 59분까지 티켓자바 예매페이지의 모든 예매가 일시 마감됩니다.', '취소일자에 따라서 취소수수료가 부과됩니다.예매 일 기준보다 관람일 기준이 우선 적용됩니다. 단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며, 예매 수수료도 환불됩니다.(취소기한 내에 한함)', 1, 'rhkgkr.png');

-----106 레베카----------------------------------------
insert into product
values (seq_prod_no.nextval, 2, 1, '뮤지컬 <레베카>', 1, '2022-03-31', '2022-05-15', '2022-03-28', '2022-05-15', TO_DATE('2022-03-31 17:00', 'YYYY-MM-DD HH24:MI'), 150, 2, '뮤지컬〈레베카〉제작사 EMK뮤지컬컴퍼니 입니다. <br><br>막심役의 민영기 배우가 코로나 의심 증상으로 선제 검사를 진행, 확진 판정을 받아 관련해 캐스팅 변경 안내드립니다. <br><br>사전 예매하신 관객분들께 불편과 심려를 끼쳐 드려 죄송합니다. <br><br>〉4월03일(일) 19시00분 공연<br>막심役 캐스팅 변경 민영기 → 김준현 <br><br>캐스팅 변경과 관련해 각 예매처 고객센터를 통해 4월02일(토) 17시까지 취소 시 수수료 없이 가능합니다. <br>사전 예매하신 분들께 순차적으로 안내 문자 발송 드릴 예정입니다. <br><br>다시 한번 캐스팅 변경으로 인해 불편 드리는 점 사과드립니다.<br>', '<br>취소일자에 따라 아래와 같이 취소수수료가 부과됩니다. 예매일 기준보다 관람일 기준이 우선 적용됩니다.<br>단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며 예매수수료도 환불됩니다. (취소기한 내에 한함)<br><br>예매후 7일 이내 : 취소수수료 없음<br>예매후 8일 ~ 관람일 10일 전 : 뮤지컬/콘서트/클래식 등 공연 장당 4,000원, 연극/전시 등 입장권 장당 2,000원<br>(단, 최대 티켓금액의 10% 이내)<br>관람일 9일 전 ~ 7일 전 : 티켓금액의 10%<br>관람일 6일 전 ~ 3일 전 : 티켓금액의 20%<br>관람일 2일 전 ~ 1일 전 : 티켓금액의 30%<br>공연 취소 시 : 없음', 1, 'rebecca.png');

insert into detail values (seq_detail_no.nextval, 106, 'prod.jpg', 'cast.jpg', 'addd.jpg');

insert into seatprice values (seq_seatprice_no.nextval, 106, 'vip', 150000);
insert into seatprice values (seq_seatprice_no.nextval, 106, 'r', 130000);
insert into seatprice values (seq_seatprice_no.nextval, 106, 's', 110000);
insert into seatprice values (seq_seatprice_no.nextval, 106, 'a', 90000);
insert into seatprice values (seq_seatprice_no.nextval, 106, 'b', 70000);

insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 106, 0, 30, '초중고등학생 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 106, 0, 30, '재관람 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 106, 0, 50, '국가유공자 할인');
insert into discount (dc_no, prod_no, dctype, dcrate, dcname) values(seq_dc_no.nextval, 106, 0, 10, '티켓자바 신규회원 할인');


insert into review values (SEQ_REVIEW_NO.nextval, 106, 3, '재미있게 잘봤습니다. 다음에 재관람 할인으로 또 보러 갈게요', 3, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 106, 4, '재미있게 잘봤습니다. 강추합니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 106, 5, '주차공간이 협소해서 주차하는데만 2시간 걸렸어요. 4점 드립니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 106, 6, '연출이 상당히 인상깊었습니다.', 4, sysdate);
insert into review values (SEQ_REVIEW_NO.nextval, 106, 7, '오랜만에 가족들과 본 공연인데 다들 만족했습니다. 감사합니다', 4, sysdate);
---------------------------------------------------------------


Insert into RESERVE (REZ_NO,PROD_NO,USER_NO,REZDATE,VIEWDATE,PHONE,EMAIL,TOTALPAYMENT,STATUS) values (2,106,3,to_date('22/03/27','RR/MM/DD'),to_date('22/03/31','RR/MM/DD'),'01012347945','2ser0m2@naver.com',40882000,1);
---------------------------------------------------------------

Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (430,2,null,'vip','C',6,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (431,2,null,'vip','C',6,7,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (432,2,null,'r','C',6,8,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (433,2,null,'vip','C',7,1,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (434,2,null,'vip','C',7,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (435,2,null,'vip','C',7,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (436,2,null,'vip','C',7,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (437,2,null,'vip','C',7,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (438,2,null,'vip','C',7,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (439,2,null,'vip','C',7,7,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (440,2,null,'r','C',7,8,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (441,2,null,'vip','C',8,1,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (442,2,null,'vip','C',8,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (443,2,null,'vip','C',8,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (444,2,null,'vip','C',8,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (445,2,null,'vip','C',8,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (446,2,null,'vip','C',8,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (447,2,null,'vip','C',8,7,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (448,2,null,'r','C',8,8,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (449,2,null,'r','C',9,1,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (450,2,null,'r','C',9,2,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (451,2,null,'r','C',9,3,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (452,2,null,'r','C',9,4,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (453,2,null,'r','C',9,5,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (454,2,null,'r','C',9,6,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (455,2,null,'r','C',9,7,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (456,2,null,'r','C',9,8,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (457,2,null,'r','C',10,1,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (458,2,null,'r','C',10,2,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (459,2,null,'r','C',10,3,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (460,2,null,'r','C',10,4,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (461,2,null,'r','C',10,5,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (462,2,null,'r','C',10,6,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (463,2,null,'r','C',10,7,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (464,2,null,'r','C',10,8,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (465,2,null,'s','D',1,7,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (466,2,null,'s','D',1,8,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (467,2,null,'s','D',1,9,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (468,2,null,'s','D',1,10,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (469,2,null,'s','D',2,9,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (470,2,null,'s','D',2,10,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (471,2,null,'r','E',1,1,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (472,2,null,'r','E',1,2,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (473,2,null,'r','E',1,3,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (474,2,null,'r','E',1,4,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (475,2,null,'r','E',1,5,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (476,2,null,'r','E',1,6,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (477,2,null,'r','E',1,7,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (478,2,null,'r','E',1,8,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (479,2,null,'r','E',2,2,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (480,2,null,'r','E',2,3,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (481,2,null,'r','E',2,4,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (482,2,null,'r','E',2,6,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (483,2,null,'r','E',2,7,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (484,2,null,'r','E',2,8,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (485,2,null,'r','E',2,9,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (486,2,null,'r','E',2,10,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (487,2,null,'r','E',2,11,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (488,2,null,'r','E',2,12,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (489,2,null,'r','E',2,13,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (490,2,null,'r','E',3,1,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (491,2,null,'r','E',3,2,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (492,2,null,'r','E',3,3,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (493,2,null,'r','E',3,4,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (494,2,null,'r','E',3,5,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (495,2,null,'r','E',3,6,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (496,2,null,'r','E',3,8,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (497,2,null,'r','E',3,9,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (498,2,null,'r','E',3,10,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (499,2,null,'r','E',3,12,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (500,2,null,'s','E',4,2,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (501,2,null,'s','E',4,5,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (502,2,null,'s','E',4,7,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (503,2,null,'s','E',4,8,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (504,2,null,'s','E',4,10,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (505,2,null,'s','E',4,11,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (506,2,null,'s','E',4,13,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (507,2,null,'s','E',4,14,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (508,2,null,'s','E',4,15,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (509,2,null,'s','E',5,2,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (510,2,null,'s','E',5,9,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (511,2,null,'s','E',5,10,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (512,2,null,'s','E',5,12,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (513,2,null,'s','F',1,1,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (514,2,null,'s','F',1,2,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (515,2,null,'s','F',1,3,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (516,2,null,'s','F',1,4,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (517,2,null,'s','F',2,1,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (518,2,null,'s','F',2,2,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (519,2,null,'s','F',2,3,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (520,2,null,'s','H',1,5,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (521,2,null,'s','H',1,6,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (522,2,null,'s','H',1,7,110000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (235,2,null,'vip','A',1,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (236,2,null,'vip','A',1,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (237,2,null,'vip','A',1,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (238,2,null,'vip','A',2,1,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (239,2,null,'vip','A',2,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (240,2,null,'vip','A',2,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (241,2,null,'vip','A',2,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (242,2,null,'vip','A',2,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (243,2,null,'r','A',3,1,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (244,2,null,'vip','A',3,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (245,2,null,'vip','A',3,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (246,2,null,'vip','A',3,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (247,2,null,'vip','A',3,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (248,2,null,'vip','A',3,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (249,2,null,'vip','A',3,7,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (250,2,null,'r','A',4,1,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (251,2,null,'vip','A',4,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (252,2,null,'vip','A',4,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (253,2,null,'vip','A',4,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (254,2,null,'vip','A',4,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (255,2,null,'vip','A',4,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (256,2,null,'vip','A',4,7,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (257,2,null,'r','A',5,1,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (258,2,null,'vip','A',5,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (259,2,null,'vip','A',5,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (260,2,null,'vip','A',5,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (261,2,null,'vip','A',5,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (262,2,null,'vip','A',5,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (263,2,null,'vip','A',5,7,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (264,2,null,'vip','A',5,8,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (265,2,null,'r','A',6,1,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (266,2,null,'vip','A',6,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (233,2,null,'vip','A',1,1,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (234,2,null,'vip','A',1,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (267,2,null,'vip','A',6,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (268,2,null,'vip','A',6,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (269,2,null,'vip','A',6,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (270,2,null,'vip','A',6,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (271,2,null,'vip','A',6,7,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (272,2,null,'vip','A',6,8,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (273,2,null,'r','A',7,1,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (274,2,null,'vip','A',7,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (275,2,null,'vip','A',7,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (276,2,null,'vip','A',7,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (277,2,null,'vip','A',7,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (278,2,null,'vip','A',7,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (279,2,null,'vip','A',7,7,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (280,2,null,'vip','A',7,8,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (281,2,null,'r','A',8,1,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (282,2,null,'vip','A',8,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (283,2,null,'vip','A',8,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (284,2,null,'vip','A',8,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (285,2,null,'vip','A',8,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (286,2,null,'vip','A',8,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (287,2,null,'vip','A',8,7,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (288,2,null,'vip','A',8,8,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (289,2,null,'r','A',9,1,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (290,2,null,'r','A',9,2,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (291,2,null,'r','A',9,3,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (292,2,null,'r','A',9,4,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (293,2,null,'r','A',9,5,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (294,2,null,'r','A',9,6,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (295,2,null,'r','A',9,7,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (296,2,null,'r','A',9,8,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (297,2,null,'r','A',10,1,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (298,2,null,'r','A',10,2,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (299,2,null,'r','A',10,3,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (300,2,null,'r','A',10,4,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (301,2,null,'r','A',10,5,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (302,2,null,'r','A',10,6,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (303,2,null,'r','A',10,7,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (304,2,null,'r','A',10,8,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (305,2,null,'vip','B',1,1,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (306,2,null,'vip','B',1,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (307,2,null,'vip','B',1,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (308,2,null,'vip','B',1,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (309,2,null,'vip','B',1,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (310,2,null,'vip','B',1,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (311,2,null,'vip','B',1,7,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (312,2,null,'vip','B',1,8,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (313,2,null,'vip','B',1,9,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (314,2,null,'vip','B',2,1,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (315,2,null,'vip','B',2,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (316,2,null,'vip','B',2,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (317,2,null,'vip','B',2,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (318,2,null,'vip','B',2,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (319,2,null,'vip','B',2,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (320,2,null,'vip','B',2,7,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (321,2,null,'vip','B',2,8,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (322,2,null,'vip','B',2,9,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (323,2,null,'vip','B',3,1,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (324,2,null,'vip','B',3,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (325,2,null,'vip','B',3,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (326,2,null,'vip','B',3,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (327,2,null,'vip','B',3,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (328,2,null,'vip','B',3,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (329,2,null,'vip','B',3,7,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (330,2,null,'vip','B',3,8,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (331,2,null,'vip','B',3,9,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (332,2,null,'vip','B',4,1,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (333,2,null,'vip','B',4,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (334,2,null,'vip','B',4,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (335,2,null,'vip','B',4,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (336,2,null,'vip','B',4,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (337,2,null,'vip','B',4,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (338,2,null,'vip','B',4,7,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (339,2,null,'vip','B',4,8,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (340,2,null,'vip','B',4,9,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (341,2,null,'vip','B',5,1,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (342,2,null,'vip','B',5,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (343,2,null,'vip','B',5,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (344,2,null,'vip','B',5,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (345,2,null,'vip','B',5,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (346,2,null,'vip','B',5,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (347,2,null,'vip','B',5,7,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (348,2,null,'vip','B',5,8,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (349,2,null,'vip','B',5,9,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (350,2,null,'vip','B',6,1,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (351,2,null,'vip','B',6,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (352,2,null,'vip','B',6,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (353,2,null,'vip','B',6,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (354,2,null,'vip','B',6,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (355,2,null,'vip','B',6,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (356,2,null,'vip','B',6,7,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (357,2,null,'vip','B',6,8,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (358,2,null,'vip','B',6,9,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (359,2,null,'vip','B',7,1,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (360,2,null,'vip','B',7,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (361,2,null,'vip','B',7,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (362,2,null,'vip','B',7,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (363,2,null,'vip','B',7,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (364,2,null,'vip','B',7,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (365,2,null,'vip','B',7,7,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (366,2,null,'vip','B',7,8,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (367,2,null,'vip','B',7,9,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (368,2,null,'vip','B',8,1,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (369,2,null,'vip','B',8,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (370,2,null,'vip','B',8,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (371,2,null,'vip','B',8,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (372,2,null,'vip','B',8,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (373,2,null,'vip','B',8,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (374,2,null,'vip','B',8,7,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (375,2,null,'vip','B',8,8,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (376,2,null,'vip','B',8,9,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (377,2,null,'vip','B',9,1,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (378,2,null,'vip','B',9,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (379,2,null,'vip','B',9,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (380,2,null,'vip','B',9,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (381,2,null,'vip','B',9,7,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (382,2,null,'vip','B',9,8,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (383,2,null,'vip','B',9,9,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (384,2,null,'vip','B',10,1,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (385,2,null,'vip','B',10,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (386,2,null,'vip','B',10,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (387,2,null,'vip','B',10,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (388,2,null,'vip','B',10,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (389,2,null,'vip','B',10,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (390,2,null,'vip','B',10,7,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (391,2,null,'vip','B',10,8,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (392,2,null,'vip','B',10,9,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (393,2,null,'vip','C',1,1,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (394,2,null,'vip','C',1,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (395,2,null,'vip','C',1,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (396,2,null,'vip','C',1,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (397,2,null,'vip','C',1,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (398,2,null,'vip','C',2,1,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (399,2,null,'vip','C',2,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (400,2,null,'vip','C',2,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (401,2,null,'vip','C',2,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (402,2,null,'vip','C',2,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (403,2,null,'vip','C',3,1,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (404,2,null,'vip','C',3,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (405,2,null,'vip','C',3,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (406,2,null,'vip','C',3,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (407,2,null,'vip','C',3,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (408,2,null,'vip','C',3,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (409,2,null,'r','C',3,7,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (410,2,null,'vip','C',4,1,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (411,2,null,'vip','C',4,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (412,2,null,'vip','C',4,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (413,2,null,'vip','C',4,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (414,2,null,'vip','C',4,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (415,2,null,'vip','C',4,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (416,2,null,'r','C',4,7,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (417,2,null,'vip','C',5,1,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (418,2,null,'vip','C',5,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (419,2,null,'vip','C',5,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (420,2,null,'vip','C',5,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (421,2,null,'vip','C',5,5,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (422,2,null,'vip','C',5,6,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (423,2,null,'vip','C',5,7,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (424,2,null,'r','C',5,8,130000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (425,2,null,'vip','C',6,1,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (426,2,null,'vip','C',6,2,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (427,2,null,'vip','C',6,3,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (428,2,null,'vip','C',6,4,150000,1,to_date('22/03/27','RR/MM/DD'));
Insert into SELSEAT (SELSEAT_NO,REZ_NO,DC_NO,GRADE,SECTION,COL,NUM,PAYMENT,STATUS,PRETIME) values (429,2,null,'vip','C',6,5,150000,1,to_date('22/03/27','RR/MM/DD'));

---------------------------------------------------------------
commit;