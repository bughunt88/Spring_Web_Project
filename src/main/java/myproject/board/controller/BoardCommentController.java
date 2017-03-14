package myproject.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import myprojcet.FileUploadAdapter;
import myproject.board.model.Board;
import myproject.board.model.BoardDao;

@Controller
@RequestMapping(value = "/board")
public class BoardCommentController extends FileUploadAdapter {
	private final String command = "/comment" ; //복사 후 반드시 수정하세요
	private final String mymodel = "board" ;
	
	@RequestMapping( value = command, method = RequestMethod.GET )
	public ModelAndView doGet(HttpServletRequest request, HttpSession session, @RequestParam(value="no", required=false) int no,
			Model model ){
		ModelAndView mav = new ModelAndView();

		Board xxx = this.boardDao.SelectDataByPk( no ) ;
		Board lists = this.boardDao.SelectDataByPk1(no);

		request.setAttribute("xxx", xxx );
		mav.addObject("lists", lists);
		mav.addObject("comment",xxx);
		
		mav.setViewName("board/bmain");
		return mav;
	}
	
	@Autowired
	@Qualifier("myBoardDao")
	private BoardDao boardDao;	
	
	@ModelAttribute("board")
	public Board qwert(){
		return new Board() ;
	}
	
}
