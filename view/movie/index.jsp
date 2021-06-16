<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/index.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>영화의 시작, 메가박스</title>
<link rel="stylesheet" href="#">
</head>
<body style="position: relative; margin: 0 auto">
	<%
   		String section = request.getParameter("section");
	%>

	<!-- 헤더영역 시작 -->
	<header>
		<div>
		   	<a href="/project1/movie/index" title="메인으로 가기">
		   		<img class="logo-img" alt="메인 로고" src="https://img.megabox.co.kr/static/pc/images/common/ci/logo-white_new.png">
		   	</a>
		   	<div class="head-right">
			   	<c:if test="${member eq null }">
					<a class="loginPopup">로그인</a>
					<a href="/project1/login/join" class="join">회원가입</a>
				</c:if>
				<c:if test="${member ne null }">
					<a href="/project1/login/logOut" class="logout">로그아웃</a>
					<a href="/project1/member/mypage" class="my-info">내정보</a>
				</c:if>
			</div>
			<!-- end head-right -->
		</div>

		<nav class="nav-menu">
			<div class="horizontal">
				<ul>
			         <li><a href="/project1/movie/index?section=movie-list.jsp">영화</a></li>
			         <li><a href="/project1/movie/running-time">상영시간표</a></li>
			         <li><a href="/project1/movie/index?section=Guidance-info.jsp">안내 정보</a></li>
			         <li><a href="/project1/movie/index?section=userinfo.jsp">나의 메가박스</a></li>
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
		   <%@include file="main-section.jsp" %>
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

	<script type="text/javascript" src="../resources/js/index.js"></script>
</body>
</html>
