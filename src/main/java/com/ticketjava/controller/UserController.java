package com.ticketjava.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	

//	회원정보 수정
	@RequestMapping("/userModify")
	public String userModify(HttpSession session, @ModelAttribute UserVo userVo) {
		System.out.println("UserController userModify");
		UserVo authUser = (UserVo)session.getAttribute("authUser");

		System.out.println("authUser 출력"+authUser);
		
		return "user/userModify";
	}
	
	@RequestMapping("/userModifyAction")
	public String userModifyAction(@ModelAttribute UserVo userVo, Model model) {
		System.out.println("UserController userModifyAction");
		
//		회원정보 변경 기능은 돌아가는데 오류 뿜뿜 -> 마음에 안든다
		
//		salt기능 authUser
		UserVo authUser = userService.getAuthUser(userVo);
		
//		authuser 잘 가져오는지 확인
		System.out.println("authUser 출력"+authUser);
		
		model.addAttribute("authUser", authUser); 

//		최종 데이터 입력하기
		userService.userModifyAction(userVo);
		
		return "redirect:/";
	}
	
	
	
//	회원탈퇴
	@RequestMapping("/userOut")
	public String userOut() {
		System.out.println("UserController userOut");
		return "user/userOut";
	}
	
	
	@RequestMapping("/userOutAction")
	public String userOutAction(UserVo userVo, @RequestParam("userNo") int userNo, @RequestParam("password") String password) {
		System.out.println("UserController userOutAction");
		userService.userOutAction(userVo, userNo, password);
		return "redirect:/";
	}
	
	
	
}
