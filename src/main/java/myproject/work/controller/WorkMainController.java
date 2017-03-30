package myproject.work.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import myproject.common.Paging;
import myproject.work.model.aBoard;
import myproject.work.model.aBoardDao;

@Controller
@RequestMapping(value = "/work")
public class WorkMainController {
	private static final String command = "/main";

	@Autowired
	@Qualifier("myaBoardDao")
	private aBoardDao aboardDao;

	@RequestMapping(value = command, method = RequestMethod.GET)
	public ModelAndView doActionGet(
			@RequestParam(value = "pageNumber", required = false) String pageNumber,
			@RequestParam(value = "pageSize", required = false) String pageSize, 
			HttpServletRequest request,
			HttpSession session) {

		int totalCount = this.aboardDao.GetTotalCount();
		
		String url = request.getContextPath() + "/work/main";

		Paging pageInfo = new Paging(pageNumber, pageSize, totalCount, url, null);
		
		RowBounds rowBounds = new RowBounds(pageInfo.getOffset(), pageInfo.getLimit());

		ModelAndView mav = new ModelAndView();

		List<aBoard> lists = this.aboardDao.SelectDataList(rowBounds);

		System.out.println("dkfjdk"+lists.size());
		
		mav.addObject("lists", lists);
		mav.addObject("pageNumber", pageNumber);
		mav.addObject("pageSize", pageSize);
		mav.addObject("pageInfo", pageInfo);

		mav.setViewName("work/mainPage");

		return mav;
	}

}