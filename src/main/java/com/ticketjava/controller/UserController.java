package com.ticketjava.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ticketjava.service.UserService;
import com.ticketjava.vo.UserVo;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@GetMapping("/loginForm")
	public String loginForm() {
		return "user/loginForm";
	}
	
	@RequestMapping("/login")
	public String login(@ModelAttribute UserVo userVo,
						@RequestParam(value="prodNo", required=false, defaultValue="0") int prodNo,
						RedirectAttributes redirectAttributes,
						HttpSession session) {
		UserVo authUser = userService.getAuthUser(userVo);
		
		if(authUser == null) {
			return "redirect:loginForm?result=fail";
		}
		else {
			session.setAttribute("authUser", authUser);
			if(prodNo > 0) {
				redirectAttributes.addAttribute("prodNo", prodNo);
				return "redirect:/product/info";
			}
			else {
				return "redirect:/";
			}
		}
	}
	
	
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("authUser");
		return "redirect:/";
	}
	
	
	
	@RequestMapping("/joinForm")
	public String joinForm() {
		return "user/joinForm";
	}
	
	@ResponseBody
	@RequestMapping("/dupCheck")
	public boolean dupCheck(@RequestParam("id") String id) {
		
		return userService.dupCheck(id);
	}
	
	@RequestMapping("/join")
	public String join(@ModelAttribute UserVo userVo) {
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
