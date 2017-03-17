<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>

<%@ include file="./../common/favicon.jsp"%>

<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:600,300"
	rel="stylesheet" type="text/css" />



<link rel="stylesheet" href="${pageContext.request.contextPath}/css/valid/jquery.ketchup.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/valid/main.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/valid/reset.css">


</head>

<body>

	<%@ include file="./../common/top.jsp"%>

	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 text-center">
		<div id="wrapper">
			<form action="index.html" id="example1">
				<div>
					<label for="ex1_username">Username</label> <input type="text"
						id="ex1_username" class="validate(required, username)" />
				</div>
				<div>
					<label for="ex1_password">Password</label> <input type="password"
						id="ex1_password" class="validate(required)" />
				</div>
				<div>
					<label for="ex1_password_conf">Password Confirmation</label> <input
						type="password" id="ex1_password_conf"
						class="validate(required, match(#ex1_password))" />
				</div>
				<div>
					<label for="ex1_roles">Speciality</label>
					<p>
						<input type="checkbox" name="role" value="jquery" /> jQuery
					</p>
					<p>
						<input type="checkbox" name="role" value="js" /> JavaScript
					</p>
					<p>
						<input type="checkbox" name="role" value="rails" /> Rails
					</p>
					<p>
						<input type="checkbox" name="role" value="php" /> PHP
					</p>
					<p>
						<input type="checkbox" name="role" value="wp" /> Wordpress
					</p>
					<p>
						<input type="checkbox" name="role" value="other"
							class="validate(rangeselect(1,3))" /> Other
					</p>
					<div class="clear"></div>
				</div>
				<div>
					<label for="ex1_about">About you</label>
					<textarea id="ex1_about" rows="1"
						class="validate(rangelength(10,140))"></textarea>
				</div>
				<div class="submit">
					<input type="submit" value="(Try to) Submit" />
				</div>
			</form>
			More script and css style : <a href="http://www.htmldrive.net/"
				title="HTML DRIVE - Free DHMTL Scripts,Jquery plugins,Javascript,CSS,CSS3,Html5 Library">www.htmldrive.net
			</a>

		</div>
	</div>
	
<script src="${pageContext.request.contextPath}/js/valid/jquery.ketchup.js"></script>
<script src="${pageContext.request.contextPath}/js/valid/jquery.ketchup.messages.js"></script>
<script src="${pageContext.request.contextPath}/js/valid/jquery.ketchup.validations.basic.js"></script>
<script src="${pageContext.request.contextPath}/js/valid/main.js"></script>
<script src="${pageContext.request.contextPath}/js/valid/jquery.min.js"></script>
</body>
</html>
