package myproject.common;

//����¡ ó���� ���� ���̴� �Ķ���͵��� �ν��Ͻ� ������ ����� ����ϱ� ���� Ŭ����
public class FlowParameters {
	//��� �Ķ���� ���·� �Ѱ����Ƿ� ���ڶ�� �ϴ���� ��� ���ڿ��� ó���ߴ�.
	private String pageNumber ;
	private String pageSize ;
//	private String mode = "" ;
//	private String keyword = "" ;
//	private String groupno = "" ;
//	private String orderno = "" ;
//	private String depth = "" ;
	
	@Override
	public String toString() {
		//�Ķ���͸� =�� &���� ������ �ξ���.
		//����� ���忡���� toString() �޼ҵ带 ȣ���ϰ� �Ǹ� �ڵ����� �Ķ���� ���ڿ��� ���������.
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