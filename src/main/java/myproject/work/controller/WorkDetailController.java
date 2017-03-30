package myproject.work.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import myproject.common.FlowParameters;
import myproject.work.model.aBoard;
import myproject.work.model.aBoardDao;
import myproject.work.model.aComment;
import myproject.work.model.aCommentDao;

@Controller
@RequestMapping(value = "/work")
public class WorkDetailController {
	private final String command = "/detail" ; //복사 후 반드시 수정하세요
	private final String mymodel = "aboard" ;
	
	@RequestMapping( value = command, method = RequestMethod.GET )
	public String doGet(HttpServletRequest request, HttpSession session, FlowParameters parameters, @RequestParam(value="no", required=false) int no
		 ,Model model){
		
		//커맨트 수정해야함
		List<aComment> xxx = this.acommentDao.SelectDataByPk( no ) ;
		
		aBoard bean = this.aboardDao.SelectDataByPk1(no);
		int cnt = - 1 ; 
		
		model.addAttribute("comment", xxx) ;
		model.addAttribute("bean", bean) ;
		model.addAttribute("parameters", parameters) ;
		
		session.setAttribute("ccc", xxx);
		
		return "work/wdetail" ;	
	}
	
	@Autowired
	@Qualifier("myaBoardDao")
	private aBoardDao aboardDao;	
	
	//수정해야함
	@Autowired
	@Qualifier("myaCommentDao")
	private aCommentDao acommentDao;	
	
}
