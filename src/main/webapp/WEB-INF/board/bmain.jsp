<%@page import="myproject.board.model.Board"%>
<%@page import="javax.swing.event.ListSelectionEvent"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="./../common/favicon.jsp"%>

<head>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/board/board.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/board/file.css">
<title>D3 Exam</title>
<meta charset="utf-8" y>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
</head>

<body>

	<%@ include file="./../common/top.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 text-center">
				<br> <br> <br>
				<%@ include file="./nav.jsp"%><!-- 사이드네비 -->
			</div>
			<div id="wrapper">
				<div
					class="col-lg-offset-1 col-lg-7 col-lg-offset-1
		col-md-offset-1 col-md-7 col-md-offset-1
		col-sm-offset-1 col-sm-7 col-sm-offset-1
		col-xs-offset-1 col-xs-7 col-xs-offset-1">

					<br id="section-1"> <br>
					<h2 class="text-center ">
						<i class="fa fa-pencil" aria-hidden="true"> Write</i>
					</h2>
					<hr>
					<c:set var="abcd" value="<%=contextPath%>" />
					<form:form role="form" id="example1" class="contact-form1"
						method="post" action="${abcd}/board/insert"
						enctype="multipart/form-data" commandName="board">
						<div class="row">
							<div class="col-lg-6">
								<div class="form-group">
									<input type="text" class="form-control" name="title"
										autocomplete="off" id="ex1_username" placeholder="title"
										style="color: #38C5B9;">
									<form:errors path="title" cssClass="myerr" /> 
								</div>
							</div>
							<div class="col-lg-6">
								<div class="form-group">
									<!-- <input type="" class="form-control" name="category" autocomplete="off" id="category" placeholder="category"> -->

									<select id="category" name="category" class="form-control">
										<option selected="true" value="">category</option>
										<option value="question">Question</option>
										<option value="study">Request</option>
									</select>
									<form:errors path="category" cssClass="myerr" /> 
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12">
								<div class="form-group">
									<textarea style="resize: none; wrap: hard; color: #38C5B9;"
										class="form-control textarea" rows="6" name="body" id="body"
										placeholder="substance"></textarea>
									<form:errors path="body" cssClass="myerr" /> 
									<input type="hidden" name="writer" value="<%=loginfo.getId()%>">
									<input type="hidden" name="regdate"
										value="<%=formaType.format(d)%>">
								</div>
							</div>
						</div>
						<div></div>
						<div class="row">
							<div class="col-lg-12">
								<!-- 파일 넣기 부분 -->
								<input type="text" id="fileName" class="file_input_textbox"
									readonly="readonly">

								<div class="file_input_div">
									<input type="button" value="Search files"
										class="file_input_button" /> <input type="file"
										class="file_input_hidden"
										onchange="javascript: document.getElementById('fileName').value = this.value"
										name="upload" />
								</div>
								<!-- 파일 넣기 부분 -->

								<div class="submit">
									<input type="submit" class="btn main-btn pull-right" value="Write" />
								</div>
							</div>
						</div>
					</form:form>

					<!-- 글쓰기 끝 -->

					<br> <br> <br id="section-3"> <br>
					<h2 class="text-center">
						<i class="fa fa-cog" aria-hidden="true"> Question</i>
					</h2>
					<hr>
					<table class="table" class="text-center">
						<thead>
							<tr>
								<th width="40%" style="text-align: center;">Title</th>
								<th width="10%" style="text-align: center;">Writer</th>
								<th width="10%" style="text-align: center;">Date</th>
							</tr>

							<c:forEach var="bean" items="${requestScope.lists}">

								<tr>

									<th width="40%"><a data-toggle="modal"
										href="<%=contextPath%>/board/comment?no=${bean.no}"><i
											class="fa fa-circle" aria-hidden="true"> ${bean.title}</i></a></th>
									<!-- 모달창 -->
									<th width="10%" style="text-align: center;">${bean.writer}
									</th>
									<th width="10%" style="text-align: center;">${bean.regdate}</th>
								</tr>
							</c:forEach>

						</thead>

						</tbody>
					</table>
					<br> <br> <br id="section-2"> <br>

					<h2 class="text-center">
						<i class="fa fa-comment" aria-hidden="true"> Request</i>
					</h2>
					<hr>
					<table class="table" class="text-center">
						<thead>
							<tr>
								<th width="40%" style="text-align: center;">Title</th>
								<th width="10%" style="text-align: center;">Writer</th>
								<th width="10%" style="text-align: center;">Date</th>
							</tr>
							<c:forEach var="bean1" items="${requestScope.lists1}">
								<tr>
									<th width="40%"><a data-toggle="modal"
										href="<%=contextPath%>/board/comment?no=${bean1.no}"><i
											class="fa fa-circle" aria-hidden="true"> ${bean1.title}</i></a></th>
									<th width="10%" style="text-align: center;">${bean1.writer}
									</th>
									<th width="10%" style="text-align: center;">${bean1.regdate}</th>
								</tr>
							</c:forEach>
						</thead>
						<tbody>
						</tbody>
					</table>
					<br> <br> <br> <br>
				</div>
			</div>
			<!-- footer자리 -->
		</div>
	</div>

	<!-- 스크롤 코딩 시작 -->

	<script src="${pageContext.request.contextPath}/js/board/jquery.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/board/jquery.scrollTo.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/board/jquery.nav.min.js"></script>

	<script>
		$(document).ready(function() {
			$('#nav').onePageNav({
				begin : function() {
					console.log('start')
				},
				end : function() {
					console.log('stop')
				}
			});
		});
	</script>

	<!-- 스크롤 코딩 끝 -->

</body>
</html>
