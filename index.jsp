<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
   body{
      width: 100%;
      height: 1300px;
      color: white;

   }
   header{
      background-color: #141b2e;
      color: white;
      text-align: center;
      height: 150px;
      display: block;
      width: 100%;
   }


   .logo_img{
   padding-top: 40px;
   padding-left:768px;
   width: 200px;
   height: 60px;
   display: block;
   position: absolute;

   }

   nav{
      line-height: 60px;
   }

   section{
      background-color: #1f304e;
      width: 99% float:left;
      height: 60%;
      padding: 10px;

   }
   footer{
      background-color: white;
      color: black;
      text-align: left;
      height: 5%;
      padding: 5px;
   }

   div.horizontal{
   	  padding-top:80px;
      width: 100%;
      height: 60px;
   }

   div.horizontal ul{
      list-style-type: none;
      margin: 0;
      padding: 0;
   }

   div.horizontal li{
      float: left;
      padding-left: 280px;
   }

	.nav-menu {
		justify-content: space-around;
		height: 100vh;
	}

	.nav-menu a {
		font-size: 24px;
		color: #fff;
		text-decoration: none;
		position: relative;
		padding: 6px 12px;
	}

	.nav-menu a::after {
		content: "";
		position: absolute;
		bottom: 0;
		left: 50%;
		transform: translateX(-50%);
		width: 0;
		height: 4px;
		background: #ffffff;
		transform: all .5s ease-out;
	}

	.nav-menu a:hover::after {
		width: 100%;
	}

	.login{
		padding-top: 30px;
		padding-left: 1450px;
		position: absolute;
	}

	.div_right{
	color: #888;
	font-size: 15px;
	text-decoration: none;

	}

/* 팝업창 클릭 시 주위 배경 어둡게 */
.emphasized {

position:fixed;

left:10000px;

box-shadow : rgba(0,0,0,0.5) 0 0 0 9999px, rgba(0,0,0,0.9) 2px 2px 3px 3px;

z-index : 100;

}

</style>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>영화의 시작, 메가박스</title>
<link rel="stylesheet" href="#">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">


</script>

</head>
<body style="position: relative; margin: 0 auto">
<%
   String section = request.getParameter("section");
%>

<!-- 헤더영역 시작 -->
<header>
   <div class="logo">
   		<a href="/project1/movie/index" title="메인으로 가기">
   		<img class="logo_img" alt="메인 로고" src="https://img.megabox.co.kr/static/pc/images/common/ci/logo-white_new.png">
   		</a>



   		<div class="login">
			<a class="div_right"
			href="#"
			onclick="window.open('/project1/movie/login', 'login', 'width=700, height=484, left=600, top=260, location=no,toolbar=no, status=no, scrollbars=no')"
			 >로그인</a>


			<a href="/project1/movie/join" class="div_right">회원가입</a>
		</div>
   </div>


<nav class="nav-menu">
<div class="horizontal">
	<ul>
         <li><a href="/movie">영화</a></li>
         <li><a href="/reserve">예매</a></li>
         <li><a href="/information">안내 정보</a></li>
         <li><a href="/userinfo">나의 메가박스</a></li>
    </ul>
</div>
</nav>


</header>
<!-- 헤더영역 끝 -->

<!-- 섹션영역 시작-->
<section>
<%
   if(request.getParameter("section") == null){
%>
   <%@include file="main_section.jsp" %>
<%
   }else{
%>
   <jsp:include page="<%=section %>" />
<%
   }
%>
</section>
<!-- 섹션영역 끝-->
<!-- 푸터영역 시작-->
<footer>
   <br>
   영화 예매 사이트 제작 : 이인호, 정준우
</footer>
<!-- 푸터영역 끝-->


<script type="text/javascript">
	$(document).ready(function(){
		$(".div_right").click(function(){
			$(".div_right").toggleClass("emphasized");

		}); // end click
	}); // end document




</script>
</body>
</html>
