package myproject.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import myproject.board.model.BoardDao;

@Controller
@RequestMapping(value = "/board")
public class BoardMainController {
	private final String command = "/main" ; //복사 후 반드시 수정하세요

	@Autowired
	@Qualifier("myBoardDao")
	private BoardDao boardDao;	
	
	@RequestMapping( value = command, method = RequestMethod.GET )
	public String doGet( ){
		return "board/bmain" ; 
	}
}
