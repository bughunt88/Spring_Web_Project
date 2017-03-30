<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	<script>
	document.addEventListener('DOMContentLoaded', function() {
		document.querySelector('main').className += 'loaded';
	});
</script>

</head>

<body>

	<%
		String gotopage = request.getContextPath();
	%>

	<header class="header">

	<div class="mee">
		<a href="<%=contextPath%>/common/main"> <img align="middle"
			src="${pageContext.request.contextPath}/img/7.png"
			class="img-rounded" width="70" height="70">
		</a>
	</div>

	<div class="burger">
		<div class="burger__patty"></div>
		<div class="burger__patty"></div>
		<div class="burger__patty"></div>
	</div>

	<nav class="menu">
	<div class="menu__brand">

		<div class="logo">
			<a href="<%=contextPath%>/common/main" class="go"> <img
				align="middle" src="${pageContext.request.contextPath}/img/3.png"
				class="img-rounded" width="200" height="200">
			</a>
		</div>
	</div>

	<ul class="menu__list">
		<%
			if (loginfo != null) {
		%>
		<li class="menu__item"><p class="menu__link">
				<i class="glyphicon glyphicon-heart"></i> Hello!
				<%=loginfo.getId()%>
			</p></li>
		<%
			}
		%>
		<li class="menu__item"><a href="<%=contextPath%>/work/main"
			class="menu__link"><i class="fa fa-bar-chart"></i> Analysis</a></li>

		<li class="menu__item"><a href="<%=contextPath%>/history/main"
			class="menu__link menu__link--social"><i class="fa fa-book"></i>
				History</a></li>
		
		
		<li class="menu__item">
		<c:if test="${not empty sessionScope.loginfo}">
				<a href="<%=contextPath%>/board/main" class="menu__link"><i
					class="glyphicon glyphicon-pencil"></i> Board</a></c:if></li>
		

		<li class="menu__item"><c:if test="${empty sessionScope.loginfo}">
				<a href="<%=contextPath%>/member/login"
					class="menu__link menu__link--social"><i class="fa fa-user"></i>
					Login</a>

			</c:if> <c:if test="${not empty sessionScope.loginfo}">
				<a href="<%=contextPath%>/member/logout"
					class="menu__link menu__link--social"><i
					class="fa fa-user-times"></i> Logout</a>
				</a>
			</c:if></li>

	</ul>
	</nav> </header>

	<script src="${pageContext.request.contextPath}/js/index.js"></script>

</body>
</html>