<%@page import="com.model.DramaSearchDTO"%>
<%@page import="com.model.DramaSearchDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.ContestDTO"%>
<%@page import="com.model.ContestDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Search</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Free HTML5 Website Template by FreeHTML5.co" />
<meta name="keywords"
	content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
<meta name="author" content="FreeHTML5.co" />

<!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FreeHTML5.co
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<link
	href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,600,400italic,700'
	rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700"
	rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- Theme style  -->
<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" href="css/detail.css">

<link
	href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,600,400italic,700'
	rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700"
	rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap"
	rel="stylesheet">

<style type="text/css">
* {
	font-family: "IBM Plex Sans KR", sans-serif;
	font-weight: 400;
	font-style: normal;
}
</style>

</head>
<body>
	<% 
	
		String index = request.getParameter("index");
		DramaSearchDAO dao = new DramaSearchDAO();
		ArrayList<DramaSearchDTO> film_detail = dao.film_detail(index);
		String drama = film_detail.get(0).getDrama();
		String place = film_detail.get(0).getFName();
		String addr = film_detail.get(0).getFAddr();
		double lat = film_detail.get(0).getLat();
		double lon = film_detail.get(0).getLon();
		String tel = film_detail.get(0).getScene();
		String time = film_detail.get(0).getFTel();
		String scene = film_detail.get(0).getFTime();
	%>
	<div class="fh5co-loader"></div>
	<div id="page">
		<nav class="fh5co-nav" role="navigation">
			<div class="container">
				<div class="row">
					<div class="left-menu text-right menu-1">
						<ul>
							<li><a href="contact.jsp">회원가입</a></li>
							<li><a href="about.html">로그인</a></li>
							<li class="has-dropdown"><a href="services.html">마이페이지</a>
								<ul class="dropdown">
									<li><a href="#">관심 촬영지</a></li>
									<li><a href="#">회원정보수정</a></li>
									<li><a href="#">참여한 공모전</a></li>
									<li><a href="#">API</a></li>
								</ul></li>
						</ul>
					</div>
					<div class="logo text-center">
						<div id="fh5co-logo">
							<a href="index.jsp">여</a>
						</div>
					</div>
					<div class="right-menu text-left menu-1">
						<ul>
							<li><a href="blog.html">공모전</a></li>
							<li class="has-dropdown"><a href="#">카테고리</a>
								<ul class="dropdown">
									<li><a href="#">HTML5</a></li>
									<li><a href="#">CSS3</a></li>
									<li><a href="#">Sass</a></li>
									<li><a href="#">jQuery</a></li>
								</ul></li>
							<li><a href="contact.html">Contact</a></li>
							<!-- <li class="btn-cta"><a href="#"><span>Login</span></a></li> -->
						</ul>
					</div>
				</div>

			</div>
		</nav>


		<header id="fh5co-header" class="fh5co-cover" role="banner"
			style="background-image: url(images/backgroundco.png);">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1 text-center">
						<div class="display-t">
							<div class="display-tc animate-box" data-animate-effect="fadeIn">
								<div class="row">
									<form class="form-inline" id="fh5co-header-subscribe">
										<div class="col-md-6 col-md-offset-3">
											<div class="form-group">
												<input type="text" class="form-control" id="email">
												<button type="submit" class="btn btn-default">검색</button>


											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>

		<!-- 추가 -->
		<div class="container">
			<header class="header">
				<img src="images/jeju_aquarium.png" alt="Aquarium"
					class="header-img">
			</header>
			<section class="info">
				<h1><%= place %></h1>
				<p class="address"><%= addr %></p>
				<p class="hours">영업시간: <%= time %></p>
				<p class="phone">전화번호: <%= tel %></p>
				<p class="phone">촬영지속 드라마 장면 : <%=scene %></p>
				<div class="tags">
					<span>#데이트</span> <span>#가족</span> <span>#선암귀</span> <span>#수족관</span>
				</div>
			</section>
			<!-- 여기까지 -->

			<div id="fh5co-blog" class="fh5co-bg-section">
				<div class="container">
					<!-- 검색명에 대한 검색 결과! 촬영지 목록 -->
					<div class="row">
						<div class="col-lg-4 col-md-4">
							<div class="fh5co-blog animate-box">
								<a href="#"><img class="img-responsive"
									src="images/work-4.jpg" alt=""></a>
								<!-- 해당 장소 사진 -->
								<div class="blog-text">
									<h3>
										<a href="" #>수원 행궁동 행리단길</a>
									</h3>
									<!-- 장소명 -->
									<span class="posted_on">선재 업고 튀어</span>
									<!-- 드라마명 -->
									<span class="favorites">⭐</span>
									<!-- 즐겨찾기 -->
									<p>'선재 업고 튀어' 9화에서 선재와 솔이가 첫 데이트를 하는 장소로..</p>
									<!-- 상세줄거리 미리보기 -->
									<a href="#" class="btn btn-primary">상세보기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<footer id="fh5co-footer" role="contentinfo">
				<div class="container">

					<div class="row copyright">
						<div class="col-md-12 text-center">
							<p>
								<small class="block">&copy; 2024 DOORIBURN. All Rights
									Reserved.</small> <small class="block">Designed by DOORIBURN</a></small>
							</p>
							<p>
							<ul class="fh5co-social-icons">
								<li><a href="#"><i class="icon-sun"></i></a></li>
								<li><a href="#"><i class="icon-cloud"></i></a></li>
							</ul>
							</p>
						</div>
					</div>

				</div>
			</footer>

		</div>
		<div class="gototop js-top">
			<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
		</div>

		<!-- jQuery -->
		<script src="js/jquery.min.js"></script>
		<!-- jQuery Easing -->
		<script src="js/jquery.easing.1.3.js"></script>
		<!-- Bootstrap -->
		<script src="js/bootstrap.min.js"></script>
		<!-- Waypoints -->
		<script src="js/jquery.waypoints.min.js"></script>
		<!-- Main -->
		<script src="js/main.js"></script>
</body>
</html>

