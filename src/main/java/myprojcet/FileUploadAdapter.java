package myprojcet;

import javax.servlet.ServletContext;

import org.springframework.web.context.ServletContextAware;

public class FileUploadAdapter implements ServletContextAware{
public ServletContext ctx = null ;
	
	public String webServerPath  = null ; 
	
	
	@Override
		public void setServletContext(ServletContext ctx) {
		System.out.println("호호호");
		String uploadPath = "/upload" ; 
		this.ctx = ctx ;
		this.webServerPath = this.ctx.getRealPath( uploadPath ) ;
		System.out.println("웹 서버 이미지 경로\n" + this.webServerPath); 
		}
	
}
