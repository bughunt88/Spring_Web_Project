<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h2 class="text-center">글쓰기</h2>
	<hr>
	<form role="form" id="contact-form1" class="contact-form1"
		method="post" action="/boards" enctype="multipart/form-data">
		<div class="row">
			<div class="col-lg-6">
				<div class="form-group">
					<input type="text" class="form-control" name="title"
						autocomplete="off" id="title" placeholder="title">
				</div>
			</div>
			<div class="col-lg-6">
				<div class="form-group">
					<!-- <input type="" class="form-control" name="category" autocomplete="off" id="category" placeholder="category"> -->

					<select id="category" name="category" class="form-control">
						<option selected="true" value="none">category</option>
						<option value="question">질문</option>
						<option value="study">요청</option>
					</select>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="form-group">
					<textarea style="resize: none; wrap:hard;" class="form-control textarea" rows="6" name="body"
						id="body" placeholder="substance"></textarea>
				</div>
			</div>
		</div>
		<div></div>
		<div class="row">
			<div class="col-lg-12">
				<!-- 파일 넣기 부분 -->
				<input type="file" name="avatar" value="">
				<!-- 파일 넣기 부분 -->
				<button type="submit" class="btn main-btn pull-right"
					id="writeSubmit">글 쓰기</button>
			</div>
		</div>
	</form>
</body>
</html>