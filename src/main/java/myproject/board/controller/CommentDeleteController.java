package myproject.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import myprojcet.FileUploadAdapter;
import myproject.board.model.CommentDao;

@Controller
@RequestMapping(value = "/comment")
public class CommentDeleteController extends FileUploadAdapter {
	private final String command = "/delete"; // 복사 후 반드시 수정하세요

	@Autowired
	@Qualifier("myCommentDao")
	private CommentDao commentDao;

	@RequestMapping(value = command, method = RequestMethod.POST)
	public String bbb(@RequestParam(value = "cnum", required = false)  int cnum, @RequestParam(value = "no", required = false) int no) {
		
		int cnt = -99999 ;
		cnt = this.commentDao.DeleteData1( cnum ) ; 
		
		return "redirect:/board/comment" + "?no=" + no;
	}
}
