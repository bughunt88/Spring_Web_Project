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
		System.out.println(this.getClass() + " Get ��� ����");
		
		return getPage ; 
	}
	
	@Autowired
	@Qualifier("myMemberDao")
	private MemberDao memberDao;	
	
	@RequestMapping(value=command , method=RequestMethod.POST)
	public ModelAndView doActionPost( Member abcd, HttpSession session ){
		System.out.println(this.getClass() + " Post ��� ����");
	
		ModelAndView mav = new ModelAndView();
		Member member =  this.memberDao.SelectDataByPk( abcd.getId() ) ;
		
		if ( member == null ){ //�������� �ʴ� ȸ��
			mav.setViewName( getPage );
			
		}else{
			//ȸ�� �α��� ����
			if( abcd.getPassword().equals( member.getPassword()  )){
				//�α��� ������ ���ǿ� ����
				session.setAttribute("loginfo", member);
				
				if( abcd.getId().equals("admin")){
					mav.setViewName( "redirect:/common/main" );
				
				}else{ //�Ϲ� �����
					mav.setViewName( "redirect:/common/main" );
				}
			}else{ //����� �ٸ�
				mav.setViewName( getPage );
			}
		}
		
		return mav;
	}
}
