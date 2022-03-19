package com.ticketjava.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ticketjava.service.ProductService;
import com.ticketjava.service.ReviewService;
import com.ticketjava.service.UserService;
import com.ticketjava.vo.ReviewVo;
import com.ticketjava.vo.TheaterVo;
import com.ticketjava.vo.UserVo;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ReviewService reviewService;
	
	// prodType별 상품 리스트 불러오기
	@RequestMapping("/type")
	public String musical(@RequestParam(value="crtPage", required= false, defaultValue= "1") int crtPage,
						  @RequestParam("prodType") int prodType, Model model) {
		
		model.addAttribute("type", productService.typeList(prodType, crtPage));
		return "product/pList";
	}
	
	// sports 상품 리스트
	@RequestMapping("/sports")
	public String sports(@RequestParam(value="crtPage", required= false, defaultValue= "1") int crtPage,
						 @RequestParam("prodType") int prodType, Model model) {
		
		model.addAttribute("type", productService.typeList(prodType, crtPage));
		return "product/pListbySports";
	}
	
	
	// '공연장'페이지  (공연장 & 공지사항 리스트)
	@RequestMapping("/theaterList")
	public String theaterList(@RequestParam(value="crtPage", required= false, defaultValue= "1") int crtPage,
							  Model model) {
		
		model.addAttribute("listMap", productService.getList(crtPage));
		return "product/theater";
	}
	
	
	// 공연장별 리스트
	@RequestMapping("/listbyTheater")
	public String listbyTheater(@ModelAttribute TheaterVo vo, Model model) {
		
		model.addAttribute("map", productService.getTheater(vo));
		return "product/pListbyTheater";
	}
	
	
	// 상품 상세보기
	@RequestMapping("/info")
	public String productInfo(@RequestParam("prodNo") int prodNo, Model model, HttpSession session, @ModelAttribute UserVo userVo) {
		
		model.addAttribute("product", productService.getProduct(prodNo));

//		리뷰 리스트를 가져오기
		List<ReviewVo> reviewList = reviewService.getReviewListProduct(prodNo);
		model.addAttribute("reviewList",reviewList);

		return "product/productInfo";
	}
	
	
//	상품 상세보기 후기(리뷰) 작성
	@RequestMapping("/writeReview")
	public String writeReview (ReviewVo reviewVo,
			@RequestParam(value="prodNo")int prodNo, 
			@RequestParam(value="userNo")int userNo,
			@RequestParam(value="rating")int rating,
			@RequestParam(value="content")String content) {
		System.out.println("프로덕컨트롤러 reviewVo "+reviewVo);
		reviewService.writeReview(reviewVo);
		return "redirect:/product/productInfo";
	}
	
	
	// 상품 검색하기
	@RequestMapping("/search")
	public String search(@RequestParam(value="crtPage", required= false, defaultValue= "1") int crtPage,
						 @RequestParam("keyword") String key, Model model) {

		model.addAttribute("result", productService.searchResult(key, crtPage));
		return "product/productSearch";
	}
	
	// '지역' 페이지 
	@RequestMapping("/region")
	public String region(@RequestParam(value="crtPage", required= false, defaultValue= "1") int crtPage,
						 @RequestParam("cateNo") int no, Model model) {

		model.addAttribute("allprod", productService.allprod(no, crtPage));
		return "product/pListbyRegion";
	}
	
	// '랭킹' 페이지
	@RequestMapping("/ranking")
	public String ranking(Model model) {

		model.addAttribute("rank", productService.ranking());
		return "product/pListbyRanking";
	}
	
	
}
