<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>

<%@ include file="./../common/favicon.jsp"%>

<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:600,300"
	rel="stylesheet" type="text/css" />
<style type="text/css">
.go{
	text-align: center;
}
</style>
</head>

<body>

	<%@ include file="./../common/top.jsp"%>

	<div class="container">

		<!-- main start-->

		<!-- views/posts/index.ejs -->
		<br> <br> <br> <br>
		<div class="row">
			<div class="col-sm-offset-2 col-sm-8 col-sm-offset-2">
				<h1 class="go"><i class="fa fa-refresh" aria-hidden="true"> Edit Post</i></h1>
				<hr>
				<form class="posts_form" action="<%=contextPath%>/board/edit" method="post">

					<div class="ho3">
						<h4>Title</h4>
					</div>
					
					<div class="ho1">
						<input type="text" name="title" value="${bean.title}"
							class="form-control" style="color: #38C5B9;">
					</div>
					<br>
					<br>
					<br>

					<div class="ho3">
						<h4>Body</h4>
					</div>

					<div class="ho">
						<textarea style="resize: none; wrap:hard; color: #38C5B9;" rows="6" name="body" class="form-control textarea" style="color: #38C5B9;">${bean.body}</textarea>
					</div>
					<hr>
					<br>

					<input type="hidden" name="category" value="${bean.category}">
					<input type="hidden" name="writer" value="${bean.writer}">
					<input type="hidden" name="no" value="${bean.no}">
					<input type="hidden" name="upfile" value="${bean.upfile}">
					<input type="hidden" name="regdate" value="${bean.regdate}">

					<button type="submit" class="btn" style="color: #38C5B9; background-color: white;" >Submit</button>
				</form>
				<br> <a href="javascript:history.back()"><button
						class="btn" style="color: #38C5B9; background-color: white;">Back</button></a>
			</div>
		</div>

		<!-- main end -->
	</div>
	<!--posts end -->

</body>
</html>
