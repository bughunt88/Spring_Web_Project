package myproject.work.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import myproject.board.model.Board;
import myproject.work.model.aBoard;
import myproject.work.model.aBoardDao;

@Controller
@RequestMapping(value = "/work")
public class WorkEditController {
	private final String command = "/edit"; // 복사 후 반드시 수정하세요

	@Autowired
	@Qualifier("myaBoardDao")
	private aBoardDao aboardDao;

	@RequestMapping(value = command, method = RequestMethod.GET)
	public String doGet(@RequestParam(value = "no", required = false) int no, Model model) {
		
		aBoard lists1 = this.aboardDao.SelectDataByPk1(no);
		
		model.addAttribute("bean", lists1);
		
		return "work/wedit";
	}
	
	@RequestMapping(value = command, method=RequestMethod.POST)
	public ModelAndView bbb( 
			@ModelAttribute("aboard") @Valid aBoard xxx,
			@RequestParam(value="no", required=false) int no,
			BindingResult asdf,
			Model model){
		
		ModelAndView mav = new ModelAndView() ;
		int cnt = - 1 ; 
		
		if ( asdf.hasErrors() ) {
			System.out.println( "오류 있음" );
			System.out.println( asdf );
			model.addAttribute("bean", xxx) ;
			mav.setViewName( "work/wedit" );
		} else {
			cnt = this.aboardDao.UpdateData( xxx ) ;
			String url = "redirect:/work/detail"+ "?no=" + no ;
			mav.setViewName( url );
		}
				
		return mav ;	
	}	

}
