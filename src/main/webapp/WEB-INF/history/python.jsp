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
	background: #ff8040;
	padding: 25px;
}

.tt {
	position: relative;
	left: 30px;
	padding-right: 10px;
}

.yy {
	color: #ff8040;
}
</style>

</head>

<body>

	<%@ include file="./../common/top.jsp"%>

	<div class="container">
		<header class="clearfix">
			<span>History</span>
			<h1>
				<a class="dd" href="<%=contextPath%>/history/spring"><i
					class="glyphicon glyphicon-chevron-left">&nbsp;</i></a><i
					class="icon-python" aria-hidden="true"> Python </i> &nbsp; <a
					class="dd1" href="<%=contextPath%>/history/github"><i
					class="glyphicon glyphicon-chevron-right"></i></a>
			</h1>
			<h1 class="tt">
				<a class="yy" href="https://github.com/bughunt88/python_project"
					target="_blank"><i class="fa fa-github" aria-hidden="true"></i></a>
			</h1>
		</header>

		<div id="grid-gallery" class="grid-gallery">
			<section class="grid-wrap">
				<ul class="grid">
					<li class="grid-sizer"></li>
					<!-- for Masonry column width -->

					<li>
						<figure>
							<img src="${pageContext.request.contextPath}/img/pyt.png"
								alt="img01" />
							<figcaption>
								<h3>Python 먹자 !</h3>
								<p>Python??? 알고먹자</p>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="${pageContext.request.contextPath}/img/dj.png"
								alt="img02" />
							<figcaption>
								<h3>Django 먹자 !</h3>
								<p>Django??? 알고먹자</p>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img
								src="${pageContext.request.contextPath}/img/pandas_logo5.png"
								alt="img02" />
							<figcaption>
								<h3>Pandas 먹자 !</h3>
								<p>Pandas??? 알고먹자</p>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img
								src="${pageContext.request.contextPath}/img/numpy_project_page.jpg"
								alt="img02" />
							<figcaption>
								<h3>Numpy 먹자 !</h3>
								<p>Numpy??? 알고먹자</p>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="${pageContext.request.contextPath}/img/images.png"
								alt="img02" />
							<figcaption>
								<h3>
									Matplotlib<br> 먹자 !
								</h3>
								<p>Matplotlib??? 알고먹자</p>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img
								src="${pageContext.request.contextPath}/img/data-analysis-1-638.jpg"
								alt="img02" />
							<figcaption>
								<h3>Analysis</h3>
								<p>Python을 활용한 Data Analysis</p>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="${pageContext.request.contextPath}/img/dj2.png"
								alt="img02" />
							<figcaption>
								<h3>Main Page</h3>
								<p>Django를 활용한 투표 홈페이지 메인 페이지</p>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="${pageContext.request.contextPath}/img/dj3.png"
								alt="img02" />
							<figcaption>
								<h3>Select Page</h3>
								<p>Django를 활용한 투표 홈페이지 선택 페이지</p>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="${pageContext.request.contextPath}/img/dj4.png"
								alt="img02" />
							<figcaption>
								<h3>Result Page</h3>
								<p>Django를 활용한 투표 홈페이지 결과 페이지</p>
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
								<h3>Python 먹자 !</h3>
								<p>
									파이썬의 강점 <br>1.언어 자체가 쉽다.<br> 2.컴퓨터와 대화하듯이 프로그래밍이
									가능하다. <br> 3. numpy, pandas, matplotlib 등의 강력한 데이터 분석
									라이브러리를 제공한다.<br> 4.모두 오픈 소스(open source)이며, 공짜입니다.<br>
									5. 웹 프로그래밍(Django) 사용 가능하다 <br>
								</p>
							</figcaption>
							<img src="${pageContext.request.contextPath}/img/python.png"
								alt="img01" />
						</figure>
					</li>

					<li>
						<figure>
							<figcaption class="momo">
								<h3>Django 먹자 !</h3>
								<p>Phython을 기반으로한 웹 서버프레임워크로 웹사이트 개발을 쉽고 빠르게 할 수 있도록 도와준다.
									Django를 사용하여 간단한 투표 사이트를 구성하였다.</p>
							</figcaption>
							<img src="${pageContext.request.contextPath}/img/dj1.png"
								alt="img02" />
						</figure>
					</li>

					<li>
						<figure>
							<figcaption class="momo">
								<h3>Pandas 먹자 !</h3>
								<p>Pandas에서는 고유하게 정의한 자료 구조인 Series와 DataFrame을 사용하여, 빅 데이터
									분석에 있어 높은 수준의 성능을 발휘한다. 이 기능을 이용하여 데이터를 분석하게 될 것이다.</p>
							</figcaption>
							<br>
							<img
								src="${pageContext.request.contextPath}/img/pandas_logo5.png"
								alt="img03" />
						</figure>
					</li>

					<li>
						<figure>
							<figcaption class="momo">
								<h3>Numpy 먹자 !</h3>
								<p>Numpy는 특히 벡터 및 행렬 연산에 있어 편의성을 제공하는 라이브러리로, Pandas와
									Matplotlib의 기반이 되는 라이브러리라고 할 수 있다.</p>
							</figcaption>
							<img
								src="${pageContext.request.contextPath}/img/numpy_project_page.jpg"
								alt="img03" />
						</figure>
					</li>

					<li>
						<figure>
							<figcaption class="momo">
								<h3>Matplotlib 먹자 !</h3>
								<p>Matplotlib은 Numpy나 Pandas를 사용하여 데이터를 분석한 결과를 시각화하는 데 사용되는
									대표적인 Python 데이터 시각화 라이브러리이다. Matplotlib에서는 DataFrame 혹은 Series
									형태의 데이터를 가지고 다양한 형태의 플롯을 만들어 주는 기능을 지원한다.</p>
							</figcaption>
							<img src="${pageContext.request.contextPath}/img/images.png"
								alt="img03" />
						</figure>
					</li>

					<li>
						<figure>
							<figcaption class="momo">
								<h3>Analysis</h3>
								<p>Numpy, Pandas, Matplotlib를 활용하여 데이터를 분석하고 그래프로 나타내는 작업을
									한다. 목표는 사람들이 원하는 데이터, 하고자 하는 데이터를 자유자제로 표현하는것이 목표이다
									<br>Analysis 메뉴에서 분석한 내용을 업로드 할 것이다
									</p>
							</figcaption>
							<img
								src="${pageContext.request.contextPath}/img/data-analysis-1-638.jpg"
								alt="img03" />
						</figure>
					</li>

					<li>
						<figure>
							<figcaption class="momo">
								<h3>Main Page</h3>
								<p>Django를 활용하여 투표할 수 있는 홈페이지 메인 페이지. 관리자가 투표를 등록하면 투표 할 수
									있다</p>
							</figcaption>
							<img src="${pageContext.request.contextPath}/img/dj2.png"
								alt="img02" />
						</figure>
					</li>
					<li>
						<figure>
							<figcaption class="momo">
								<h3>Select Page</h3>
								<p>관리자가 등록한 투표에서 선택할 수 있는 페이지.</p>
							</figcaption>
							<img src="${pageContext.request.contextPath}/img/dj3.png"
								alt="img02" />
						</figure>
					</li>
					<li>
						<figure>
							<figcaption class="momo">
								<h3>Result Page</h3>
								<p>선택된 값들을 나타내 주는 페이지.</p>
							</figcaption>
							<img src="${pageContext.request.contextPath}/img/dj4.png"
								alt="img02" />
						</figure>
					</li>
					<li>
						<figure>
							<figcaption class="momo">
								<h3>Review</h3>
								<p>
									<br> <i class="fa fa-check-square-o" aria-hidden="true">
										Project 사용 프로그램 : Python Django </i> <br> <i
										class="fa fa-check-square-o" aria-hidden="true"> Project
										기간 : 3주</i> <br> <i class="fa fa-check-square-o"
										aria-hidden="true"> 느낀점 </i> <br> 1. 간단한 구성이지만 Django를
									배우면서 만들었던 홈페이지라 시간이 오래 걸림.<br> 2. 너무 간단하게 구성해서 아쉬움(다음엔 완전한
									홈페이지를 만들것을 계획함)<br> 3. Java와  Node, Python 웹 프로그래밍의 차이점을 느끼게 됨  <br> 4. Python을 배우고 사용하는것에
									부족함을 느껴 아쉬움이 남음 <br>
								</p>
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
