package myproject.board.model;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class Board {
	private final String INPUT = "This field is required." ;
	
	 private int no; 
	 @NotEmpty(message = INPUT )	
	 private String title ;
	 @NotEmpty(message = INPUT )	
	 private String category ;
	 private String writer;
	 @NotEmpty(message = INPUT )	
	 private String body ;
	 private String upfile ;
	 private String regdate ;
	 private MultipartFile upload; 
		
		
		
		public MultipartFile getUpload() {
			return upload;
		}
		public void setUpload(MultipartFile upload) {
			this.upload = upload;
			if( this.upload != null){ //업로드 잘 되었다면
				this.upfile = this.upload.getOriginalFilename();
			}
		}	
	 
	 
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getUpfile() {
		return upfile;
	}
	public void setUpfile(String upfile) {
		this.upfile = upfile;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		if( regdate.length() == 21){ //형식 : //2016-07-02 11:11:31.0
			this.regdate = regdate.substring(0, 10);
		}else if( regdate.length() == 19){ 
				this.regdate = regdate.substring(0, 10);			
		}else{
			this.regdate = regdate;	
		}
	}
	
	@Override
	public String toString() {
		return "Board [no=" + no + ", title=" + title + ", category=" + category + ", writer=" + writer + ", body="
				+ body + ", upfile=" + upfile + ", regdate=" + regdate + "]";
	}
	 
	 
	 
}
