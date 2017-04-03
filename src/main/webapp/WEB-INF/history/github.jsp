<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>

<%@ include file="./../common/favicon.jsp"%>

<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Program Study</title>
<meta name="description"
	content="Blueprint: Blueprint: Google Grid Gallery" />
<meta name="keywords"
	content="google getting started gallery, image gallery, image grid, template, masonry" />
<meta name="author" content="Codrops" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/board/demo1.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/board/component.css">
<script
	src="${pageContext.request.contextPath}/js/board/modernizr.custom.js"></script>

<link rel="shortcut icon" href="../favicon.ico">

<style type="text/css">
.grid figcaption {
	background: #9D9E94;
	padding: 25px;
}

.tt {
	position: relative;
	left: 30px;
	padding-right: 10px;
}

.yy {
	color: #9D9E94;
}
</style>

</head>

<body>

	<%@ include file="./../common/top.jsp"%>

	<div class="container">
		<header class="clearfix">
			<span>History</span>
			<h1>
				<a class="mm" href="<%=contextPath%>/history/python"><i
					class="glyphicon glyphicon-chevron-left">&nbsp;</i></a><i
					class="fa fa-github" aria-hidden="true"> GitHub </i> &nbsp; <a
					class="mm1" href="<%=contextPath%>/history/java"><i
					class="glyphicon glyphicon-chevron-right"></i></a>
			</h1>
			<h1 class="tt">
				<a class="yy" href="https://github.com/bughunt88" target="_blank"><i
					class="fa fa-github" aria-hidden="true"></i></a>
			</h1>
		</header>

		<div id="grid-gallery" class="grid-gallery">
			<section class="grid-wrap">
				<ul class="grid">
					<li class="grid-sizer"></li>
					<!-- for Masonry column width -->

					<li>
						<figure>
							<img src="${pageContext.request.contextPath}/img/git.jpg"
								alt="img01" />
							<figcaption>
								<h3>GitHub 먹자 !</h3>
								<p>GitHub??? 알고 먹자</p>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="${pageContext.request.contextPath}/img/git3.png"
								alt="img02" />
							<figcaption>
								<h3>Review</h3>
								<p>곱씹어보자 !!!</p>
							</figcaption>
						</figure>
					</li>

				</ul>
			</section>
			<!-- // grid-wrap -->

			<section class="slideshow">
				<ul>

					<li>
						<figure>
							<figcaption class="momo">
								<h3>GitHub 먹자 !</h3>
								<p>분산 버전 관리 툴인 깃(Git)을 사용하는 프로젝트를 지원하는 웹호스팅 서비스로 지금까지한 프로젝트를
									관리하도록 사용했다.</p>
							</figcaption>
							<img src="${pageContext.request.contextPath}/img/git1.jpg"
								alt="img01" />
						</figure>
					</li>

					<li>
						<figure>
							<figcaption class="momo">
								<h3>Review</h3>
								<p>GitHub을 사용하면서 프로젝트 관리에 한층 수월함을 느끼게 되었다.<br> 또 다른 사람들 코드도 볼 수
									있고, 질문도 할 수 있어 프로그래머에겐 좋은 프로그램이라고 느꼈다. 지금은 기본적인 기능들만 사용가능하지만  GitHub에
									다른 기능들도 공부해 사용할 것을 목표로 하고 있다.</p>
							</figcaption>
							<img src="${pageContext.request.contextPath}/img/git3.png"
								alt="img02" />
						</figure>
					</li>

				</ul>
				<nav>
					<span class="icon nav-prev"></span> <span class="icon nav-next"></span>
					<span class="icon nav-close"></span>
				</nav>
			</section>
			<!-- // slideshow -->
		</div>
		<!-- // grid-gallery -->
	</div>

	<script
		src="${pageContext.request.contextPath}/js/board/imagesloaded.pkgd.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/board/masonry.pkgd.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/board/classie.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/board/cbpGridGallery.js"></script>

	<script>
		new CBPGridGallery(document.getElementById('grid-gallery'));
	</script>

</body>
</html>
