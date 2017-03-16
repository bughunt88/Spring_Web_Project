package myproject.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import myprojcet.FileUploadAdapter;
import myproject.board.model.BoardDao;

@Controller
@RequestMapping(value = "/board")
public class BoardDeleteController extends FileUploadAdapter {
	private final String command = "/delete"; // 복사 후 반드시 수정하세요

	@Autowired
	@Qualifier("myBoardDao")
	private BoardDao boardDao;

	@RequestMapping(value = command, method = RequestMethod.POST)
	public String bbb(@RequestParam(value = "no", required = false) int no) {
		
		int cnt = -99999 ;
		cnt = this.boardDao.DeleteData( no ) ; 
		
		return "redirect:/board/main";
	}
}
