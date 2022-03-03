/* ticketjavaSeqQueryOnly SQL 티켓자바 시퀀스 sql 쿼리 모음 */ 

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



--자동생성 번호, 시퀀스 조회 (서버내 모든 대상)
SELECT * FROM USER_SEQUENCES;


--자동생성 번호 꼬일때 초기화 (리셋)
drop SEQUENCE seq_user_no;
drop SEQUENCE seq_theater_no;
drop SEQUENCE seq_hall_no;
drop SEQUENCE seq_seat_no;
drop SEQUENCE seq_prod_no;
drop SEQUENCE seq_rez_no;
drop SEQUENCE seq_dc_no;
drop SEQUENCE seq_review_no;
drop SEQUENCE seq_auth_no;
drop SEQUENCE seq_noti_no;
drop SEQUENCE seq_qna_no;
drop SEQUENCE seq_qna_gno;
drop SEQUENCE seq_notice_no;
drop SEQUENCE seq_req_no;
drop SEQUENCE seq_selseat_no;
drop SEQUENCE seq_detail_no;
drop SEQUENCE seq_seatprice_no;


--커밋 
commit;

--롤백
rollback;


/* 티켓자바 모든 no 
user_no
theater_no
hall_no
seat_no
prod_no 
rez_no
dc_no
review_no
auth_no
noti_no
qna_no
qna_gno
notice_no
req_no
selseat_no
detail_no 
seatprice_no 
*/
	
	
	