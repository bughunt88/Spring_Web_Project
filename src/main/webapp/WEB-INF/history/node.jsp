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
			background: #358ebc;
			padding: 25px;
		}	
		.tt{
			position: relative;
			left: 30px;
			padding-right: 10px;
		}
		.yy{
			color: #358ebc;
		}
	
		
		</style>
		
		
</head>

<body>

	<%@ include file="./../common/top.jsp"%>

<div class="container">
			<header class="clearfix">
				<span>History</span>
				<h1><a class="bb" href="<%=contextPath%>/history/java"><i class="glyphicon glyphicon-chevron-left">&nbsp;</i></a><i class="icon-nodejs" aria-hidden="true"> Node, D3 Homepage</i> &nbsp; <a class="bb1" href="<%=contextPath%>/history/spring"><i class="glyphicon glyphicon-chevron-right"></i></a></h1>
				<h1 class="tt"><a class="yy" href="https://github.com/bughunt88/web_project" target="_blank"><i class="fa fa-github" aria-hidden="true"></i></a></h1>
				<h1 class="tt"><a class="yy" href="https://vast-gorge-92696.herokuapp.com/" target="_blank"><i class="fa fa-home" aria-hidden="true"></i></a></h1>
			</header>
			
			<div id="grid-gallery" class="grid-gallery">
				<section class="grid-wrap">
					<ul class="grid">
						<li class="grid-sizer"></li><!-- for Masonry column width -->
						
						<li>
							<figure>
								<img src="${pageContext.request.contextPath}/img/history_node1.png" alt="img01"/>
								<figcaption><h3>Node.js 먹자 !</h3><p>Node.js ??? 알고 먹자</p></figcaption>
							</figure>
						</li>
						<li>
							<figure>
								<img src="${pageContext.request.contextPath}/img/history_node2.png" alt="img02"/>
								<figcaption><h3>MongoDB <br> 먹자 !</h3><p>MongoDB ??? 알고 먹자</p></figcaption>
							</figure>
						</li>
						<li>
							<figure>
								<img src="${pageContext.request.contextPath}/img/history_node3.jpg" alt="img02"/>
								<figcaption><h3>D3 먹자 !</h3><p>D3 ??? 알고 먹자</p></figcaption>
							</figure>
						</li>
							<li>
							<figure>
								<img src="${pageContext.request.contextPath}/img/history_node4.png" alt="img02"/>
								<figcaption><h3>Main Page</h3><p>Node.js, MongoDB, D3 활용하여 홈페이지 <br> 만들자</p></figcaption>
							</figure>
						</li>
							<li>
							<figure>
								<img src="${pageContext.request.contextPath}/img/history_node5.png" alt="img02"/>
								<figcaption><h3>D3 Page</h3><p>D3로 한국 지역, 나이별 인구분포 데이터 그래프 만들자</p></figcaption>
							</figure>
						</li>
							<li>
							<figure>
								<img src="${pageContext.request.contextPath}/img/history_node6.png" alt="img02"/>
								<figcaption><h3>Board Page</h3><p>게시판을 만들자</p></figcaption>
							</figure>
						</li>
							<li>
							<figure>
								<img src="${pageContext.request.contextPath}/img/history_node7.png" alt="img02"/>
								<figcaption><h3>Admin Page</h3><p>메인화면 나타내는 <br> 관리자 게시판 만들자</p></figcaption>
							</figure>
						</li>
							<li>
							<figure>
								<img src="${pageContext.request.contextPath}/img/history_java5.png" alt="img02"/>
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
									<h3>Node.js 먹자 !</h3>
									<p>
										최근에 떠오르고 있는 Node.js express를 이용하여 홈페이지를 만들것을 기획했다.
  									 <br>Node.js는 <a target="_blank" href="https://opentutorials.org/course/2136">참고 사이트</a>를 보며 공부했다. </p>
								</figcaption>
								<img src="${pageContext.request.contextPath}/img/history_node1.png" alt="img01"/>
							</figure>
						</li>
					
						<li>
							<figure>
								<figcaption class="momo">
									<h3>MongoDB 먹자 !</h3>
									<p>MongoDB는 noSQL로 처리속도가 빠르고,확장성이 뛰어난 데이터베이스이다.
										<br>
										이번 홈페이지를 만들면서 MongoDB 사용법을 배우고 사용할 것이다.
									</p>
									<br><br>
									
								</figcaption>
								<img class="ko" src="${pageContext.request.contextPath}/img/mog.png" alt="img02"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption class="momo">
									<h3>D3 먹자 !</h3>
									<p>D3.js는 데이터 기반 문서를 조작하기 위한 JavaScript 라이브러리이다.
									<BR>D3 사용법을 배우고 큰 데이터를 그래프 화 시키는 것을 목표로 했다.
									</p>
								</figcaption>
								<img class="ko1" src="${pageContext.request.contextPath}/img/d4.png" alt="img02"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption class="momo">
									<h3>Main Page</h3>
									<p>Node.js, Express를 사용하여 홈페이지 메인 화면 구성함.</p>
								</figcaption>
								<img c src="${pageContext.request.contextPath}/img/history_node4.png" alt="img02"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption class="momo">
									<h3>D3 Page</h3>
									<p>D3를 사용하여 만든 그래프 페이지 구성함.</p>
								</figcaption>
								<img src="${pageContext.request.contextPath}/img/history_node5.png" alt="img02"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption class="momo">
									<h3>Board Page</h3>
									<p>Modal 방식으로 나타나는 게시판 구성함.</p>
								</figcaption>
								<img src="${pageContext.request.contextPath}/img/history_node6.png" alt="img02"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption class="momo">
									<h3>Admin Page</h3>
									<p>관리자 게시판으로 글을 쓰면 메인페이지에 나타나게 구성함.</p>
								</figcaption>
								<img src="${pageContext.request.contextPath}/img/history_node7.png" alt="img02"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption class="momo">
									<h3>Review</h3>
									<br>
									<i class="fa fa-check-square-o" aria-hidden="true"> Project 사용 프로그램 : Node,js, MongoDB, D3</i> 
									<br>
									<i class="fa fa-check-square-o" aria-hidden="true"> Project 기간 : 4주</i>
									<br>
									<i class="fa fa-check-square-o" aria-hidden="true"> 느낀점 </i>
									<br>
									1. 프로그래밍을 혼자서 할 때와 팀으로 할 때 차이점을 느낌
									<br>
									2. 프로젝트를 하기에 앞서 정확한 계획을 세우고 시작하는 것이 도움이 된다는 것을 느낌
									<br>
									3. D3를 공부했지만 능숙하게 사용하는 것은 아직 부족함
									<br>
								</figcaption>
								<img src="${pageContext.request.contextPath}/img/history_java6.png" alt="img02"/>
							</figure>
						</li>
				
					</ul>
					<nav>
						<span class="icon nav-prev"></span>
						<span class="icon nav-next"></span>
						<span class="icon nav-close"></span>
					</nav>
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
