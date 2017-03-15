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
	public ModelAndView doGet(HttpServletRequest request, HttpSession session, @RequestParam(value="no", required=false) int no,
			Model model ){
		ModelAndView mav = new ModelAndView();
		System.out.println(no);
		
		List<Comment> xxx = this.commentDao.SelectDataByPk( no ) ;
		
		mav.addObject("comment",xxx);
		session.setAttribute("ccc", xxx);
		System.out.println(xxx);
		
		return mav;
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
	public ModelAndView bbb( 
			@ModelAttribute( mymodel ) @Valid Comment xxx,
			BindingResult asdf, HttpSession session ){
		System.out.println( xxx.toString() +"!!!!!!!!!!!!!!!!!@@@@@@@@!!!!!!!!!!!" );
		
		ModelAndView mav = new ModelAndView() ;
		
		int cnt = - 1 ; 
		
		if ( asdf.hasErrors() ) {
			System.out.println( "오류 있음" );
			System.out.println( asdf );
			mav.setViewName( "board/main" );
			
		} else { 
			System.out.println(xxx + "!!!!!!!!!!!!!!!!!!!");
			cnt = this.commentDao.InsertComment( xxx ) ;	
				
			mav.setViewName( "redirect:/board/main" );
		}				
		return mav ;	
	}		
	
}
