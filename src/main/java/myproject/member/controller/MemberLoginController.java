package myproject.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import myproject.member.model.Member;
import myproject.member.model.MemberDao;

@Controller
@RequestMapping(value = "/member")
public class MemberLoginController {
	private static final String getPage= "/member/meLoginForm";
	
	private static final String command = "/login" ;	
	
	@RequestMapping(value=command , method=RequestMethod.GET)
	public String doActionGet(){
		System.out.println(this.getClass() + " Get 방식 들어옴");
		
		return getPage ; 
	}
	
	@Autowired
	@Qualifier("myMemberDao")
	private MemberDao memberDao;	
	
	@RequestMapping(value=command , method=RequestMethod.POST)
	public ModelAndView doActionPost( Member abcd, HttpSession session ){
		System.out.println(this.getClass() + " Post 방식 들어옴");
	
		ModelAndView mav = new ModelAndView();
		Member member =  this.memberDao.SelectDataByPk( abcd.getId() ) ;
		
		if ( member == null ){ //존재하지 않는 회원
			mav.setViewName( getPage );
			
		}else{
			//회원 로그인 성공
			if( abcd.getPassword().equals( member.getPassword()  )){
				//로그인 정보를 세션에 저장
				session.setAttribute("loginfo", member);
				
				if( abcd.getId().equals("admin")){
					mav.setViewName( "redirect:/common/main" );
				
				}else{ //일반 사용자
					mav.setViewName( "redirect:/common/main" );
				}
			}else{ //비번이 다름
				mav.setViewName( getPage );
			}
		}
		
		return mav;
	}
}
