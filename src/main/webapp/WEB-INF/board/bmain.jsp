<%@page import="myproject.board.model.Board"%>
<%@page import="javax.swing.event.ListSelectionEvent"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="./../common/favicon.jsp"%>

<head>
	<script>
	$(document).ready(function(){
		$('#writeSubmit').click(function(){
			var categoryUnselected = $('#category').val();
			if( categoryUnselected === "none"){
				alert('카테고리를 선택해 주세요.');
				return false;
			}
			var titleUntyped = $('#title').val();
			if( titleUntyped == "" ){
				alert("제목을 입력해 주세요.");
				return false;
			}
			var bodyUntyped = $('#body').val();
			if( bodyUntyped == "" ){
				alert("내용을 입력해 주세요.");
				return false;
			}else{
				return true;
			}
		});
	});
</script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board/board.css">		
		<title>D3 Exam</title>
		<meta charset="utf-8"y>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>Document</title>
</head>

<body>

	<%@ include file="./../common/top.jsp"%>
	
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 text-center" >
				<br><br><br>
				<%@ include file="./nav.jsp" %><!-- 사이드네비 -->
			</div>
		<div class="col-lg-offset-1 col-lg-7 col-lg-offset-1
		col-md-offset-1 col-md-7 col-md-offset-1
		col-sm-offset-1 col-sm-7 col-sm-offset-1
		col-xs-offset-1 col-xs-7 col-xs-offset-1" >

<br id="section-1">
<br>
	<h2 class="text-center ">글쓰기 </h2>
	<hr>
	<c:set var="abcd" value="<%=contextPath%>"/>	
	<form:form role="form" id="contact-form1" class="contact-form1"
		method="post" action="${abcd}/board/insert" enctype="multipart/form-data">
		<div class="row">
			<div class="col-lg-6">
				<div class="form-group">
					<input type="text" class="form-control" name="title"
						autocomplete="off" id="title" placeholder="title" style="color: #38C5B9;">
				</div>
			</div>
			<div class="col-lg-6">
				<div class="form-group">
					<!-- <input type="" class="form-control" name="category" autocomplete="off" id="category" placeholder="category"> -->

					<select id="category" name="category" class="form-control">
						<option selected="true" value="none">category</option>
						<option value="question">질문 </option>
						<option value="study">요청</option>
					</select>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="form-group">
					<textarea style="resize: none; wrap:hard; color: #38C5B9;" class="form-control textarea" rows="6" name="body"
						id="body" placeholder="substance"></textarea>
						<input type="hidden" name="writer" value="<%=loginfo.getId()%>">
						<input type="hidden" name="regdate" value="<%=formaType.format(d)%>">
				</div>
			</div>
		</div>
		<div></div>
		<div class="row">
			<div class="col-lg-12">
				<!-- 파일 넣기 부분 -->
				<input type="file" class="btn main-btn pull-right" name="upload" name="upload" value="">
				<!-- 파일 넣기 부분 -->
				<button type="submit" class="btn main-btn pull-right"
					id="writeSubmit">글 쓰기</button>
			</div>
		</div>
	</form:form>
			<br>
			<br>
			<br id="section-3">
			<br>
								<h2  class="text-center">질문</h2>
								<hr>
									<table class="table" class="text-center">
									<thead>
									<tr >
										<th width="40%" style="text-align: center;">Title</th>
										<th width="10%" style="text-align: center;">Writer </th>
										<th width="10%" style="text-align: center;">Date</th>
									</tr>
									
									<c:forEach var="bean" items="${requestScope.lists}">
									
									<tr>
									
										<th width="40%"> <a data-toggle="modal" data-target="#myModa${bean.no}" href="<%=contextPath%>/board/comment?no=${bean.no}"><i class="fa fa-circle" aria-hidden="true"> ${bean.title}</i></a> </th>
										<!-- 모달창 -->
										
												<%@ include file="./modal_board.jsp"%>		
										
										<th width="10%" style="text-align: center;">${bean.writer} </th>
										<th width="10%" style="text-align: center;">${bean.regdate}</th>
									</tr>
									</c:forEach>
									</thead>

									</tbody>
					 			</table>
					<br><br>
					<br id="section-2"><br>

					<h2  class="text-center">요청</h2>
					<hr>
					<table class="table" class="text-center">
						<thead>
						<tr>
							<th width="40%" style="text-align: center;">Title</th>
							<th width="10%" style="text-align: center;">Writer </th>
							<th width="10%" style="text-align: center;">Date</th>
						</tr>
						<c:forEach var="bean1" items="${requestScope.lists1}">
						<tr>
							<th width="40%"> <a href="<%=contextPath%>/board/detail?no=${bean.no}"><i class="fa fa-circle" aria-hidden="true"> ${bean1.title}</i></a> </th>
							<th width="10%" style="text-align: center;">${bean1.writer} </th>
							<th width="10%" style="text-align: center;">${bean1.regdate}</th>
						</tr>
							</c:forEach>
						</thead>
							<tbody>
						</tbody>
					</table>
				<br><br>
				<br><br>
		</div>

		<!-- footer자리 -->
		</div>
	</div>

<!-- 스크롤 코딩 시작 -->

<script src="${pageContext.request.contextPath}/js/board/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/board/jquery.scrollTo.js"></script>
<script src="${pageContext.request.contextPath}/js/board/jquery.nav.min.js"></script>

	<script>
	$(document).ready(function() {
	  $('#nav').onePageNav({
	    begin: function() {
		  console.log('start')
	    },
	    end: function() {
		  console.log('stop')
	    }
	  });
	});
	</script>

<!-- 스크롤 코딩 끝 -->

</body>
</html>
