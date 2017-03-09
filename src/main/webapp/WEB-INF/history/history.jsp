<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>

<%@ include file="./../common/favicon.jsp"%>

<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>Wobbly Slideshow Effect</title>
		<meta name="description" content="Wobbly slideshow effect using Snap.svg" />
		<meta name="keywords" content="slideshow, wobbly, jelly, effect, svg, snap.svg, web design" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link href='http://fonts.googleapis.com/css?family=Flamenco' rel='stylesheet' type='text/css'>
		
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board/normalize.css">		
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board/demo.css">	
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board/slideshow.css">	

 <script src="${pageContext.request.contextPath}/js/board/snap.svg-min.js"></script>
<script src="${pageContext.request.contextPath}/js/board/modernizr.custom.js"></script>
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

<style type="text/css">

.hoho{
	width: 740px;
}
.gogo{
	color: white;
	font-size: 25px;
}
.gogo:hover{
	color: red;
}

</style>

</head>



<body>

	<%@ include file="./../common/top.jsp"%>
	
<div class="container">
			<div id="slideshow" class="slideshow">
				<ul>
					<li>
						<div class="slide">
							<img class="icon" src="${pageContext.request.contextPath}/img/java.png" alt="Browser Icon"/>
							<br>
							<h1>Java Account Book Program</h1>
							<br>
							<A class="gogo" href="<%=contextPath%>/history/java"  ><i class="icon-java-bold" aria-hidden="true"> Review</i></A>
						</div>
					</li>
					<li>
						<div class="slide">
							<img class="icon" src="${pageContext.request.contextPath}/img/node1.png" alt="Heart Icon"/>
							<br>
							<h1>Node, D3 Homepage</h1>
							<br>
							<A class="gogo" href="<%=contextPath%>/history/node"  ><i class="icon-nodejs" aria-hidden="true"> Review</i></A><br>
							<A class="gogo" href="https://vast-gorge-92696.herokuapp.com/" target="_blank" ><i class="fa fa-external-link" aria-hidden="true"> Link</i></A>
						</div>
					</li>
					<li>
						<div class="slide">
							<img class="icon" src="${pageContext.request.contextPath}/img/spring.png" alt="Letter Icon"/>
							<br>
							<h1>Spring Framework Homepage</h1>
							<br>
							<A class="gogo" href="<%=contextPath%>/history/spring" " ><i class="icon-spring" aria-hidden="true"> Review</i></A>
							
						</div>
					</li>
					<li>
						<div class="slide">
							<img class="icon" src="${pageContext.request.contextPath}/img/py.ico" alt="Football Icon"/>
							<br>
							<h1>Python</h1>
							<br>
							<A class="gogo" href="<%=contextPath%>/history/python" "  ><i class="icon-python" aria-hidden="true"> Review</i></A>
						</div>
					</li>
					<li>
						<div class="slide">
							<img class="icon" src="${pageContext.request.contextPath}/img/git.png" alt="Match Icon"/>
							<br>
							<h1>GitHub</h1>
							<br>
							<A class="gogo" href="<%=contextPath%>/history/github" " ><i class="fa fa-github" aria-hidden="true"> Review</i></A><br>
							<A class="gogo" href="https://github.com/bughunt88" target="_blank" ><i class="fa fa-external-link" aria-hidden="true"> Link</i></A>
						</div>
					</li>
				</ul>
			</div>
		</div><!-- /container -->
		
		
<script src="${pageContext.request.contextPath}/js/board/classie.js"></script>
<script src="${pageContext.request.contextPath}/js/board/sliderFx.js"></script>
		
		<script>
			(function() {
				new SliderFx( document.getElementById('slideshow'), {
					easing : 'cubic-bezier(.8,0,.2,1)'
				} );
			})();
		</script>



</body>
</html>
