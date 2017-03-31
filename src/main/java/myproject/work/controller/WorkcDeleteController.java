package myproject.work.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import myproject.work.model.aCommentDao;

@Controller
@RequestMapping(value = "/work")
public class WorkcDeleteController {
	private final String command = "/cdelete"; // 복사 후 반드시 수정하세요

	@Autowired
	@Qualifier("myaCommentDao")
	private aCommentDao acommentDao;

	@RequestMapping(value = command, method = RequestMethod.POST)
	public String bbb(@RequestParam(value = "cnum", required = false)  int cnum, @RequestParam(value = "no", required = false) int no) {
		
		int cnt = -99999 ;
		cnt = this.acommentDao.DeleteData1( cnum ) ; 
		
		return "redirect:/work/detail" + "?no=" + no;
	}
}
