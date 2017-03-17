package myproject.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
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

import myproject.board.model.Board;
import myproject.board.model.BoardDao;
import myproject.member.model.Member;

@Controller
@RequestMapping(value = "/board")
public class BoardMainController {
	private final String command = "/main"; // ���� �� �ݵ�� �����ϼ���
	private final String mymodel = "board" ;
	
	@Autowired
	@Qualifier("myBoardDao")
	private BoardDao boardDao;
	
	@ModelAttribute("board")
	public Board qwert(){
		return new Board() ;
	}

	@RequestMapping(value = command, method = RequestMethod.GET)
	public ModelAndView doGet(HttpServletRequest request, HttpSession session, Member member) {
		
		ModelAndView mav = new ModelAndView();

		List<Board> lists = this.boardDao.SelectDataList();
		List<Board> lists1 = this.boardDao.SelectDataList1();

		mav.addObject("lists", lists);
		mav.addObject("lists1",lists1);
		
		mav.setViewName("board/bmain");
		return mav;
	}

}
