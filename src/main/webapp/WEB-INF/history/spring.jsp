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
			background: #008040;
			padding: 25px;
		}
		
		</style>
		
</head>

<body>

	<%@ include file="./../common/top.jsp"%>

<div class="container">
			<header class="clearfix">
				<span>History</span>
				<h1><a class="cc" href="<%=contextPath%>/history/node"><i class="glyphicon glyphicon-chevron-left">&nbsp;</i></a><i class="icon-spring" aria-hidden="true"> Spring Framework Homepage</i> &nbsp; <a class="cc1" href="<%=contextPath%>/history/python"><i class="glyphicon glyphicon-chevron-right"></i></a></h1>
			</header>
			
			<div id="grid-gallery" class="grid-gallery">
				<section class="grid-wrap">
					<ul class="grid">
						<li class="grid-sizer"></li><!-- for Masonry column width -->
						
						<li>
							<figure>
								<img src="${pageContext.request.contextPath}/img/java2.jpg" alt="img01"/>
								<figcaption><h3>Letterpress asymmetrical</h3><p>Chillwave hoodie ea gentrify aute sriracha consequat.</p></figcaption>
							</figure>
						</li>
						<li>
							<figure>
								<img src="${pageContext.request.contextPath}/img/board_java.png" alt="img02"/>
								<figcaption><h3>Letterpress asymmetrical</h3><p>Chillwave hoodie ea gentrify aute sriracha consequat.</p></figcaption>
							</figure>
						</li>
						
					</ul>
				</section><!-- // grid-wrap -->
				
				<section class="slideshow">
					<ul>
					
						<li>
							<figure>
								<figcaption class="momo">
									<h3>Letterpress asymmetrical</h3>
									<p>Kale chips lomo biodiesel stumptown Godard Tumblr, mustache sriracha tattooed cray aute slow-carb placeat delectus. Letterpress asymmetrical fanny pack art party est pour-over skateboard anim quis, ullamco craft beer.</p>
								</figcaption>
								<img src="${pageContext.request.contextPath}/img/java2.jpg" alt="img01"/>
							</figure>
						</li>
					
						<li>
							<figure>
								<figcaption class="momo">
									<h3>Letterpress asymmetrical</h3>
									<p>Kale chips lomo biodiesel stumptown Godard Tumblr, mustache sriracha tattooed cray aute slow-carb placeat delectus. Letterpress asymmetrical fanny pack art party est pour-over skateboard anim quis, ullamco craft beer.</p>
								</figcaption>
								<img src="${pageContext.request.contextPath}/img/board_java.png" alt="img02"/>
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
