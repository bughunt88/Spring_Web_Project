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

	<div class="container">

		<!-- main start-->

		<!-- views/posts/index.ejs -->
		<br> <br> <br> <br>
		<div class="row">
			<div class="col-sm-offset-2 col-sm-8 col-sm-offset-2">
				<h3>Edit Post</h3>
				<form class="posts_form" action="<%=contextPath%>/board/edit" method="post">

					<div class="ho3">
						<label>Title</label>
					</div>
					<div class="ho1">
						<input type="text" name="title" value="${bean.title}"
							class="form-control" style="color: #38C5B9;">
					</div>
					<br>
					<br>
					<br>

					<div class="ho3">
						<label>Body</label>
					</div>

					<div class="ho">
						<textarea style="resize: none; wrap:hard; color: #38C5B9;" rows="6" name="body" class="form-control textarea" style="color: #38C5B9;">${bean.body}</textarea>
					</div>
					<br>
					<br>
					<br>
					<br>

					<input type="hidden" name="category" value="${bean.category}">
					<input type="hidden" name="writer" value="${bean.writer}">
					<input type="hidden" name="no" value="${bean.no}">
					<input type="hidden" name="upfile" value="${bean.upfile}">
					<input type="hidden" name="regdate" value="${bean.regdate}">

					<button type="submit" class="btn">Submit</button>
				</form>
				<br> <a href="javascript:history.back()"><button
						class="btn">Back</button></a>
			</div>
		</div>

		<!-- main end -->
	</div>
	<!--posts end -->

</body>
</html>
