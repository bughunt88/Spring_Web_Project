<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>

<%@ include file="./../common/favicon.jsp"%>

<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:600,300"
	rel="stylesheet" type="text/css" />


</head>

<body>

	<%@ include file="./../common/top.jsp"%>

		<div class="row">
			<div
				class="col-lg-offset-1 col-lg-10 col-lg-offset-1
		col-md-offset-1 col-lg-10 col-md-offset-1
		col-sm-offset-1 col-lg-10 col-sm-offset-1
		col-xs-offset-1 col-lg-10 col-xs-offset-1">





				<!-- main start-->

				<!-- views/posts/index.ejs -->
				<br> <br> <br> <br>
				<div class="row">
					<div class="col-sm-offset-2 col-sm-8 col-sm-offset-2">
						<h1 class="go">
							<i class="fa fa-refresh" aria-hidden="true" style="text-align: center;"> Analysis Post</i>
						</h1>
						<hr>
						<form class="posts_form" action="<%=contextPath%>/work/insert"
							method="post">

							<div class="ho3">
								<h4>Title</h4>
							</div>

							<div class="ho1">
								<input type="text" name="title" value=""
									class="form-control" style="color: #38C5B9;">
							</div>

							<div class="ho3">
								<h4>Body (Column)</h4>
							</div>

							<div class="ho">
								<textarea style="resize: none; wrap: hard; color: #38C5B9;"
									rows="6" name="body" class="form-control textarea"
									style="color: #38C5B9;"></textarea>
							</div>
							
							<div class="ho3">
								<h4>Body (Analysis) </h4>
							</div>

							<div class="ho">
								<textarea style="resize: none; wrap: hard; color: #38C5B9;"
									rows="6" name="body1" class="form-control textarea"
									style="color: #38C5B9;"></textarea>
							</div>
							
							<div class="ho3">
								<h4>Body (Result)</h4>
							</div>

							<div class="ho">
								<textarea style="resize: none; wrap: hard; color: #38C5B9;"
									rows="6" name="body2" class="form-control textarea"
									style="color: #38C5B9;"></textarea>
							</div>
							
							
							<hr>
							
							<input
								type="hidden" name="regdate" value="<%=formaType.format(d)%>">
								<input
								type="hidden" name="writer" value="${loginfo.id}">

							<button type="submit" class="btn"
								style="color: #38C5B9; background-color: white;">Submit</button>
						</form>
						<br> <a href="javascript:history.back()"><button
								class="btn" style="color: #38C5B9; background-color: white;">Back</button></a>
					</div>
				</div>

				<!-- main end -->
			</div>
			<!--posts end -->



		</div>

</body>
</html>
