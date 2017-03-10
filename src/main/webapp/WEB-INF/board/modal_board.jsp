<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>



<div id="myModa<%=i%>" class="modal fade in">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">

			<div class="modal-header">
				<h1 class="modal-title"><%= boards[i].title %></h1>
					<div class="nickname date">
						<b><%= boards[i].author.nickname %></b>
						<br>
						<p class="createdAt"><%= boards[i].createdAt.toLocaleDateString() %></p>
					</div>
				</div>
<div class="modal-body">

<!-- 사진 보이기 부분 -->
	<% if(boards[i].filename) {%>
	<img src="/user/<%= boards[i].filename %>" alt="">
	<% } %>
<!-- 사진 보이기 부분 -->

<%= boards[i].body %>


</div>


<!-- 글 내용 안 닉네임 작성일 시작 -->

<!-- 글 내용 안 닉네임 작성일 끝 -->
<row>
<div class="modal-footer">


	<!--댓글 시작  -->

<div class="row">
	<div class="btn-group col-sm-offset-8 col-sm-4
	col-lg-offset-8 col-lg-4
	col-xs-offset-1 col-xs-11
	col-md-offset-8 col-md-4">

		<div class="comments">
			<h4>Comments (<%= boards[i].comments?boards[i].comments.length:"0" %>)</h4>

			<hr>

			<% if(boards[i].comments) { %>

					<div class="comment">
						<div class="top">
							<% if(user && user.equals(comment.author._id)) { %>

								<form class="delete"  method="post"
									action="/boards/<%=boards[i]._id%>/comments/<%=comment._id%>?_method=delete">
										<button type="submit" class="btn btn-primary btn-xs" > x </button>
								</form>

							<% } %>
							<span class="nickname"><b><%= comment.author.nickname %></b> / </span>
							<span class="createdAt"><%= comment.author.createdAt.toLocaleDateString() %></span>
							<hr class="thin">
						</div>
							<div class="body">
								<% if(boards[i].filename) {%>
                  <img src="/user/<%= boards[i].filename %>" alt="">
                <% } %>

								<p><%= comment.body %></p>
							</div>


						</div>
					</div>
					<hr>
			<% } %>
		<div>
			<form class="addComment checkValidation"
				action="/boards/<%=boards[i]._id%>/comments?" method="post">

				<textarea class="col-sm-12 cvRequired" type="text" name="comment[body]"
					cvRqErrMsg="comments is empty." cvRqErrTo="#cvErrTitle" <%= user?"":"disabled" %>
					placeholder="<%= user?"Add comment here":"Please login to make a comment" %>"></textarea>

				<button type="submit" class="btn btn-primary commentAdd" <%= user?"":"disabled" %>>Comment</button>
				<div id="cvErrTitle" class="message"></div>
			</form>
		 </div>

		</div>

	</div>
	<!-- 댓글 끝 -->
</div>


</div>


</div><!-- /.modal-content -->
</div><!-- /.modal-dalog -->
</div><!-- /.modal -->

</body>
</html>