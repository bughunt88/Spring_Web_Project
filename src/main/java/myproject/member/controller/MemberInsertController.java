package myproject.member.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import myproject.member.model.Member;
import myproject.member.model.MemberDao;

@Controller
@RequestMapping(value = "/member")
public class MemberInsertController {
	private final String command = "/insert" ; //���� �� �ݵ�� �����ϼ���
	private final String mymodel = "member" ;
	
	@Autowired
	@Qualifier("myMemberDao")
	private MemberDao memberDao;	
	
	@RequestMapping( value = command, method = RequestMethod.GET )
	public String doGet( ){
		return "member/meInsertForm" ; 
	}
	
	@ModelAttribute( mymodel )
	public Member sdd(){
		return new Member() ;
	}	
	
	@RequestMapping( value = command, method = RequestMethod.POST )
	public ModelAndView doPost( 
			@ModelAttribute( mymodel ) @Valid Member xxx,
			BindingResult asdf, HttpSession session ){
		
		ModelAndView mav = new ModelAndView() ;
		
		if ( asdf.hasErrors() ) {

			mav.setViewName("member/meInsertForm");
			
		} else { //ȸ�� ���Կ� ������ ���ٸ�
			int cnt = -99999 ; //ȸ�� ����
			cnt = this.memberDao.InsertData( xxx ) ;
			session.setAttribute("abc", xxx);
			session.setAttribute("loginfo", xxx);
						
			//���� �Ǿ��ٸ� �α��� �������� �̵�
			mav.setViewName( "redirect:/common/main" );
		}		
		return mav ; 
	}
}
