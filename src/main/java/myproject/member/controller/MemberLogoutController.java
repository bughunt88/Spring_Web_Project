package myproject.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/member")
public class MemberLogoutController {
	@RequestMapping(value = "/logout")
	public String doActionGet(HttpSession session){
		session.invalidate(); 		
		return "redirect:/common/main" ; 
	}	
}