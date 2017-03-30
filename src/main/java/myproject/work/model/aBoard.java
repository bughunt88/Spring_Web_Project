package myproject.work.model;

public class aBoard {

	private int no;
	private String title;
	private String body ;
	private String body1 ;
	private String body2 ;
	private String regdate ;
	private String writer;
	
	
	
	@Override
	public String toString() {
		return "aBoard [no=" + no + ", title=" + title + ", body=" + body + ", body1=" + body1 + ", body2=" + body2
				+ ", regdate=" + regdate + ", writer=" + writer + ", getWriter()=" + getWriter() + ", getNo()="
				+ getNo() + ", getTitle()=" + getTitle() + ", getBody()=" + getBody() + ", getBody1()=" + getBody1()
				+ ", getBody2()=" + getBody2() + ", getRegdate()=" + getRegdate() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
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
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getBody1() {
		return body1;
	}
	public void setBody1(String body1) {
		this.body1 = body1;
	}
	public String getBody2() {
		return body2;
	}
	public void setBody2(String body2) {
		this.body2 = body2;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
	
	
}
