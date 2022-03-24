package com.ticketjava.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ticketjava.service.UserService;
import com.ticketjava.vo.UserVo;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	/* 로그인 폼 */
	@GetMapping("/loginForm")
	public String loginForm() {
		return "user/loginForm";
	}
	
	/* 로그인 */
	@PostMapping("/login")
	public String login(@ModelAttribute UserVo userVo,
						@RequestParam(value="prodNo", required=false, defaultValue="0") int prodNo,
						HttpSession session) {
		
		UserVo authUser = userService.getAuthUser(userVo);
		if(authUser == null) {
			return "redirect:loginForm?result=fail";
		}
		else {
			session.setAttribute("authUser", authUser);
			if(prodNo > 0) {
				return "redirect:/product/info?prodNo="+prodNo;
			}
			else {
				return "redirect:/";
			}
		}
	}
	
	/* 로그아웃 */
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("authUser");
		return "redirect:/";
	}
	
	/* 회원가입 폼 */
	@RequestMapping("/joinForm")
	public String joinForm() {
		return "user/joinForm";
	}
	
	/* 아이디 중복체크 */
	@ResponseBody
	@PostMapping("/dupCheck")
	public boolean dupCheck(@RequestParam("id") String id) {
		
		return userService.dupCheck(id);
	}
	
	/* 회원가입 */
	@RequestMapping("/join")
	public String join(@ModelAttribute UserVo userVo) {
		userService.join(userVo);
		return "redirect:/";
	}
	
	
	
	/* 회원 정보 찾기 */
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
