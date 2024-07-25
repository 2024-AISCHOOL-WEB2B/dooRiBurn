<%@page import="java.io.PrintWriter"%>
<%@page import="com.model.ContestDAO"%>
<%@page import="com.model.ContestDTO"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>contestUpdate</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />
 
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,600,400italic,700' rel='stylesheet' type='text/css'>
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	</head>
	<body>
		
	<div class="fh5co-loader"></div> 
	<div id="page">
	<nav class="fh5co-nav" role="navigation">
		<div class="container">
			<div class="row">
				<div class="left-menu text-right menu-1">
					<ul>
						<li><a href="contact.jsp">회원가입</a></li>
						<li><a href="about.html">로그인</a></li>
						<li class="has-dropdown">
							<a href="services.html">마이페이지</a>
							<ul class="dropdown">
								<li><a href="#">관심 촬영지</a></li>
								<li><a href="#">회원정보수정</a></li>
								<li><a href="#">참여한 공모전</a></li>
								<li><a href="#">API</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="logo text-center">
					<div id="fh5co-logo"><a href="index.jsp">여</a></div>
				</div>
				<div class="right-menu text-left menu-1">
					<ul>
						<li><a href="blog.html">공모전</a></li>
						<li class="has-dropdown">
							<a href="#">카테고리</a>
							<ul class="dropdown">
								<li><a href="#">HTML5</a></li>
								<li><a href="#">CSS3</a></li>
								<li><a href="#">Sass</a></li>
								<li><a href="#">jQuery</a></li>
							</ul>
						</li>
						<li><a href="contact.html">Contact</a></li>
						<!-- <li class="btn-cta"><a href="#"><span>Login</span></a></li> -->
					</ul>
				</div>
			</div>
			
		</div>
	</nav>
	<header id="fh5co-header" class="fh5co-cover" role="banner" style="background-image:url(images/img_bg_2.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1 text-center">
					<div class="display-t" >
						<div class="display-tc animate-box" data-animate-effect="fadeIn" > 
							<div class="row">
								<form class="form-inline" id="fh5co-header-subscribe">
									<div class="col-md-6 col-md-offset-3">
 
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
		<%
			// 글 번호 가져오기
			int num = 0;
			if (request.getParameter("c_num") != null){
				num = Integer.parseInt(request.getParameter("c_num"));
			}
			if (num == 0) {
				PrintWriter script = response.getWriter();
		        script.println("<script>");
		        script.println("alert('유효하지 않는 글입니다.');"); // 경고창 메시지 오류 수정
		        script.println("location.href = 'contestBoard.jsp';");
		        script.println("</script>");
			}
			ContestDTO dto = new ContestDAO().getView(num);
			  
		%>
  
	<!-- 공모전 게시글 수정 -->
	<div class="container">
		<div class="row">
			<form method="post" action="ContestUpdateService?c_num=<%= dto.getC_num() %>">
				<table class="table table-striped" style="text-align: center; border:1px solid #f9f9f9">
					<thead>
						<tr>
							<th colspan="2" style="background-color: #f9f9f9; text-align: center;">공모전 게시글 수정</th> 
						</tr>
					</thead>
					<tbody style="background-color: #f9f9f9;"> 
						<tr> 
							<td><input type="text" class="form-control" placeholder="제목을 입력해주세요." name="contestTitle" value="<%=dto.getC_title() %>" style="background-color: #f5f5f5;"></td>
						</tr>
						<tr> 
							<td><textarea class="form-control" placeholder="내용을 입력해주세요." name="contestContent" style="height: 350px; background-color: #f5f5f5;"><%=dto.getC_content() %></textarea></td>
						</tr>   
<%-- 						<tr>
							<td style="width=5px;"><p>기존 이미지</p></td> 
						</tr> 
						<tr>  
							<td><img src="boardImg/<%= dto.getC_img() %>" alt="공모전 이미지" style="max-width: 100%; height: auto;"></td>			
						</tr> 
						<tr> --%>
							<td><p>수정할 이미지를 업로드 하세요</p></td>
						</tr>
						<tr> 
							<td>
								<ul class="fh5co-social-icons">  
		                            <label for="file">
		                                <div class="btn btn-file">
		                                    <i class="icon-camera"></i> 사진 업로드
		                                </div>
		                            </label>
									<input type="file" name="contestImg" id="file" style="display: none;" onchange="previewImage(this);">
	                            </ul>
	                        </td>                           
	                    </tr> 
	                    <tr>
	                        <td>
	                            <div id="imagePreview">
	                                <%-- 이미지 미리보기를 표시할 공간 --%>
	                                <img id="preview" src="" alt="이미지 미리보기" style="max-width: 100%; height: auto;">
	                            </div>
	                        </td>
	                    </tr> 
					</tbody>
				</table>
	            <input type="hidden" name="c_num" value="<%= dto.getC_num() %>">
	            <input type="submit" class="btn btn-primary pull-right" style="margin-right: 10px; padding: 10px 20px;" value="수정">
			</form>
			<a href="contestBoard.jsp" class="btn btn-primary pull-left" style="margin-left: 10px; padding: 10px 20px;">목록</a>  		
			<a href="javascript:;" onclick="confirmDelete(<%= dto.getC_num() %>)" class="btn btn-primary pull-right" style="margin-right: 10px; padding: 10px 20px;">삭제</a>  
		</div> 
  
  
           
        
        
        
		
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://bootstrap.js"></script>
	
	<!-- 삭제 버튼 클릭시 Confirm 창 구현 -->
	<script>
		function confirmUpdate(num) {
			var result = confirm("삭제하시겠습니까?");
			if (result) {
				location.href = "ContestDeleteService?c_num=" + num;
			}
		}
	</script>
	
	<!-- 수정 버튼 클릭시 Confirm 창 구현 -->
	<script>
		function confirmUpdate(num) {
			var result = confirm("수정하시겠습니까?");
			if (result) {
				location.href = "ContestUpdateService?c_num=" + num;
			}
		}
	</script>
	
	 

	<!-- 수정할 때 사진 업로드시 사진 볼 수 있게 구현 -->
	<script>
	function previewImage(input) {
	    var file = input.files[0];
	    var reader = new FileReader();
	
	    reader.onload = function(e) {
	        $('#imagePreview').empty(); // 이미지 미리보기 엘리먼트 초기화
	        $('#imagePreview').append($('<img>').attr('src', e.target.result).attr('id', 'preview').css({'max-width': '100%', 'height': 'auto'}));
	    };
	
	    if (file) {
	        reader.readAsDataURL(file);
	    }
	}
	</script> 
	  
 	<footer id="fh5co-footer" role="contentinfo">
		<div class="container">
				  
			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
						<small class="block">&copy; 2024 DOORIBURN. All Rights Reserved.</small> 
						<small class="block">Designed by DOORIBURN</small>
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
