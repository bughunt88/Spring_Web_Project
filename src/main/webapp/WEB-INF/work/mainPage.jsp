<%@page import="myproject.common.Paging"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>

<%@ include file="./../common/favicon.jsp"%>

<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:600,300"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/board/aboard1.css">


</head>

<body>

	<%@ include file="./../common/top.jsp"%>

	<div class="container">
		<div class="row">
			<div
				class="col-lg-offset-2 col-lg-8 col-lg-offset-2
		col-md-offset-1 col-lg-10 col-md-offset-1
		col-sm-offset-1 col-lg-10 col-sm-offset-1
		col-xs-offset-1 col-lg-10 col-xs-offset-1">


				<br> <br> <br id="section-3"> <br>
				<h2 class="text-center">
					<i class="fa fa-bar-chart"> Analysis</i>
				</h2>
				<hr>

				<table class="table" class="text-center">
					<thead>
						<tr>
							<th width="40%" style="text-align: center;">Title</th>
							<th width="10%" style="text-align: center;">Date</th>
						</tr>

						<c:forEach var="bean" items="${requestScope.lists}">
							<c:set var="parameters"
								value="pageNumber=${pageNumber}&pageSize=${pageSize}" />
							<tr>

								<th width="40%"><a data-toggle="modal"
									href="<%=contextPath%>/work/detail?no=${bean.no}&${parameters}">&nbsp;<i
										class="fa fa-circle" aria-hidden="true">  ${bean.title}</i></a></th>
								<!-- 모달창 -->
								<th width="10%" style="text-align: center;">${bean.regdate}</th>
							</tr>
						</c:forEach>

					</thead>

					</tbody>
				</table>

				<div align="center">
					<footer>${requestScope.pageInfo.pagingHtml}</footer>
				</div>
				<c:set var="loginid" value="${loginfo.id}" />
				<c:set var="writer" value="admin" />
				<c:if test="${loginid eq writer}">
					<form action="<%=contextPath%>/work/insert" method="get">
						<input type="submit" value="Write" class="btn main-btn pull-right" />
					</form>
				</c:if>

			</div>
		</div>
	</div>

</body>
</html>
