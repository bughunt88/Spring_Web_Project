package myproject.common;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

public class MyUtility {
	
	public static String fileUpload(
			String webServerPath, 
			MultipartFile multi,
			boolean overwrite ) {
		
		String myfile = null ;
		String newfile = null ;
		
		if ( overwrite == false) { 
			String pattern = "yyyyMMddhhmm" ; 		
			Date date = new Date() ;
			SimpleDateFormat sdf = new SimpleDateFormat(pattern) ;
			String now = sdf.format( date ) ;
			
			String somefile = multi.getOriginalFilename() ;
			System.out.println(somefile +"!!!!!!!!!!!!!!!!!!");
			
			if(somefile == null || somefile ==""){
				return null;
			}else{
				int dot = somefile.indexOf(".") ;
				String filename = somefile.substring(0, dot) ;
				String fileext = somefile.substring(dot) ;
				newfile = filename + now + fileext ; 
				
				myfile = webServerPath + File.separator  + newfile  ;
			}
		
			
		}else{
			myfile = webServerPath + File.separator + multi.getOriginalFilename() ;	
		}
		
		File destination = new File( myfile ) ;
		
		try { 	
			multi.transferTo( destination );

		} catch (IllegalStateException e) {
			e.printStackTrace();
		
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return newfile ;
	}
	
}