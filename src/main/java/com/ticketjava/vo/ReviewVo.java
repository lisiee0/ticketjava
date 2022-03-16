package com.ticketjava.vo;

import java.util.List;

public class ReviewVo {


	private int reviewNo; // 후기번호
    private int prodNo; // 공연번호
    private int userNo; // 회원번호
    private int rating; // 평점 10점만점
    private String content; // 내용
    private String prodName; // 공연이름
    private String regDate; // 작성일
    
    
	public ReviewVo() {
	}
	
	
	public ReviewVo(int reviewNo, int prodNo, int userNo, int rating, String content, String prodName, String regDate) {
		this.reviewNo = reviewNo;
		this.prodNo = prodNo;
		this.userNo = userNo;
		this.rating = rating;
		this.content = content;
		this.prodName = prodName;
		this.regDate = regDate;
	}
	
	
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public int getProdNo() {
		return prodNo;
	}
	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "ReviewVo [reviewNo=" + reviewNo + ", prodNo=" + prodNo + ", userNo=" + userNo + ", rating=" + rating
				+ ", content=" + content + ", prodName=" + prodName + ", regDate=" + regDate + "]";
	}
    

	
	
} // The end of ReviewVo
