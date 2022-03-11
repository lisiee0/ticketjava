package com.ticketjava.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ticketjava.service.BusinessService;
import com.ticketjava.vo.DetailVo;
import com.ticketjava.vo.ProductVo;

@Controller
@RequestMapping("/bm")
public class BusinessController {

	@Autowired
	BusinessService businessService;

	// 공연 목록
	@RequestMapping(value = "/", method = { RequestMethod.GET, RequestMethod.POST })
	public String bmInquiry(Model model) {
		System.out.println("BusinessController/bmInquiry");

		model.addAttribute("bmList", businessService.getProductList());
		return "business/bmInquiry";
	}
	//

	// 공연 추가
	@RequestMapping(value = "bmAdd", method = { RequestMethod.GET, RequestMethod.POST })
	public String bmAdd(@ModelAttribute ProductVo productVo) {
		System.out.println("BusinessController/bmAdd");

		return "business/bmAdd";
	}

	// 공연 등록 폼
	@RequestMapping(value = "bmForm")
	public String bmForm() {
		System.out.println("BusinessController/form()");

		return "business/bmForm";
	}

	// 공연 업로드
	@RequestMapping(value = "bmUpload", method = { RequestMethod.GET, RequestMethod.POST })
	public String bmUpload(@RequestParam("file") MultipartFile[] file, 
							@ModelAttribute ProductVo productVo,
							@ModelAttribute DetailVo detailVo,HttpServletRequest request, Model model) {
		
		System.out.println("BusinessController/bmUpload");
		businessService.productUpload(file, productVo, detailVo);
		return "business/bmInquiry";
	}

	// 공연 수정
	@RequestMapping(value = "bmModify", method = { RequestMethod.GET, RequestMethod.POST })
	public String bmModify(@ModelAttribute ProductVo productVo) {
		System.out.println("BusinessController/bmAdd");

		return "business/bmModify";
	}

	// 공연 검색
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
