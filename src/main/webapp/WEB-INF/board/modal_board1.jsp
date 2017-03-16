<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="./../common/favicon.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<%@ include file="./../common/favicon.jsp"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board/board_detail.css">	
</head>

<body>
	<%@ include file="./../common/top.jsp"%>

	<br>
	<br>
		<br>
		<br>
	<div class="container">
		<div class="row">
			<div class="col-sm-offset-2 col-sm-8 col-sm-offset-2">

				<div>
					<h3 class="title">${bean.title}</h3>
					<p class="time">
						Created at <br>
						${bean.regdate}
					</p>
				</div>
				<hr>

				<dir>
					<!-- 파일 업로드 부분 -->

				</dir>
				<p class="body">${bean.body}
				<p>
				<hr>

				<br>
				<br>
				<br>
				<br>

				<div class="comments">
					<c:forEach var="bean1" items="${requestScope.comment}">
					<h4>
						Comments
					</h4>

					<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

					
					<div class="comment">

						<div class="top">

							<form class="delete" method="post"
								action="<%=contextPath%>/comment/delete">
								<input type="hidden" name="cnum" value="${bean1.cnum}">
								<input type="hidden" name="no" value="${bean.no}">
								<button type="submit" class="btn btn-defalut btn-xs">
									x</button>
							</form>

							<span class="nickname"><b>${bean1.writer}
									/ </b></span> <span class="createdAt">${bean1.regdate}</span>
							<hr class="thin">
						</div>

						<div class="body1">${bean1.body}</div>
						<hr>
					</div>
					</c:forEach>
					<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

					<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
					<form class="addComment checkValidation"
						action="<%=contextPath%>/board/comment" method="post">
						<textarea style="resize: none; wrap:hard; color: #38C5B9;" rows="2" class="cvRequired col-sm-6" type="text"
							name="body"></textarea>
						<input type="hidden" name="no" value="${bean.no}">
						<input type="hidden" name="writer" value="${loginfo.id}">
						<input type="hidden" name="regdate" value="<%=formaType.format(d)%>">
						<button class="btn commentAdd" id="deleteBtn" type="submit">
							Comment</button>
						<div id="cvErrTitle" class="message"></div>
					</form>

					<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
				</div>

				<br>
				<br>

				<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
				
				
				
				
				<div class="tools">
					<a href="<%=contextPath%>/board/main"><button class="btn">Back</button></a>
					<a href="<%=contextPath%>/board/edit?no=${bean.no}" id="EditBtn" >
					<button class="btn">Edit</button></a>
					<!-- Delete button here -->
					<form class="btn_delete"
						action="<%=contextPath%>/board/delete" method="post">
						<input type="hidden" value="${bean.no}" name="no">
						<button type="submit" class="btn">Delete</button>
					</form>
				</div>

			</div>
		</div>
	</div>

</body>
</html>