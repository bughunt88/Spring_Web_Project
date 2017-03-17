package myproject.board.controller;

import java.util.List;

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
import myproject.board.model.Board;
import myproject.board.model.BoardDao;
import myproject.common.MyUtility;

@Controller
@RequestMapping(value = "/board")
public class BoardInsertController extends FileUploadAdapter {
	private final String command = "/insert" ; //복사 후 반드시 수정하세요
	private final String mymodel = "board" ;
	
	@RequestMapping( value = command, method = RequestMethod.GET )
	public String doGet( ){
		return "board/bmain" ; 
	}
	
	@Autowired
	@Qualifier("myBoardDao")
	private BoardDao boardDao;	
	
	@ModelAttribute("board")
	public Board qwert(){
		return new Board() ;
	}
	
	@RequestMapping(value = "/insert", method=RequestMethod.POST)
	public ModelAndView bbb( 
			@ModelAttribute( mymodel ) @Valid Board xxx,
			BindingResult asdf, HttpSession session ){
		System.out.println( xxx.toString() );
		
		ModelAndView mav = new ModelAndView() ;
		int cnt = - 1 ; 
		
		if ( asdf.hasErrors() ) {
			System.out.println( "오류 있음" );
			System.out.println( asdf );
			
			List<Board> lists = this.boardDao.SelectDataList();
			List<Board> lists1 = this.boardDao.SelectDataList1();

			mav.addObject("lists", lists);
			mav.addObject("lists1",lists1);

			mav.addObject("bean", xxx ) ;
			mav.setViewName( "/board/bmain" );
			
		} else { 
			
			MultipartFile multi = xxx.getUpload() ;
			
			String newfilename 
				= MyUtility.fileUpload(webServerPath, multi, false);
			
			if( newfilename != null ){
				xxx.setUpfile( newfilename  ); 
				cnt = this.boardDao.InsertData( xxx ) ;	
				
			} else{
				
				cnt = this.boardDao.InsertData( xxx ) ;	
			}
			mav.setViewName( "redirect:/board/main");
		}				
		return mav ;	
	}		
}
