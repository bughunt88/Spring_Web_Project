package myproject.board.controller;

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
import myproject.board.model.BoardDao;

@Controller
@RequestMapping(value = "/board")
public class BoardEditController {
	private final String command = "/edit"; // 복사 후 반드시 수정하세요

	@Autowired
	@Qualifier("myBoardDao")
	private BoardDao boardDao;

	@RequestMapping(value = command, method = RequestMethod.GET)
	public String doGet(@RequestParam(value = "no", required = false) int no, Model model) {
		
		Board lists1 = this.boardDao.SelectDataByPk1(no);
		
		model.addAttribute("bean", lists1);
		
		return "board/edit_board";
	}
	
	@RequestMapping(value = command, method=RequestMethod.POST)
	public ModelAndView bbb( 
			@ModelAttribute("board") @Valid Board xxx,
			@RequestParam(value="no", required=false) int no,
			BindingResult asdf,
			Model model){
		
		ModelAndView mav = new ModelAndView() ;
		int cnt = - 1 ; 
		
		if ( asdf.hasErrors() ) {
			System.out.println( "오류 있음" );
			System.out.println( asdf );
			model.addAttribute("bean", xxx) ;
			mav.setViewName( "board/boUpdateForm" );
		} else {
			cnt = this.boardDao.UpdateData( xxx ) ;
			String url = "redirect:/board/comment"+ "?no=" + no ;
			mav.setViewName( url );
		}
				
		return mav ;	
	}	

}
