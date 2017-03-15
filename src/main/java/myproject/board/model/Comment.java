package myproject.board.model;

public class Comment {
	 private int cnum; 
	 private int no; 
	 private String writer;
	 private String body ;
	 private String regdate ;
	 
	 
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "Comment [cnum=" + cnum + ", no=" + no + ", writer=" + writer + ", body=" + body + ", regdate=" + regdate
				+ "]";
	}

	 
	
}
