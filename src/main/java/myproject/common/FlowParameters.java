package myproject.common;

//페이징 처리에 자주 쓰이는 파라미터들을 인스턴스 변수로 만들어 사용하기 위한 클래스
public class FlowParameters {
	//모두 파라미터 형태로 넘겨지므로 숫자라고 하더라고 모두 문자열로 처리했다.
	private String pageNumber ;
	private String pageSize ;
//	private String mode = "" ;
//	private String keyword = "" ;
//	private String groupno = "" ;
//	private String orderno = "" ;
//	private String depth = "" ;
	
	@Override
	public String toString() {
		//파라미터를 =와 &으로 연결해 두었다.
		//사용자 입장에서는 toString() 메소드를 호출하게 되면 자동으로 파라미터 문자열이 만들어진다.
		return "pageNumber=" + pageNumber + 
				"&pageSize=" + pageSize; //+ 
//				"&mode=" + mode + 
//				"&keyword=" + keyword ; //+ 
//				"&groupno=" + groupno + 
//				"&orderno=" + orderno + 
//				"&depth=" + depth ;
	}  		
	
	/*@Override
	public String toString() {
		return "pageNumber=" + pageNumber + "&pageSize="
				+ pageSize + "&mode=" + mode + "&keyword=" + keyword + "";
	}*/
	
//	public String getGroupno() {
//		return groupno;
//	}
//	public void setGroupno(String groupno) {
//		this.groupno = groupno;
//	}
//	public String getOrderno() {
//		return orderno;
//	}
//	public void setOrderno(String orderno) {
//		this.orderno = orderno;
//	}
//	public String getDepth() {
//		return depth;
//	}
//	public void setDepth(String depth) {
//		this.depth = depth;
//	}
	
	public String getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(String pageNumber) {
		this.pageNumber = pageNumber;
	}
	public String getPageSize() {
		return pageSize;
	}
	public void setPageSize(String pageSize) {
		this.pageSize = pageSize;
	}
//	public String getMode() {
//		return mode;
//	}
//	public void setMode(String mode) {
//		this.mode = mode;
//	}
//	
//	public String getKeyword() {
//		return keyword;
//	}
//	public void setKeyword(String keyword) {
//		this.keyword = keyword;
//	}
	 
	
}