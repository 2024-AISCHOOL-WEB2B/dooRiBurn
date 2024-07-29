<%@page import="dooriburn.com.model.MemberDTO"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8"> 
<title>update.jsp</title>

   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
   <meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
   <meta name="author" content="FreeHTML5.co" />
  
   
   <!-- realindex에서 가져온 것들 -->
   <meta name="viewport" content="width=device-width, initial-scale=1.0" >
    <!-- 폰트 -->
   <link href="https://fonts.googleapis.com/css?family=Work+Sans:400,300,600,400italic,700" rel="stylesheet" type="text/css">
   <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700" rel="stylesheet">
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
   
   <!-- Realstyle.css를 가장 먼저 연결 -->
   <link rel="stylesheet" href="css/Realstyle.css">
   
   <!-- 나머지 CSS 파일들 -->
   <link rel="stylesheet" href="css/other-style1.css">
   <link rel="stylesheet" href="css/other-style2.css">
     
   <link href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,600,400italic,700' rel='stylesheet' type='text/css'>
   <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700" rel="stylesheet">  
   <link rel="stylesheet" href="css/animate.css"> 
   <link rel="stylesheet" href="css/icomoon.css"> 
   <link rel="stylesheet" href="css/bootstrap.css"> 
   <link rel="stylesheet" href="css/style2.css">
  
   <script src="js/modernizr-2.6.2.min.js"></script> 
   
   
<!-- 메뉴 위치 우상단으로 조정 -->
<style>
  .menu-icon {
      position: absolute;
      top: 10px;  
      right: 20px; 
      cursor: pointer; 
  } 
  /* 버튼과 저작권 정보 사이에 여백 추가, 중간배열 */
  .button-container {
      margin-bottom: 20px; 
     display: flex; 
     justify-content: center;
  }
  </style>
  

<style type="text/css">
	*{
		font-family: "IBM Plex Sans KR", sans-serif;
 			font-weight: 400;
 			font-style: normal;
	}

.horizontal-menu {
	display: flex !important;
	flex-wrap: wrap !important;
}

.horizontal-menu li {
	width: 25% !important; /* 4개씩 나열하기 위해 각 항목의 너비를 25%로 설정 */
	margin-bottom: 10px !important; /* 항목 간의 간격 설정 */
	list-style-type: none;
}

.horizontal-menu li a {
	display: block;
	padding: 5px 0;
}

#fh5co-header{
	height: 180px !important;
}
	  
/* container 스타일 조정 */
.container {
    max-width: 100%; /* 컨테이너가 화면 너비에 맞게 확장되도록 설정 */
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100%; /* 전체 높이 차지하도록 설정 */
}

/* row 스타일 조정 */
.row {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    flex-direction: column; /* 세로 정렬을 위해 컬럼 방향으로 설정 */
}

/* 중앙 정렬을 위한 form 스타일 조정 */
form {
    width: 100%;
    max-width: 600px; /* 폼의 최대 너비를 설정하여 너무 넓어지지 않도록 함 */
    margin: 0 auto; /* 중앙 정렬 */
}

/* form-group 스타일 조정 */
.form-group {
    width: 100%; /* form-group의 너비를 100%로 설정하여 입력 필드가 세로로 쌓이도록 함 */
    margin-bottom: 15px; /* 항목 간의 간격 조정 */
}

/* col-md-6 클래스의 너비 조정 */
.col-md-6 {
    max-width: 100% !important; /* 부모 컨테이너 너비에 맞게 조정 */
    width: 100% !important; /* 너비를 100%로 설정 */
}

/* 입력창과 버튼의 너비 조정 */
.form-control {
    width: 100% !important; /* 입력창의 너비를 100%로 설정 */
    max-width: 100% !important; /* 최대 너비를 부모 컨테이너의 너비에 맞게 설정 */
    padding: 10px; /* 패딩 추가 */
    box-sizing: border-box; /* 패딩과 보더를 포함한 너비 계산 */
}

/* 버튼 스타일 조정 */
input[type="submit"] {
    width: 200px !important; /* 버튼의 너비를 100%로 설정 */
    max-width: 100% !important; /* 최대 너비를 부모 컨테이너의 너비에 맞게 설정 */
    padding: 10px; /* 패딩 추가 */
    background-color: #FFEEB9;
    border: none;
    color: #102770;
    font-size: 16px;
    cursor: pointer;
    border-radius: 4px;
    box-shadow: 0 8px 24px 0 rgba(255, 235, 167, .2);
    transition: background-color 0.3s, color 0.3s;
}
 
input[type="submit"]:hover {
    background-color: #ffd964;
    color: white;
} 
</style> 
<script>
       function validateForm() { 
           var password = document.getElementById("password").value;
           var nick = document.getElementById("nick").value;
           var name = document.getElementById("name").value;
           var phone = document.getElementById("phone").value;
           var addr = document.getElementById("addr").value;

           if (password == "" || nick == "" || name == "" || phone == "" || addr == "") {
               alert("모든 필드를 입력해 주세요.");
               return false;
           }
           return true;
       }
</script>
</head>
<body>
	<%
		MemberDTO info = (MemberDTO)session.getAttribute("info"); 
		String exUrl = "http://localhost:8081/Drama/PracSearch2.jsp?s_option=1&search=";
		if (info != null){ 
	%>	
	<header>
		<div class="banner">여기가 거기여?</div>
		<div class="menu-icon" onclick="openNav()">☰</div>
	</header>

	<div id="mySidenav" class="sidenav" style="width: 0;">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()" style="color:#333333;">&times;</a>
			<div class="menu-section">
				<h2>지역별로 찾기</h2>
				<div class="menu-items">
					<a href="<%=exUrl%>서울">서울</a> <a href="<%=exUrl%>부산">부산</a> <a href="<%=exUrl%>인천">인천</a> <a href="<%=exUrl%>대구">대구</a>
					<a href="<%=exUrl%>대전">대전</a> <a href="<%=exUrl%>광주">광주</a> <a href="<%=exUrl%>울산">울산</a> <a href="<%=exUrl%>세종">세종</a>
					<a href="<%=exUrl%>경기">경기</a> <a href="<%=exUrl%>충청북도">충북</a> <a href="<%=exUrl%>충청남도">충남</a> <a href="<%=exUrl%>전라북도">전북</a>
					<a href="<%=exUrl%>전라남도">전남</a> <a href="<%=exUrl%>경상북도">경북</a> <a href="<%=exUrl%>경상남도">경남</a> <a href="<%=exUrl%>강원">강원</a>
					<a href="<%=exUrl%>제주">제주</a> <a href="#"> </a>
				</div>
			</div>
			<div class="menu-section">
				<h2>여행사진 공모전</h2>
				<div class="menu-items">
					<a href="contestBoard.jsp">참가하기</a>
				</div>
			</div>
			<%if(info != null){ %>
			<div class="menu-section">
				<h2>마이 페이지</h2>
				<div class="menu-itemss">
					<a href="update.jsp">회원정보 수정</a> 
					<a href="likeList.jsp">관심 촬영지</a> 
					<a href="contestList.jsp">공모전 참가내역</a> 
			<%} else { %>
			<div class="menu-section">
				<h2>마이 페이지</h2>
				<div class="menu-itemss">
					<a href="login.jsp">로그인</a> 
					<a href="contact.jsp">회원가입</a>  
			<%}%>
				</div>
			</div>
		</div>
	</div>
	</div>
	
	
	
		<div id="fh5co-contact">
		<div class="container">
			<div class="row">

				<div class="col-md-6 animate-box" align="center" onsubmit="return validateForm()">
					<h3>회원정보 수정</h3>
					<form action="JoinService" method="post" name="JoinForm">
						<div class="row form-group">
							<div class="col-md-6" >
								<h4><%= info.getEmail() %></h4>
								<font id="checkEmail" size = "2"></font>
							</div>
							<div class="col-md-6">
								<input type="password" name="pw" id="password" class="form-control" placeholder="비밀번호">
							</div>	
						</div>
						<div class="row form-group">
							<div class="col-md-6">
								<input type="text" name="nick" id="nick" class="form-control" placeholder="닉네임">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-6">
								<input type="text" name="name" id="name" class="form-control" placeholder="이름">
							</div>
							<div class="col-md-6">
								<input type="text" name="phone" id="phone" class="form-control" placeholder="전화번호">
							</div>
							<div class="col-md-6">
								<input type="text" name="addr" id="addr" class="form-control" placeholder="주소">
							</div>
						</div>
						<div class="row form-group">
							<input type="submit" id="submit" value="회원정보 수정">
						</div>
					</form>		
				</div>
			</div> 
		</div>
	</div>
	<% } else { 
			response.sendRedirect("login.jsp");
	} %>
	
	
<%-- 	<div class="col-md-6 animate-box" align="center" onsubmit="return validateForm()">
	<ul>
		<li><h5>회원정보수정</h5></li>
		
			<form action="UpdateService" method="post">
				<li>Email : <%= info.getEmail() %></li>
				<li><input type="password" name="pw" placeholder="비밀번호를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
				<li><input type="text" name="nick" placeholder="닉네임을 입력하세요" style="width: 500px; margin: 0 auto;"></li>
				<li><input type="text" name="phone" placeholder="전화번호를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
				<li><input type="text" name="addr" placeholder="집주소를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
				<li><input type="submit" value="Update" class="button fit" style="width: 500px; margin: 0 auto;"></li>
			</form> 
	</ul> 	
	</div> --%>
	 	<footer id="fh5co-footer" role="contentinfo">
	 		<!-- 버튼 -->
	 			<div class="button-container">
				   	<div>    
						<%if(info == null) {%>
							<button class="btn" onclick="location.href='login.jsp'">로그인</button>
							<button class="btn" onclick="location.href='contact.jsp'">회원가입</button>
						<%}else{ %>
							<button class="btn" onclick="location.href='LogoutService'">로그아웃</button>
						<%} %>
							<button class="btn">한국어</button>
							<button class="btn">English</button>   
					</div>
				</div>				
			<div class="container">
				<div class="row copyright"> 
					<div class="col-md-12 text-center">
						<p>
							<small class="block">&copy; 2024 DOORIBURN. All Rights Reserved.</small> 
							<small class="block">Designed by DOORIBURN</small>
						</p>
	 				</div>  
				</div>
			</div> 
		</footer>  
	
	<!-- Side navigation script -->
   <script>
      function openNav() {
         document.getElementById("mySidenav").style.width = "80%";
      }

      function closeNav() {
         document.getElementById("mySidenav").style.width = "0";
      }
   </script>
    
	<script src="js/jquery.min.js"></script> 
	<script src="js/jquery.easing.1.3.js"></script> 
	<script src="js/bootstrap.min.js"></script> 
	<script src="js/jquery.waypoints.min.js"></script> 
	<script src="js/main.js"></script>
</body>
</html>