package myprojcet;

import javax.servlet.ServletContext;

import org.springframework.web.context.ServletContextAware;

public class FileUploadAdapter implements ServletContextAware{
public ServletContext ctx = null ;
	
	public String webServerPath  = null ; 
	
	
	@Override
		public void setServletContext(ServletContext ctx) {
		System.out.println("ȣȣȣ");
		String uploadPath = "/upload" ; 
		this.ctx = ctx ;
		this.webServerPath = this.ctx.getRealPath( uploadPath ) ;
		System.out.println("�� ���� �̹��� ���\n" + this.webServerPath); 
		}
	
}
