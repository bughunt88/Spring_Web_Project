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
	background: #008040;
	padding: 25px;
}

.tt {
	position: relative;
	left: 30px;
	padding-right: 10px;
}

.yy {
	color: #008040;
}
</style>

</head>

<body>

	<%@ include file="./../common/top.jsp"%>

	<div class="container">
		<header class="clearfix">
			<span>History</span>
			<h1>
				<a class="cc" href="<%=contextPath%>/history/node"><i
					class="glyphicon glyphicon-chevron-left">&nbsp;</i></a><i
					class="icon-spring" aria-hidden="true"> Spring Framework
					Homepage</i> &nbsp; <a class="cc1"
					href="<%=contextPath%>/history/python"><i
					class="glyphicon glyphicon-chevron-right"></i></a>
			</h1>
			<h1 class="tt">
				<a class="yy" href="https://github.com/bughunt88/spring_project"
					target="_blank"><i class="fa fa-github" aria-hidden="true"></i></a>
			</h1>
			<h1 class="tt">
				<a class="yy" href="https://vast-gorge-92696.herokuapp.com/"
					target="_blank"><i class="fa fa-home" aria-hidden="true"></i></a>
			</h1>
		</header>

		<div id="grid-gallery" class="grid-gallery">
			<section class="grid-wrap">
				<ul class="grid">
					<li class="grid-sizer"></li>
					<!-- for Masonry column width -->

					<li>
						<figure>
							<img src="${pageContext.request.contextPath}/img/spring1.png"
								alt="img01" />
							<figcaption>
								<h3>Spring 먹자 !</h3>
								<p>Spring Framework??? 알고 먹자</p>
							</figcaption>
						</figure>
					</li>

					<li>
						<figure>
							<img src="${pageContext.request.contextPath}/img/spring7.png"
								alt="img02" />
							<figcaption>
								<h3>Main Page</h3>
								<p>
									Spring Framework <br>활용하여 홈페이지 만들자
								</p>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="${pageContext.request.contextPath}/img/spring2.png"
								alt="img02" />
							<figcaption>
								<h3>Menu Page</h3>
								<p>메뉴 페이지 구성</p>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="${pageContext.request.contextPath}/img/spring3.png"
								alt="img02" />
							<figcaption>
								<h3>Admin Page</h3>
								<p>Python 자료 분석 게시판 페이지</p>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="${pageContext.request.contextPath}/img/spring4.png"
								alt="img02" />
							<figcaption>
								<h3>History Page</h3>
								<p>
									지금까지 배운 <br> 프로그래밍 페이지
								</p>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="${pageContext.request.contextPath}/img/spring6.png"
								alt="img02" />
							<figcaption>
								<h3>History Page</h3>
								<p>프로그래밍 페이지 상세보기</p>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="${pageContext.request.contextPath}/img/spring5.png"
								alt="img02" />
							<figcaption>
								<h3>Board Page</h3>
								<p>질문/요청 게시판 페이지</p>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img
								src="${pageContext.request.contextPath}/img/history_java5.png"
								alt="img02" />
							<figcaption>
								<h3>&nbsp&nbsp&nbsp&nbsp&nbsp Review</h3>
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
								<h3>Spring 먹자 !</h3>
								<p>자바 플랫폼을 위한 프레임워크로 Spring Framework로 홈페이지를 만드는것을 기획했다.</p>
							</figcaption>
							<img src="${pageContext.request.contextPath}/img/spring1.png"
								alt="img01" />
						</figure>
					</li>
					<li>
						<figure>
							<figcaption class="momo">
								<h3>Main Page</h3>
								<p>홈페이지의 메인 페이지로 Chrome에서만 작동한다.</p>
							</figcaption>
							<img src="${pageContext.request.contextPath}/img/spring7.png"
								alt="img01" />
						</figure>
					</li>
					<li>
						<figure>
							<figcaption class="momo">
								<h3>Menu Page</h3>
								<p>Jquery를 사용하여 메뉴를 구성하고 로그인 비로그인시 보이는 메뉴가 다르게 설정했다.</p>
							</figcaption>
							<img src="${pageContext.request.contextPath}/img/spring2.png"
								alt="img01" />
						</figure>
					</li>
					<li>
						<figure>
							<figcaption class="momo">
								<h3>Admin Page</h3>
								<p>사람들이 요청한 빅데이터를 분석하여 나타내주는 관리자 게시판을 구성했다.</p>
							</figcaption>
							<img src="${pageContext.request.contextPath}/img/spring3.png"
								alt="img01" />
						</figure>
					</li>
					<li>
						<figure>
							<figcaption class="momo">
								<h3>History Page</h3>
								<p>지금까지 했던 프로젝트, 배운 프로그램들의 목록을 보여주는 페이지이다.</p>
							</figcaption>
							<img src="${pageContext.request.contextPath}/img/spring4.png"
								alt="img01" />
						</figure>
					</li>

					<li>
						<figure>
							<figcaption class="momo">
								<h3>History Page</h3>
								<p>History Page의 상세한 내용들을 표현하는 페이지이다.</p>
							</figcaption>
							<img src="${pageContext.request.contextPath}/img/spring6.png"
								alt="img02" />
						</figure>
					</li>
					<li>
						<figure>
							<figcaption class="momo">
								<h3>Board Page</h3>
								<p>사람들이 궁금한것, 데이터 분석 요청 자료를 올리고 나타내는 게시판 페이지이다.</p>
							</figcaption>
							<img src="${pageContext.request.contextPath}/img/spring5.png"
								alt="img02" />
						</figure>
					</li>
					<li>
						<figure>
							<figcaption class="momo">
								<h3>Review</h3>
								<br> <i class="fa fa-check-square-o" aria-hidden="true">
									Project 사용 프로그램 : Spring Framework, Python </i> <br> <i
									class="fa fa-check-square-o" aria-hidden="true"> Project 기간
									: 4주</i> <br> <i class="fa fa-check-square-o"
									aria-hidden="true"> 느낀점 </i> <br> 1. Spring Framework에 대하여
								자세하게 알게되었다.<br> 2. 구현하고 싶은 기능들은 많이 있었으나 기술 부족으로 못한것이 아쉬움<br>
								3. 나만의 포트폴리오를 만들자라는 목표로 만들었지만 다른 좋은 아이템으로 홈페이지를 만들었으면 하는 아쉬움이 생김
								<br> 4. Python을 배우고 사용하는것에 부족함을 느껴 아쉬움이 남음 <br>
							</figcaption>
							<img
								src="${pageContext.request.contextPath}/img/history_java6.png"
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
