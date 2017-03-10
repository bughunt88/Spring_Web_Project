<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>

<%@ include file="./../common/favicon.jsp"%>

<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>My Program Study</title>
		<meta name="description" content="Blueprint: Blueprint: Google Grid Gallery" />
		<meta name="keywords" content="google getting started gallery, image gallery, image grid, template, masonry" />
		<meta name="author" content="Codrops" />
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board/demo1.css">	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board/component.css">	
		<script src="${pageContext.request.contextPath}/js/board/modernizr.custom.js"></script>
		
		<link rel="shortcut icon" href="../favicon.ico">
		
		<style type="text/css">
		
		.grid figcaption {
			background: #efc75e;
			padding: 25px;
		}	
		.tt{
			position: relative;
			left: 30px;
		}
		.yy{
			color: #efc75e;
		}
		
		</style>
		
</head>

<body>

	<%@ include file="./../common/top.jsp"%>

<div class="container">
			<header class="clearfix">
				<span> History </span>
				
				<h1><a class="aa" href="<%=contextPath%>/history/github"><i class="glyphicon glyphicon-chevron-left">&nbsp;</i></a><i class="icon-java-bold" aria-hidden="true"> Java Account Book Program</i> &nbsp; <a class="aa1" href="<%=contextPath%>/history/node"><i class="glyphicon glyphicon-chevron-right"></i></a></h1> 
			
			<h1 class="tt"><a class="yy" href="https://github.com/bughunt88/study/tree/b7387d1fb20770de85831fd2e444ff10db1eb772/MyProject" target="_blank"><i class="fa fa-github" aria-hidden="true"></i></a></h1>
			</header>
			
			<div id="grid-gallery" class="grid-gallery">
				<section class="grid-wrap">
					<ul class="grid">
						<li class="grid-sizer"></li><!-- for Masonry column width -->
						
						<li>
							<figure>
								<img src="${pageContext.request.contextPath}/img/java2.jpg" alt="img01"/>
								<figcaption><h3>Java 먹자 !</h3><p>Java ??? 알고 먹자</p></figcaption>
							</figure>
						</li>
						<li>
							<figure>
								<img src="${pageContext.request.contextPath}/img/board_java.png" alt="img02"/>
								<figcaption><h3>Main Page</h3><p>Java, Oracle로 가계부 <br> 만들자</p></figcaption>
							</figure>
						</li>
						<li>
							<figure>
								<img src="${pageContext.request.contextPath}/img/history_java1.png" alt="img03"/>
								<figcaption><h3>통계 Page</h3><p>Java로 가계부 수입,지출 총합을 구해보자</p></figcaption>
							</figure>
						</li>
						<li>
							<figure>
								<img src="${pageContext.request.contextPath}/img/history_java2.png" alt="img04"/>
								<figcaption><h3>수입 비교 Page</h3><p>Java 가계부 수입 그래프 그려보자</p></figcaption>
							</figure>
						</li>
						<li>
							<figure>
								<img src="${pageContext.request.contextPath}/img/history_java3.png" alt="img05"/>
								<figcaption><h3>지출 비교 Page</h3><p>Java 가계부 지출 그래프 그려보자!</p></figcaption>
							</figure>
						</li>
						<li>
							<figure>
								<img src="${pageContext.request.contextPath}/img/history_java4.png" alt="img06"/>
								<figcaption><h3>종료 Page</h3><p>프로그램을 종료하는 <br> 화면을 만들자</p></figcaption>
							</figure>
						</li>	
						<li>
							<figure>
								<img src="${pageContext.request.contextPath}/img/history_java5.png" alt="img01"/>
								<figcaption><h3>&nbsp&nbsp&nbsp&nbsp&nbsp Review</h3><p>곱씹어보자 !!!</p></figcaption>
							</figure>
						</li>	
					</ul>
				</section><!-- // grid-wrap -->
				
				<section class="slideshow">
					<ul>
					
						<li>
							<figure>
								<figcaption class="momo">
									<h3>Java를 먹자 !</h3>
									<p> 
									첫 Project로 자바를 이용해 수입, 지출 상황을 그래프로 표현하는 가계부 기획했다. 
									<br>
									가계부 내용은 Oracle 데이터베이스 사용하여 기록 저장,관리하게 구성하였다.
									
									</p>
								</figcaption>
								<img src="${pageContext.request.contextPath}/img/java2.jpg" alt="img01"/>
							</figure>
						</li>
					
						<li>
							<figure>
								<figcaption class="momo">
									<h3>Main Page</h3>
									<p>가계부를 관리하는 화면을 구성함. </p>
								</figcaption>
								<img src="${pageContext.request.contextPath}/img/board_java.png" alt="img02"/>
							</figure>
						</li>
						
						<li>
							<figure>
								<figcaption class="momo">
									<h3>통계 Page</h3>
									<p>지난 달과 이번 달 수입,지출 총합을 자동으로 계산하고 비교할 수 있게 화면을 구성함.</p>
								</figcaption>
								<img src="${pageContext.request.contextPath}/img/history_java1.png" alt="img03"/>
							</figure>
						</li>
						
						<li>
							<figure>
								<figcaption class="momo">
									<h3>수입 비교 Page</h3>
									<p>지난 달과 이번 달 수입을 보기 쉽게 그래프로 나타나게 구성함.</p><br>
								<img src="${pageContext.request.contextPath}/img/history_java2.png" alt="img04"/>
							</figure>
						</li>
						
						<li>
							<figure>
								<figcaption class="momo">
									<h3>지출 비교 Page</h3>
									<p>지난 달과 이번 달 지출을 보기 쉽게 그래프로 나타나게 구성함.</p>
								</figcaption>
								<img src="${pageContext.request.contextPath}/img/history_java3.png" alt="img05"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption class="momo">
									<h3>종료 Page</h3>
									<p>종료 버튼을 누르면 종료 확인을 하는 창 나타나게 구성함. </p>
								</figcaption>
								<img src="${pageContext.request.contextPath}/img/history_java4.png" alt="img06"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption class="momo">
									<h3>Project Review</h3>
									<p>
									<br>
									<i class="fa fa-check-square-o" aria-hidden="true"> Project 사용 프로그램 : Java, Oracle</i> 
									<br>
									<i class="fa fa-check-square-o" aria-hidden="true"> Project 기간 : 2주</i>
									<br>
									<i class="fa fa-check-square-o" aria-hidden="true"> 느낀점 </i>
									<br>
									1. 처음으로 자바를 사용하여 프로젝트를 하면서 실력에 부족함을 느낌 
									<br>
									2. 프로젝트를 하기에 앞서 계획을 하고 하는 것이 효율적임을 느낌
									<br>
									3. 프로그램을 모듈화하지모듈화 하지 못해 코딩이 길어진 것이길어진것이 아쉬움 
									<br>
									4. 구현하지 못했던 기능들이 있어서 아쉬움
									
									</p>
								</figcaption>
								<img src="${pageContext.request.contextPath}/img/history_java6.png" alt="img01"/>
							</figure>
						</li>
					</ul>
					<nav>
						<span class="icon nav-prev"></span>
						<span class="icon nav-next"></span>
						<span class="icon nav-close"></span>
					</nav>
					<div class="info-keys icon">Navigate with arrow keys</div>
				</section><!-- // slideshow -->
			</div><!-- // grid-gallery -->
		</div>
		
		<script src="${pageContext.request.contextPath}/js/board/imagesloaded.pkgd.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/board/masonry.pkgd.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/board/classie.js"></script>
		<script src="${pageContext.request.contextPath}/js/board/cbpGridGallery.js"></script>
		
		<script>
			new CBPGridGallery( document.getElementById( 'grid-gallery' ) );
		</script>

</body>
</html>
