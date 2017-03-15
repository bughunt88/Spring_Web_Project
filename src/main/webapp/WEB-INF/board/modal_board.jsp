<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Insert title here</title>

</head>
<body>

	<div id="myModa${bean.no}" class="modal fade in">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">

				<div class="modal-header">
					<h1 class="modal-title" style="color: #38C5B9;">${bean.title}
					</h1>
					<div class="nickname date">
						<b style="color: #38C5B9;">${bean.writer}</b> <br>
						<p class="createdAt" style="color: #38C5B9;">${bean.regdate}</p>
					</div>
				</div>
				<div class="modal-body" style="color: #38C5B9;">${bean.body}
					<%=session.getAttribute("ccc")%> </div>

				<row>
				<div class="modal-footer">


					<!--댓글 시작  -->
					
						<div class="row">
							<div
								class="btn-group col-sm-offset-8 col-sm-4
	col-lg-offset-8 col-lg-4
	col-xs-offset-1 col-xs-11
	col-md-offset-8 col-md-4">





								<div class="comments">
									<h4 style="color: #38C5B9;">Comments ()</h4>
									<hr>
									
									<c:forEach var="bean4" items="<%=session.getAttribute("ccc")%>">
									<div class="comment">
										<div class="top">

											<span class="nickname"><b>${bean4.writer}</b></span> <span
												class="createdAt">${bean4.regdate}</span>
											<hr class="thin">
										</div>
										<div class="body">
											<p>${bean4.body}</p>
										</div>


									</div>
									</c:forEach>
									
								</div>

								<hr>

								<div>
									<form class="addComment checkValidation"
										action="<%=request.getContextPath()%>/board/comment"
										method="post">
										<textarea style="resize: none; wrap: hard; color: #38C5B9;"
											class="col-sm-12 cvRequired" type="text" name="body"
											cvRqErrMsg="comments is empty." cvRqErrTo="#cvErrTitle"></textarea>
										<input type="hidden" name="writer" value="${loginfo.id}">
										<input type="hidden" name="no" value="${bean.no}"> 
										<input type="hidden" name="regdate" value="2017.1.12">
										<button type="submit" class="btn main-btn pull-right"
											id="writeSubmit" style="background: #ffffff; color: #38C5B9;">Comment ${bean.no}</button>
										<div id="cvErrTitle" class="message"></div>
									</form>
								</div>

							</div>

						</div>
					
					<!-- 댓글 끝 -->


				</div>
			</div>


		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dalog -->
	<!-- /.modal -->

</body>
</html>