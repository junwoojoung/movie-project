<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
   body{
      width: 100%;
      height: 1000px;
      font-size: 15px;

   }
   header{
      background-color: #141b2e;
      color: white;
      text-align: center;
      height: 150px;
      display: block;
      width: 100%;
   }

/* 메가박스 로고에 대한 설정 */
   header .ci a{
   display: block;
   width: 350px;
   height: 70px;
   margin: 0;
   padding: 0;
   font-size: 0;
   line-height: 0;
   background: url(https://img.megabox.co.kr/static/pc/images/common/ci/logo-white_new.png) center center no-repeat;
   }

   nav{
      line-height: 60px;
   }

   section{
      background-color: #1e2b44;
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
   }

	.nav-menu {
		display: flex;
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




</style>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>영화의 시작, 메가박스</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body style="position: relative; margin: 0 auto">
<%
   String section = request.getParameter("section");
%>

<!-- 헤더영역 시작 -->
<header>
   <h1 class="ci" align="center">
   		<a href="" title="메인으로 가기">MEGABOX : Life Theater</a>
   </h1>
<!-- 네비케이션영역 시작-->
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
<!-- 네비게이션영역 끝 -->
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
</body>
</html>
