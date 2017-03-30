<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="./../common/favicon.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/board/detail1.css">

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
					${bean.writer}
					<h3 class="title">${bean.title}</h3>
					<p class="time">
						Created at <br> ${bean.regdate}
					</p>
				</div>
				<hr>
				<p class="body">${bean.body}
				<p class="body">${bean.body1}
				<p class="body">${bean.body2}
				<p>
				<hr>

				<br> <br> <br> <br>

				<div class="comments">

					<h4>Comments</h4>

					<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

					<c:forEach var="bean1" items="${requestScope.comment}">
						<div class="comment">

							<div class="top">

								<form class="delete" method="post"
								
									action="<%=contextPath%>/work/delete">
									<c:set var="loginid" value="${loginfo.id}" />
									<c:set var="writer" value="${bean1.writer}" />
										<c:if test="${loginid eq writer}">
											<input type="hidden" name="cnum" value="${bean1.cnum}">
											<input type="hidden" name="no" value="${bean.no}">
											<button type="submit" class="btn btn-defalut btn-xs">
												x</button>
										</c:if>

								</form>

								<span class="nickname"><b>${bean1.writer} / </b></span> <span
									class="createdAt">${bean1.regdate}</span>
								<hr class="thin">
							</div>

							<div class="body1">${bean1.body}</div>
							<hr>
						</div>
					</c:forEach>
					<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

					<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

					<c:if test="${loginid != null}">
						<form class="addComment checkValidation"
							action="<%=contextPath%>/work/comment" method="post">
							<textarea style="resize: none; wrap: hard; color: #38C5B9;"
								rows="2" class="cvRequired col-sm-6" type="text" name="body"></textarea>
							<input type="hidden" name="no" value="${bean.no}"> <input
								type="hidden" name="writer" value="${loginfo.id}"> <input
								type="hidden" name="regdate" value="<%=formaType.format(d)%>">
							<button class="btn commentAdd" id="deleteBtn" type="submit"
								style="color: #38C5B9; background-color: white;">
								Comment</button>
						</form>
					</c:if>
					<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
				</div>

				<br> <br>

				<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->




				<div class="tools">
					<a href="<%=contextPath%>/work/main"><button class="btn"
							style="color: #38C5B9; background-color: white;">Back</button></a>
					<c:set var="writer1" value="admin" />
					<c:if test="${loginid != null}">
						<c:if test="${loginid eq writer1}">
							<a href="<%=contextPath%>/work/edit?no=${bean.no}" id="EditBtn">
								<button class="btn"
									style="color: #38C5B9; background-color: white;">Edit</button>
							</a>
							<!-- Delete button here -->
							<form class="btn_delete" action="<%=contextPath%>/work/delete"
								method="post">
								<input type="hidden" value="${bean.no}" name="no">
								<button type="submit" class="btn"
									style="color: #38C5B9; background-color: white;">Delete</button>
							</form>
						</c:if>
					</c:if>
				</div>

			</div>
		</div>
	</div>

</body>
</html>