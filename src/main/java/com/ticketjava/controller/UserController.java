package com.ticketjava.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ticketjava.service.UserService;
import com.ticketjava.vo.UserVo;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/loginForm")
	public String loginForm() {
		
		return "user/loginForm";
	}
	
	@RequestMapping("/login")
	public String login(@ModelAttribute UserVo userVo,
						Model model) {
		UserVo authUser = userService.getAuthUser(userVo);
		if(authUser != null) {
			model.addAttribute("authUser", authUser);
		}
		return "redirect:/";
	}
	
	
	@RequestMapping("/joinForm")
	public String joinForm() {
		return "user/joinForm";
	}
	
	@RequestMapping("/join")
	public String join(@ModelAttribute UserVo userVo) {
		System.out.println("join()");
		
		userService.join(userVo);
		return "redirect:/";
	}
	
	
	
	@RequestMapping("/findId")
	public String findId() {
		
		return "user/findId";
	}
	
	@RequestMapping("/findSuccess")
	public String findSuccess() {
		
		return "user/findSuccess";
	}
	
	@RequestMapping("/findPassword")
	public String findPassword() {
		
		return "user/findPassword";
	}
	
	@RequestMapping("/changePassword")
	public String changePassword() {
		
		return "user/changePassword";
	}
	
	@RequestMapping("/changeSuccess")
	public String changeSuccess() {
		
		return "user/changeSuccess";
	}
}
