package myproject.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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

import myprojcet.FileUploadAdapter;
import myproject.board.model.Board;
import myproject.board.model.BoardDao;
import myproject.board.model.Comment;
import myproject.board.model.CommentDao;

@Controller
@RequestMapping(value = "/board")
public class BoardCommentController extends FileUploadAdapter {
	private final String command = "/comment" ; //복사 후 반드시 수정하세요
	private final String mymodel = "comment" ;
	
	@RequestMapping( value = command, method = RequestMethod.GET )
	public String doGet(HttpServletRequest request, HttpSession session, @RequestParam(value="no", required=false) int no,
			Model model ){
		
		List<Comment> xxx = this.commentDao.SelectDataByPk( no ) ;
		Board lists = this.boardDao.SelectDataByPk1(no);
		int cnt = - 1 ; 
		
		model.addAttribute("comment", xxx) ;
		model.addAttribute("bean", lists) ;
		
		session.setAttribute("ccc", xxx);
		
		System.out.println(lists);

		
		return "board/modal_board1" ;	
	}
	
	@Autowired
	@Qualifier("myBoardDao")
	private BoardDao boardDao;	
	
	@Autowired
	@Qualifier("myCommentDao")
	private CommentDao commentDao;	
	
	@ModelAttribute("board")
	public Board qwert(){
		return new Board() ;
	}
	
	@RequestMapping(value = command, method=RequestMethod.POST)
	public ModelAndView bbb( @Valid Comment xxx, @RequestParam(value="no", required=false) int no,
			BindingResult asdf){ 
		
		ModelAndView mav = new ModelAndView() ;
		
		int cnt = - 1 ; 
		
		if ( asdf.hasErrors() ) {
			System.out.println( "오류 있음" );
			System.out.println( asdf );
			mav.setViewName( "board/main" );
			
		} else { 
			cnt = this.commentDao.InsertComment( xxx ) ;	
				
			mav.setViewName( "redirect:/board/comment"+ "?no=" + no);
		}				
		return mav ;	
	}		
	
}
