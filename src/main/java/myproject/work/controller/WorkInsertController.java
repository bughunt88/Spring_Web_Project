package myproject.work.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import myprojcet.FileUploadAdapter;
import myproject.common.MyUtility;
import myproject.work.model.aBoard;
import myproject.work.model.aBoardDao;

@Controller
@RequestMapping(value = "/work")
public class WorkInsertController extends FileUploadAdapter {
	private final String command = "/insert"; // 복사 후 반드시 수정하세요
	private final String mymodel = "aboard";

	@Autowired
	@Qualifier("myaBoardDao")
	private aBoardDao aboardDao;

	@RequestMapping(value = command, method = RequestMethod.GET)
	public String doGet() {
		return "work/winsert";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public ModelAndView bbb(@ModelAttribute(mymodel) @Valid aBoard xxx, BindingResult asdf, HttpSession session) {
		System.out.println(xxx.toString());

		ModelAndView mav = new ModelAndView();
		int cnt = -1;

		MultipartFile multi = xxx.getUpload();
		
		String newfilename 
		= MyUtility.fileUpload(webServerPath, multi, false);
		
		if( newfilename != null ){
			
			xxx.setUpfile( newfilename  ); 
			cnt = this.aboardDao.InsertData(xxx);
			
		}else{
			
			cnt = this.aboardDao.InsertData(xxx);
			
		}

		mav.setViewName("redirect:/work/main");

		return mav;
	}
}
