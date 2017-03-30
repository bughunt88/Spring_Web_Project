package myproject.work.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import myproject.work.model.aBoard;
import myproject.work.model.aBoardDao;
import myproject.work.model.aComment;
import myproject.work.model.aCommentDao;

@Controller
@RequestMapping(value = "/work")
public class WorkCommentController {
	private final String command = "/comment" ; //복사 후 반드시 수정하세요
	private final String mymodel = "acomment" ;
	
	@Autowired
	@Qualifier("myaBoardDao")
	private aBoardDao aboardDao;	
	
	@Autowired
	@Qualifier("myaCommentDao")
	private aCommentDao acommentDao;	
	
	@ModelAttribute("aboard")
	public aBoard qwert(){
		return new aBoard() ;
	}
	
	@RequestMapping(value = command, method=RequestMethod.POST)
	public ModelAndView bbb( @Valid aComment xxx, @RequestParam(value="no", required=false) int no,
			BindingResult asdf){ 
		
		ModelAndView mav = new ModelAndView() ;
		
		System.out.println("!!!!"+xxx);
		
		int cnt = - 1 ; 
		
		if ( asdf.hasErrors() ) {
			System.out.println( "오류 있음" );
			System.out.println( asdf );
			mav.setViewName( "work/wdetail" );
			
		} else { 
 		cnt = this.acommentDao.InsertaComment( xxx ) ;	
			mav.setViewName( "redirect:/work/detail"+ "?no=" + no);
		}				
		return mav ;	
	}		
	
}
