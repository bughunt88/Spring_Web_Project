package myproject.common;

public class Paging {//페이징 관련 변수	
	private int totalCount = 0 ; //총 레코드 건수
	private int totalPage = 0 ; //전체 페이지 수
	private int pageNumber = 0 ; //보여줄 페이지 넘버(표현 가능한 페이지는 1부터 totalPage까지이다.)
	private int pageSize = 0 ; //한 페이지에 보여줄 건수
	private int beginRow = 0 ; //현재 페이지의 시작 행
	private int endRow = 0 ; //현재 페이지의 끝 행
	private int pageCount = 10 ; //보여줄 페이지 링크 수
	private int beginPage = 0 ; //페이징 처리 시작 페이지 번호
	private int endPage = 0 ; //페이징 처리 끝 페이지 번호
	private int offset = 0 ;
	private int limit = 0 ;
	private String url = "" ; //예시 ==>  http://localhost:8989/MyServlet/list.do
	private String pagingHtml = "";//하단의 숫자 페이지 링크
	private String pagingStatus = ""; //상단 우측의 현재 페이지 위치 표시
	//검색을 위한 변수 추가

	public Paging(
			String _pageNumber, 
			String _pageSize,  
			int totalCount,
			String url, 
			String whologin) {		

		if( _pageNumber == null || _pageNumber.equals("null") || _pageNumber.equals("") ){
			_pageNumber = "1" ;
		}
		this.pageNumber = Integer.parseInt( _pageNumber ) ; 
		
		if( _pageSize == null || _pageSize.equals("null") || _pageSize.equals("") ){
			_pageSize = "10" ;
		}		
		this.pageSize = Integer.parseInt( _pageSize ) ;
		
		this.offset = ( pageNumber - 1 ) * pageSize ;
		this.limit = pageSize ;
		
		this.totalCount = totalCount ; 
		
		this.totalPage = (int)Math.ceil((double)this.totalCount / this.pageSize) ;
		
		this.beginRow = ( this.pageNumber - 1 )  * this.pageSize  + 1 ;
		this.endRow =  this.pageNumber * this.pageSize ;
		
		if( this.endRow > this.totalCount ){
			this.endRow = this.totalCount  ;
		}
		
		this.beginPage = ( this.pageNumber - 1 ) / this.pageCount * this.pageCount + 1  ;
		this.endPage = this.beginPage + this.pageCount - 1 ;
		
		if( this.endPage > this.totalPage ){
			 this.endPage = this.totalPage ;
		}
		
		this.url = url ;
		
		this.pagingHtml = getPagingHtml(url) ;
		this.pagingStatus = "총 " + this.totalCount 
				+ "건[" + this.pageNumber + "/" + this.totalPage + "]" ; 
		
		DisplayInformation() ;
	}

	private String getPagingHtml( String url ){ //페이징 문자열을 만든다.
		String result = "" ;
		
		if (this.beginPage != 1) { //앞쪽
			result += "&nbsp;<a href='" + url  
					+ "?pageNumber=" + ( 1 ) + "&pageSize=" + this.pageSize + "'>맨 처음</a>&nbsp;" ;
			result += "&nbsp;<a href='" + url 
					+ "?pageNumber=" + (this.beginPage - 1 ) + "&pageSize=" + this.pageSize 
					+   "'>이전</a>&nbsp;" ;
		}
		
		//가운데
		for (int i = this.beginPage; i <= this.endPage ; i++) {
			if ( i == this.pageNumber ) {
				result += "&nbsp;<font color='red'>" + i + "</font>&nbsp;"	;
						
			} else {
				result += "&nbsp;<a href='" + url   
						+ "?pageNumber=" + i + "&pageSize=" + this.pageSize 
						+"'>" + i + "</a>&nbsp;" ;
			}
		}
		
		if ( this.endPage != this.totalPage) {//뒤쪽
			result += "&nbsp;<a href='" + url  
					+ "?pageNumber=" + (this.endPage + 1 ) + "&pageSize=" + this.pageSize 
					+ "'>다음</a>&nbsp;" ;
			
			result += "&nbsp;<a href='" + url  
					+ "?pageNumber=" + (this.totalPage ) + "&pageSize=" + this.pageSize 
					+ "'>맨 끝</a>&nbsp;" ;
		}		
		
		return result ;
	}	

	private void DisplayInformation() {
		System.out.println("총 레코드 건수 : " + totalCount + "\n");
		System.out.println("전체 페이지 수 : " + totalPage + "\n");
		System.out.println("보여줄 페이지 넘버 : " + pageNumber + "\n");
		System.out.println("한 페이지에 보여줄 건수 : " + pageSize + "\n");
		System.out.println("현재 페이지의 시작 행 : " + beginRow + "\n");
		System.out.println("현재 페이지의 끝 행 : " + endRow + "\n");
		System.out.println("보여줄 페이지 링크 수 : " + pageCount + "\n");
		System.out.println("페이징 처리 시작 페이지 번호 : " + beginPage + "\n");
		System.out.println("페이징 처리 끝 페이지 번호 : " + endPage + "\n");
		System.out.println("요청 URL : " + url + "\n");
		System.out.println("요청 URL1 : " + offset + "\n");
		System.out.println("요청 URL2 : " + limit + "\n");
		//System.out.println("하단의 숫자 페이지 링크 : " + pagingHtml + "\n");
		System.out.println("상단 우측의 현재 페이지 위치 표시 : " + pagingStatus + "\n");	
	}
	
	public String getPagingHtml() {	return pagingHtml;}
	public int getPageNumber() {	return pageNumber;}
	public int getPageSize() {	return pageSize;}	
	public String getPagingStatus() {	return pagingStatus;}	
	public int getBeginRow() {	return beginRow;}
	public int getEndRow() {	return endRow;}
	public int getOffset() {	return offset; }
	public int getLimit() {	return limit;	}	
	//상세 검색을 위하여 검색 모드와 검색 키워드 항목이 추가됨	
}