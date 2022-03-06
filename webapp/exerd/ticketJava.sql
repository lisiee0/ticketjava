/* users 테이블 *********************************************************************/ 


/* 회원 */
DROP TABLE users 
	CASCADE CONSTRAINTS;

/* 회원 */
CREATE TABLE users (
	user_no NUMBER NOT NULL, /* 회원번호 */
	id VARCHAR2(40), /* 아이디 */
	password VARCHAR2(40), /* 비밀번호 */
	name VARCHAR2(20), /* 이름 */
	phone VARCHAR2(30), /* 전화번호 */
	postcode VARCHAR2(20), /* 우편번호 */
	address VARCHAR2(100), /* 주소 */
	address2 VARCHAR2(50), /* 상세주소 */
	email VARCHAR2(50), /* 이메일 */
	usertype NUMBER, /* 회원구분 */
	joindate DATE, /* 가입일 */
	bizno VARCHAR2(40), /* 사업자등록번호 */
	salt VARCHAR2(40) /* salt */
);

COMMENT ON TABLE users IS '회원';

COMMENT ON COLUMN users.user_no IS '회원번호';

COMMENT ON COLUMN users.id IS '아이디';

COMMENT ON COLUMN users.password IS '비밀번호';

COMMENT ON COLUMN users.name IS '이름';

COMMENT ON COLUMN users.phone IS '전화번호';

COMMENT ON COLUMN users.postcode IS '우편번호';

COMMENT ON COLUMN users.address IS '주소';

COMMENT ON COLUMN users.address2 IS '상세주소';

COMMENT ON COLUMN users.email IS '이메일';

COMMENT ON COLUMN users.usertype IS '회원구분';

COMMENT ON COLUMN users.joindate IS '가입일';

COMMENT ON COLUMN users.bizno IS '사업자등록번호';

COMMENT ON COLUMN users.salt IS 'salt';


ALTER TABLE users
	ADD
		CONSTRAINT PK_users
		PRIMARY KEY (
			user_no
		);
		
		
		
		
/* theater 테이블 *********************************************************************/
		

/* 공연장 */
DROP TABLE theater 
	CASCADE CONSTRAINTS;

/* 공연장 */
CREATE TABLE theater (
	theater_no NUMBER NOT NULL, /* 공연장번호 */
	theatername VARCHAR2(50), /* 공연장명 */
	postcode VARCHAR2(20), /* 우편번호 */
	address VARCHAR2(100), /* 주소 */
	address2 VARCHAR2(50), /* 상세주소 */
	latitude VARCHAR2(50), /* 위도 */
	longitude VARCHAR2(50), /* 경도 */
	phone VARCHAR2(40), /* 대표번호 */
	homepage VARCHAR2(100), /* 홈페이지주소 */
	logopath VARCHAR2(100) /* 공연장사진(이미지) */
);

COMMENT ON TABLE theater IS '공연장';

COMMENT ON COLUMN theater.theater_no IS '공연장번호';

COMMENT ON COLUMN theater.theatername IS '공연장명';

COMMENT ON COLUMN theater.postcode IS '우편번호';

COMMENT ON COLUMN theater.address IS '주소';

COMMENT ON COLUMN theater.address2 IS '상세주소';

COMMENT ON COLUMN theater.latitude IS '위도';

COMMENT ON COLUMN theater.longitude IS '경도';

COMMENT ON COLUMN theater.phone IS '대표번호';

COMMENT ON COLUMN theater.homepage IS '홈페이지주소';

COMMENT ON COLUMN theater.logopath IS '공연장사진(이미지)';


ALTER TABLE theater
	ADD
		CONSTRAINT PK_theater
		PRIMARY KEY (
			theater_no
		);

		
/* hall 테이블 *********************************************************************/		
		

/* 시설 */
DROP TABLE hall 
	CASCADE CONSTRAINTS;

/* 시설 */
CREATE TABLE hall (
	hall_no NUMBER NOT NULL, /* 시설번호 */
	theater_no NUMBER, /* 공연장번호 */
	hallname VARCHAR2(50) /* 시설명 */
);

COMMENT ON TABLE hall IS '시설';

COMMENT ON COLUMN hall.hall_no IS '시설번호';

COMMENT ON COLUMN hall.theater_no IS '공연장번호';

COMMENT ON COLUMN hall.hallname IS '시설명';


ALTER TABLE hall
	ADD
		CONSTRAINT PK_hall
		PRIMARY KEY (
			hall_no
		);

ALTER TABLE hall
	ADD
		CONSTRAINT FK_theater_TO_hall
		FOREIGN KEY (
			theater_no
		)
		REFERENCES theater (
			theater_no
		);

/* seat 테이블 *********************************************************************/		
		

/* 좌석 */
DROP TABLE seat 
	CASCADE CONSTRAINTS;

/* 좌석 */
CREATE TABLE seat (
	seat_no NUMBER NOT NULL, /* 좌석번호 */
	hall_no NUMBER, /* 시설번호 */
	grade VARCHAR2(10), /* 등급 */
	section VARCHAR2(10), /* 구역 */
	col NUMBER, /* 열 */
	num NUMBER, /* 번호 */
	status NUMBER /* 상태(사용중) */
);

COMMENT ON TABLE seat IS '좌석';

COMMENT ON COLUMN seat.seat_no IS '좌석번호';

COMMENT ON COLUMN seat.hall_no IS '시설번호';

COMMENT ON COLUMN seat.grade IS '등급';

COMMENT ON COLUMN seat.section IS '구역';

COMMENT ON COLUMN seat.col IS '열';

COMMENT ON COLUMN seat.num IS '번호';

COMMENT ON COLUMN seat.status IS '상태(사용중)';


ALTER TABLE seat
	ADD
		CONSTRAINT PK_seat
		PRIMARY KEY (
			seat_no
		);

ALTER TABLE seat
	ADD
		CONSTRAINT FK_hall_TO_seat
		FOREIGN KEY (
			hall_no
		)
		REFERENCES hall (
			hall_no
		);


/* product 테이블 *********************************************************************/
		

/* 공연 */
DROP TABLE product 
	CASCADE CONSTRAINTS;

/* 공연 */
CREATE TABLE product (
	prod_no NUMBER NOT NULL, /* 공연번호 */
	user_no NUMBER, /* 회원번호(사업자) */
	hall_no NUMBER, /* 시설번호 */
	prodname VARCHAR2(50), /* 공연명 */
	prodtype NUMBER, /* 공연구분 */
	beginshow DATE, /* 공연기간(시작) */
	endshow DATE, /* 공연기간(종료) */
	beginrez DATE, /* 예매기간(시작) */
	endrez DATE, /* 예매기간(종료) */
	showtime DATE, /* 공연 시작시간 */
	viewtime NUMBER, /* 관람 시간 */
	viewgrade NUMBER, /* 관람 등급 */
	notice VARCHAR2(500), /* 공지사항 */
	cancelinfo VARCHAR2(500), /* 예매/취소 안내 */
	status NUMBER, /* 노출 여부 */
	posterpath VARCHAR2(100) /* 포스터이미지경로 */
);

COMMENT ON TABLE product IS '공연';

COMMENT ON COLUMN product.prod_no IS '공연번호';

COMMENT ON COLUMN product.user_no IS '회원번호(사업자)';

COMMENT ON COLUMN product.hall_no IS '시설번호';

COMMENT ON COLUMN product.prodname IS '공연명';

COMMENT ON COLUMN product.prodtype IS '공연구분';

COMMENT ON COLUMN product.beginshow IS '공연기간(시작)';

COMMENT ON COLUMN product.endshow IS '공연기간(종료)';

COMMENT ON COLUMN product.beginrez IS '예매기간(시작)';

COMMENT ON COLUMN product.endrez IS '예매기간(종료)';

COMMENT ON COLUMN product.showtime IS '공연 시작시간';

COMMENT ON COLUMN product.viewtime IS '관람 시간';

COMMENT ON COLUMN product.viewgrade IS '관람 등급';

COMMENT ON COLUMN product.notice IS '공지사항';

COMMENT ON COLUMN product.cancelinfo IS '예매/취소 안내';

COMMENT ON COLUMN product.status IS '노출 여부';

COMMENT ON COLUMN product.posterpath IS '포스터이미지경로';


ALTER TABLE product
	ADD
		CONSTRAINT PK_product
		PRIMARY KEY (
			prod_no
		);

ALTER TABLE product
	ADD
		CONSTRAINT FK_users_TO_product
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE product
	ADD
		CONSTRAINT FK_hall_TO_product
		FOREIGN KEY (
			hall_no
		)
		REFERENCES hall (
			hall_no
		);	
		
/* reserve 테이블 *********************************************************************/
	

/* 예매내역 */
DROP TABLE reserve 
	CASCADE CONSTRAINTS;

/* 예매내역 */
CREATE TABLE reserve (
	rez_no NUMBER NOT NULL, /* 예매번호 */
	prod_no NUMBER, /* 공연번호 */
	user_no NUMBER, /* 회원번호 */
	rezdate DATE, /* 예매일 */
	viewdate DATE, /* 관람일 */
	phone VARCHAR2(40), /* 휴대폰번호 */
	email VARCHAR2(100), /* 이메일 */
	status NUMBER /* 상태 (예매 or 취소) */
);

COMMENT ON TABLE reserve IS '예매내역';

COMMENT ON COLUMN reserve.rez_no IS '예매번호';

COMMENT ON COLUMN reserve.prod_no IS '공연번호';

COMMENT ON COLUMN reserve.user_no IS '회원번호';

COMMENT ON COLUMN reserve.rezdate IS '예매일';

COMMENT ON COLUMN reserve.viewdate IS '관람일';

COMMENT ON COLUMN reserve.phone IS '휴대폰번호';

COMMENT ON COLUMN reserve.email IS '이메일';

COMMENT ON COLUMN reserve.status IS '상태 (예매 or 취소)';


ALTER TABLE reserve
	ADD
		CONSTRAINT PK_reserve
		PRIMARY KEY (
			rez_no
		);

ALTER TABLE reserve
	ADD
		CONSTRAINT FK_product_TO_reserve
		FOREIGN KEY (
			prod_no
		)
		REFERENCES product (
			prod_no
		);

ALTER TABLE reserve
	ADD
		CONSTRAINT FK_users_TO_reserve
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);
		
		
/* discount 테이블 *********************************************************************/
		

/* 공연별 할인 (기본할인 + 기간 할인) */
DROP TABLE discount 
	CASCADE CONSTRAINTS;

/* 공연별 할인 (기본할인 + 기간 할인) */
CREATE TABLE discount (
	dc_no NUMBER NOT NULL, /* 할인 번호 */
	prod_no NUMBER NOT NULL, /* 공연번호 */
	dcname VARCHAR(30), /* 할인설명 */
	begindc DATE, /* 할인시작일 */
	enddc DATE, /* 할인종료일 */
	dcrate NUMBER, /* 할인율 */
	dctype NUMBER /* 할인구분(% 또는 원) */
);

COMMENT ON TABLE discount IS '공연별 할인 (기본할인 + 기간 할인)';

COMMENT ON COLUMN discount.dc_no IS '할인 번호';

COMMENT ON COLUMN discount.prod_no IS '공연번호';

COMMENT ON COLUMN discount.dcname IS '할인설명';

COMMENT ON COLUMN discount.begindc IS '할인시작일';

COMMENT ON COLUMN discount.enddc IS '할인종료일';

COMMENT ON COLUMN discount.dcrate IS '할인율';

COMMENT ON COLUMN discount.dctype IS '할인구분(% 또는 원)';


ALTER TABLE discount
	ADD
		CONSTRAINT PK_discount
		PRIMARY KEY (
			dc_no
		);

ALTER TABLE discount
	ADD
		CONSTRAINT FK_product_TO_discount
		FOREIGN KEY (
			prod_no
		)
		REFERENCES product (
			prod_no
		);
		
		
/* review 테이블 *********************************************************************/
		

/* 후기 */
DROP TABLE review 
	CASCADE CONSTRAINTS;

/* 후기 */
CREATE TABLE review (
	review_no NUMBER NOT NULL, /* 후기번호 */
	prod_no NUMBER, /* 공연번호 */
	user_no NUMBER, /* 회원번호 */
	content VARCHAR2(300), /* 내용 */
	rating NUMBER, /* 평점 */
	regdate DATE /* 작성일 */
);

COMMENT ON TABLE review IS '후기';

COMMENT ON COLUMN review.review_no IS '후기번호';

COMMENT ON COLUMN review.prod_no IS '공연번호';

COMMENT ON COLUMN review.user_no IS '회원번호';

COMMENT ON COLUMN review.content IS '내용';

COMMENT ON COLUMN review.rating IS '평점';

COMMENT ON COLUMN review.regdate IS '작성일';


ALTER TABLE review
	ADD
		CONSTRAINT PK_review
		PRIMARY KEY (
			review_no
		);

ALTER TABLE review
	ADD
		CONSTRAINT FK_product_TO_review
		FOREIGN KEY (
			prod_no
		)
		REFERENCES product (
			prod_no
		);

ALTER TABLE review
	ADD
		CONSTRAINT FK_users_TO_review
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);
		
		
/* authmail 테이블 *********************************************************************/		
		

/* 메일 인증번호 */
DROP TABLE authmail 
	CASCADE CONSTRAINTS;

/* 메일 인증번호 */
CREATE TABLE authmail (
	auth_no NUMBER NOT NULL, /* auth_no */
	user_no NUMBER, /* 회원번호 */
	authkey VARCHAR2(10), /* 인증번호 */
	authtype NUMBER /* 인증종류 */
);

COMMENT ON TABLE authmail IS '메일 인증번호';

COMMENT ON COLUMN authmail.auth_no IS 'auth_no';

COMMENT ON COLUMN authmail.user_no IS '회원번호';

COMMENT ON COLUMN authmail.authkey IS '인증번호';

COMMENT ON COLUMN authmail.authtype IS '인증종류';


ALTER TABLE authmail
	ADD
		CONSTRAINT PK_authmail
		PRIMARY KEY (
			auth_no
		);

ALTER TABLE authmail
	ADD
		CONSTRAINT FK_users_TO_authmail
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);
		
		
		
/* noti 테이블 *********************************************************************/	


/* 취소 알림 리스트 */
DROP TABLE noti 
	CASCADE CONSTRAINTS;

/* 취소 알림 리스트 */
CREATE TABLE noti (
	noti_no NUMBER NOT NULL, /* 알림 번호 */
	user_no NUMBER, /* 회원번호 */
	content VARCHAR2(100), /* 알림 내용 */
	notitime DATE /* 알림 시간 */
);

COMMENT ON TABLE noti IS '취소 알림 리스트';

COMMENT ON COLUMN noti.noti_no IS '알림 번호';

COMMENT ON COLUMN noti.user_no IS '회원번호';

COMMENT ON COLUMN noti.content IS '알림 내용';

COMMENT ON COLUMN noti.notitime IS '알림 시간';


ALTER TABLE noti
	ADD
		CONSTRAINT PK_noti
		PRIMARY KEY (
			noti_no
		);

ALTER TABLE noti
	ADD
		CONSTRAINT FK_users_TO_noti
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);
		
		

/* qna 테이블 *********************************************************************/	
		

/* 상품문의 */
DROP TABLE qna 
	CASCADE CONSTRAINTS;

/* 상품문의 */
CREATE TABLE qna (
	qna_no NUMBER NOT NULL, /* 문의번호 */
	prod_no NUMBER, /* 공연번호 */
	user_no NUMBER, /* 회원번호 */
	qna_gno NUMBER, /* 문의 그룹번호 */
	content VARCHAR2(300), /* 내용 */
	regdate DATE /* 작성일 */
);

COMMENT ON TABLE qna IS '상품문의';

COMMENT ON COLUMN qna.qna_no IS '문의번호';

COMMENT ON COLUMN qna.prod_no IS '공연번호';

COMMENT ON COLUMN qna.user_no IS '회원번호';

COMMENT ON COLUMN qna.qna_gno IS '문의 그룹번호';

COMMENT ON COLUMN qna.content IS '내용';

COMMENT ON COLUMN qna.regdate IS '작성일';


ALTER TABLE qna
	ADD
		CONSTRAINT PK_qna
		PRIMARY KEY (
			qna_no
		);

ALTER TABLE qna
	ADD
		CONSTRAINT FK_product_TO_qna
		FOREIGN KEY (
			prod_no
		)
		REFERENCES product (
			prod_no
		);

ALTER TABLE qna
	ADD
		CONSTRAINT FK_users_TO_qna
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);
		
		
		

		
		
		
/* notice 테이블 *********************************************************************/		
		

/* 공지사항 */
DROP TABLE notice 
	CASCADE CONSTRAINTS;

/* 공지사항 */
CREATE TABLE notice (
	notice_no NUMBER NOT NULL, /* 공지사항번호 */
	theater_no NUMBER, /* 공연장번호 */
	content VARCHAR2(100), /* 내용 */
	regdate DATE /* 작성일 */
);

COMMENT ON TABLE notice IS '공지사항';

COMMENT ON COLUMN notice.notice_no IS '공지사항번호';

COMMENT ON COLUMN notice.theater_no IS '공연장번호';

COMMENT ON COLUMN notice.content IS '내용';

COMMENT ON COLUMN notice.regdate IS '작성일';


ALTER TABLE notice
	ADD
		CONSTRAINT PK_notice
		PRIMARY KEY (
			notice_no
		);

ALTER TABLE notice
	ADD
		CONSTRAINT FK_theater_TO_notice
		FOREIGN KEY (
			theater_no
		)
		REFERENCES theater (
			theater_no
		);
		
		
		
/* notireq 테이블 *********************************************************************/		
		

/* 취소알림 신청내역 */
DROP TABLE notireq 
	CASCADE CONSTRAINTS;

/* 취소알림 신청내역 */
CREATE TABLE notireq (
	req_no NUMBER NOT NULL, /* 신청 번호 */
	user_no NUMBER, /* 회원번호 */
	prod_no NUMBER, /* 공연번호 */
	viewdate DATE, /* 관람일 */
	selsection NUMBER, /* 선택구역 */
	interval NUMBER, /* 알림간격 */
	notitimes NUMBER, /* 알림횟수 */
	reqdate DATE, /* 신청일 */
	status NUMBER /* 알림여부(마이페이지) */
);

COMMENT ON TABLE notireq IS '취소알림 신청내역';

COMMENT ON COLUMN notireq.req_no IS '신청 번호';

COMMENT ON COLUMN notireq.user_no IS '회원번호';

COMMENT ON COLUMN notireq.prod_no IS '공연번호';

COMMENT ON COLUMN notireq.viewdate IS '관람일';

COMMENT ON COLUMN notireq.selsection IS '선택구역';

COMMENT ON COLUMN notireq.interval IS '알림간격';

COMMENT ON COLUMN notireq.notitimes IS '알림횟수';

COMMENT ON COLUMN notireq.reqdate IS '신청일';

COMMENT ON COLUMN notireq.status IS '알림여부(마이페이지)';


ALTER TABLE notireq
	ADD
		CONSTRAINT PK_notireq
		PRIMARY KEY (
			req_no
		);

ALTER TABLE notireq
	ADD
		CONSTRAINT FK_users_TO_notireq
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE notireq
	ADD
		CONSTRAINT FK_product_TO_notireq
		FOREIGN KEY (
			prod_no
		)
		REFERENCES product (
			prod_no
		);
		
		
		
/* selseat 테이블 *********************************************************************/		
		

/* 예매내역별 선택 좌석 */
DROP TABLE selseat 
	CASCADE CONSTRAINTS;

/* 예매내역별 선택 좌석 */
CREATE TABLE selseat (
	selseat_no NUMBER NOT NULL, /* 선택좌석 번호 */
	rez_no NUMBER NOT NULL, /* 예매번호 */
	dc_no NUMBER, /* 할인 번호 */
	grade VARCHAR2(10), /* 좌석등급 */
	section VARCHAR2(10), /* 구역 */
	col NUMBER, /* 열 */
	num NUMBER, /* 번호 */
	payment NUMBER, /* 결제금액 */
	status NUMBER, /* 상태 */
	pretime date /* 선점시간 */
);

COMMENT ON TABLE selseat IS '예매내역별 선택 좌석';

COMMENT ON COLUMN selseat.selseat_no IS '선택좌석 번호';

COMMENT ON COLUMN selseat.rez_no IS '예매번호';

COMMENT ON COLUMN selseat.dc_no IS '할인 번호';

COMMENT ON COLUMN selseat.` IS '좌석등급';

COMMENT ON COLUMN selseat.section IS '구역';

COMMENT ON COLUMN selseat.col IS '열';

COMMENT ON COLUMN selseat.num IS '번호';

COMMENT ON COLUMN selseat.payment IS '결제금액';

COMMENT ON COLUMN selseat.status IS '상태';


ALTER TABLE selseat
	ADD
		CONSTRAINT PK_selseat
		PRIMARY KEY (
			selseat_no
		);

ALTER TABLE selseat
	ADD
		CONSTRAINT FK_reserve_TO_selseat
		FOREIGN KEY (
			rez_no
		)
		REFERENCES reserve (
			rez_no
		);

ALTER TABLE selseat
	ADD
		CONSTRAINT FK_discount_TO_selseat
		FOREIGN KEY (
			dc_no
		)
		REFERENCES discount (
			dc_no
		);
		
		

/* detail 테이블 *********************************************************************/		
		

/* 공연 상세정보(이미지) */
DROP TABLE detail 
	CASCADE CONSTRAINTS;

/* 공연 상세정보(이미지) */
CREATE TABLE detail (
	detail_no NUMBER NOT NULL, /* 상세정보 번호 */
	prod_no NUMBER, /* 공연번호 */
	prodpath VARCHAR2(100), /* 공연정보 */
	castingpath VARCHAR2(100), /* 캐스팅정보 */
	addedpath VARCHAR2(100) /* 부가정보 */
);

COMMENT ON TABLE detail IS '공연 상세정보(이미지)';

COMMENT ON COLUMN detail.detail_no IS '상세정보 번호';

COMMENT ON COLUMN detail.prod_no IS '공연번호';

COMMENT ON COLUMN detail.prodpath IS '공연정보';

COMMENT ON COLUMN detail.castingpath IS '캐스팅정보';

COMMENT ON COLUMN detail.addedpath IS '부가정보';


ALTER TABLE detail
	ADD
		CONSTRAINT PK_detail
		PRIMARY KEY (
			detail_no
		);

ALTER TABLE detail
	ADD
		CONSTRAINT FK_product_TO_detail
		FOREIGN KEY (
			prod_no
		)
		REFERENCES product (
			prod_no
		);
		
		
		
/* seatprice 테이블 *********************************************************************/		
		

/* 좌석 등급별 가격 */
DROP TABLE seatprice 
	CASCADE CONSTRAINTS;

/* 좌석 등급별 가격 */
CREATE TABLE seatprice (
	seatprice_no NUMBER NOT NULL, /* 등급별가격 번호 */
	prod_no NUMBER NOT NULL, /* 공연번호 */
	grade varchar2(10), /* 좌석등급 */
	price NUMBER /* 가격 */
);

COMMENT ON TABLE seatprice IS '좌석 등급별 가격';

COMMENT ON COLUMN seatprice.seatprice_no IS '등급별가격 번호';

COMMENT ON COLUMN seatprice.prod_no IS '공연번호';

COMMENT ON COLUMN seatprice.grade IS '좌석등급';

COMMENT ON COLUMN seatprice.price IS '가격';


ALTER TABLE seatprice
	ADD
		CONSTRAINT PK_seatprice
		PRIMARY KEY (
			seatprice_no
		);

ALTER TABLE seatprice
	ADD
		CONSTRAINT FK_product_TO_seatprice
		FOREIGN KEY (
			prod_no
		)
		REFERENCES product (
			prod_no
		);		
		
		