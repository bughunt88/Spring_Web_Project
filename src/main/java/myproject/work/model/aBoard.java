package myproject.work.model;

import org.springframework.web.multipart.MultipartFile;

public class aBoard {

	private int no;
	private String title;
	private String body;
	private String body1;
	private String body2;
	private String regdate;
	private String writer;
	private String upfile;
	private MultipartFile upload;
	private String body3;
	
	

	public String getBody3() {
		return body3;
	}

	public void setBody3(String body3) {
		this.body3 = body3;
	}

	public MultipartFile getUpload() {
		return upload;
	}

	public void setUpload(MultipartFile upload) {
		this.upload = upload;
		if (this.upload != null) { // 업로드 잘 되었다면
			this.upfile = this.upload.getOriginalFilename();
		}
	}

	public String getUpfile() {
		return upfile;
	}

	public void setUpfile(String upfile) {
		this.upfile = upfile;
	}

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
