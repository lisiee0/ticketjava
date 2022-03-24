package com.ticketjava.controller;

import java.util.List;
import java.util.Map;

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
import com.ticketjava.vo.DetailVo;
import com.ticketjava.vo.ProductVo;

@Controller
@RequestMapping("/bm")
public class BusinessController {

	@Autowired
	BusinessService businessService;

	// 공연 목록 불러오기
	@RequestMapping(value = "/", method = { RequestMethod.GET, RequestMethod.POST })
	public String bmInquiry(Model model) {
		System.out.println("BusinessController > bmInquiry");

		List<ProductVo> productList = businessService.getProductList();

		model.addAttribute("productList", productList);
		return "business/bmInquiry";

	}

	// 공연 등록 폼
	@RequestMapping(value = "bmForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String bmForm(Model model) {
		System.out.println("BusinessController > form()");

		model.addAttribute("selectList", businessService.bmHallList());
		return "business/bmForm";
	}

	// 공연 업로드
	@ResponseBody
	@RequestMapping(value = "bmUpload", method = { RequestMethod.GET, RequestMethod.POST })
	public DetailVo productUpload(@RequestBody ProductVo productVo, DetailVo detailVo) {
		System.out.println("BusinessController > form() > productUpload");

		businessService.productUpload(productVo, detailVo);
		return detailVo;
	}

	// 공연 파일업로드
	@RequestMapping(value = "bmfileUpload", method = { RequestMethod.GET, RequestMethod.POST })
	public void bmfileUpload(@RequestParam("prodNo") int prodNo, ProductVo productVo, DetailVo detailVo,
			MultipartFile file, int order) {
		System.out.println("BusinessController > form() > bmfileUplad");

		businessService.productFileUpload(file, productVo, detailVo, order);
	}

	// 공연 수정폼
	@RequestMapping(value = "bmModifyForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String bmModifyForm(@RequestParam("prodNo") int prodNo, Model model, @ModelAttribute ProductVo productVo) {
		System.out.println("BusinessController >  bmModifyForm");

		Map<String, Object> bmProductMap = businessService.bmgetProduct(prodNo);

		model.addAttribute("bmProductMap", bmProductMap);

		return "business/bmModify";
	}

	// 공지사항 수정
	@ResponseBody
	@RequestMapping(value = "bmModify", method = { RequestMethod.GET, RequestMethod.POST })
	public int bmModify(@RequestBody ProductVo productVo) {
		System.out.println("BusinessController >  bmModify");

		int count = businessService.bmModify(productVo);
		return count;
	}

	// 공연 수정폼 파일 업로드
	@RequestMapping(value = "bmfileUploadModify", method = { RequestMethod.GET, RequestMethod.POST })
	public void bmfileUploadModify(@RequestParam("prodNo") int prodNo, ProductVo productVo, DetailVo detailVo,
			MultipartFile file, int order) {
		System.out.println("BusinessController > form() > bmfileUploadModify");

		businessService.productFileUpload(file, productVo, detailVo, order);
	}


	// 공연 할인정보 추가
	@RequestMapping("/discount")
	public String bmDisAdd(@RequestParam("prodNo") int prodNo, Model model) {
		System.out.println("BusinessController > bmDisAdd");
		System.out.println(prodNo);

		model.addAttribute("prodDis", businessService.selectProdDiscount(prodNo));
		return "business/bmDisAdd";
	}

	// 공연 노출
	@RequestMapping(value = "bmStatus", method = { RequestMethod.GET, RequestMethod.POST })
	public String bmStatus() {
		System.out.println("BusinessController > bmStatus");

		return "";
	}

	// 문의내역 관리
//	@RequestMapping(value = "bmManage", method = { RequestMethod.GET, RequestMethod.POST })
//	public String bmManage() {
//		System.out.println("BusinessController > bmManage");
//
//		return "business/bmManage";
//	}

	// 공연장 검색 리스트
//	@RequestMapping(value = "bmAddSearch", method = { RequestMethod.GET, RequestMethod.POST })
//	public String bmAddSearch(Model model) {
//		System.out.println("BusinessController > bmAddSearch");
//		List<HallVo> hList = businessService.bmAddSearch();
//
//		model.addAttribute("bmAddSearch", hList);
//		return "business/bmAddSearch";
//	}

	// 공연 삭제
//	@RequestMapping(value = "bmDelete", method = { RequestMethod.GET, RequestMethod.POST })
//	public String bmDelete(@ModelAttribute ProductVo productVo) {
//		System.out.println("BusinessController/bmDelete");
//		
//		businessService.productDelete(productVo);
//		return "redirect:/bm/";
//	}

}
