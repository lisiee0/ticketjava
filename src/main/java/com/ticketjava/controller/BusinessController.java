package com.ticketjava.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ticketjava.service.BusinessService;
import com.ticketjava.vo.ProductVo;

@Controller
@RequestMapping("/bm")
public class BusinessController {

	@Autowired
	BusinessService businessService;

	// 공연 목록 불러오기
	@RequestMapping(value = "/", method = { RequestMethod.GET, RequestMethod.POST })
	public String bmInquiry(Model model) {
		System.out.println("BusinessController/bmInquiry");

		List<ProductVo> productList = businessService.getProductList();
		model.addAttribute("productList", productList);
		return "business/bmInquiry";
	}

	// 공연 등록 폼
	@RequestMapping(value = "bmForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String bmForm() {
		System.out.println("BusinessController/form()");

		return "business/bmForm";
	}

	// 공연 업로드
	@ResponseBody
	@RequestMapping(value = "bmUpload", method = { RequestMethod.GET, RequestMethod.POST })
	public int productUpload(@RequestBody ProductVo productVo) {
		System.out.println("BusinessController/bmUpload");
		System.out.println(productVo);

		return 21;
	}

	// 공연 파일업로드
	@RequestMapping(value = "bmfileUplad", method = { RequestMethod.GET, RequestMethod.POST })
	public String productFileUpload(@RequestParam("prodNo") int prodNo, MultipartFile file, int order) {
		System.out.println("BusinessController/bmfileUplad");
		System.out.println(prodNo);
		System.out.println(order);
		System.out.println(file.getOriginalFilename());
		

		return "business/bmInquiry";
	}

	// 공연 업로드
//	*
//	@RequestMapping(value = "bmUpload", method = { RequestMethod.GET, RequestMethod.POST })
//	public String bmUpload(@RequestParam("file") MultipartFile[] file,
//						@ModelAttribute ProductVo productVo,
//						@ModelAttribute DetailVo detailVo,
//						@ModelAttribute DiscountVo discountVo,
//						HttpServletRequest request, Model model) {
//		System.out.println("BusinessController/bmUpload");
//		System.out.println(productVo.getShowTime());
//		System.out.println(detailVo);
//
//		businessService.productUpload(file, productVo, detailVo, discountVo);
//		return "business/bmInquiry";
//	}

	// 공연 노출
	@RequestMapping(value = "bmStatus", method = { RequestMethod.GET, RequestMethod.POST })
	public String bmStatus() {
		System.out.println("BusinessController/bmStatus");

		return "";
	}

	// 공연 수정
	@RequestMapping(value = "bmModify", method = { RequestMethod.GET, RequestMethod.POST })
	public String bmModify(@ModelAttribute ProductVo productVo) {
		System.out.println("BusinessController/bmAdd");

		return "business/bmModify";
	}

	// 공연 삭제
//	@RequestMapping(value = "bmDelete", method = { RequestMethod.GET, RequestMethod.POST })
//	public String bmDelete(@ModelAttribute ProductVo productVo) {
//		System.out.println("BusinessController/bmDelete");
//		
//		businessService.productDelete(productVo);
//		return "redirect:/bm/";
//	}

	// 공연 검색 페이징
	@RequestMapping(value = "bmAddSearch", method = { RequestMethod.GET, RequestMethod.POST })
	public String bmAddSearch() {
		System.out.println("BusinessController/bmAddSearch");

		return "business/bmAddSearch";
	}

	// 공연 할인정보 추가
	@RequestMapping("/discount")
	public String bmDisAdd(@RequestParam("prodNo") int prodNo, Model model) {
		System.out.println("BusinessController/bmDisAdd");

		model.addAttribute("prodDis", businessService.selectProdDiscount(prodNo));
		return "business/bmDisAdd";
	}

	// 문의내역 관리
	@RequestMapping(value = "bmManage", method = { RequestMethod.GET, RequestMethod.POST })
	public String bmManage() {
		System.out.println("BusinessController/bmManage");

		return "business/bmManage";
	}

}
