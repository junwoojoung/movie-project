<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style type="text/css">
	body{
	padding: 0;
	margin: 0;
	}

	.layer_header{
	margin:0;
	padding-top: 13px;
	background-color: #503396;
	color: white;
	font-size: 20px;
	font-weight: bold;
	height: 44px;
	}

	.layer-con{
		padding-top: 15px;
		padding-left: 11px;
	}

	.input-text{
		font-size: 18px;
		margin-bottom: 10px;
		width: 380px;
		height: 43px;
	}

	.btn-login, .btn-close{
		margin-top: 10px;
		margin-bottom: 10px;
		font-size: 16px;
		font-weight: 400;
		width: 386px;
		height: 48px;
		color: #503396;
    	border-radius: 4px;
    	text-decoration: none;
    	border: 1px solid #503396;
    	vertical-align: middle;
    	background-color: #fff;
    	cursor: pointer;
	}

	.link{
		padding-left: 233px;
	}

	a{
		text-decoration: none;
		color: #444;
	}

</style>

</head>
<body>
<header class="layer_header">
	로그인
</header>

<section>
	<form name="loginForm" method="post" action="/project1/movie/login">
		<div class="layer-con">
			<c:if test="${member != null }">
				<p>${member.userId }님 환영합니다.</p>
			</c:if>
			<input type="text" class="input-text" placeholder="아이디" title="아이디를 입력하세요"><br>
			<input type="password" class="input-text" placeholder="비밀번호" title="비밀번호를 입력하세요"><br>
			<input type="checkbox">아이디 저장<br>

			<div class="link">
			<!-- 로그인 팝업창 닫으면서 회원가입 페이지로 전환 -->
			<a href="/join" title="회원가입 선택" onclick="opener.location.href='/project1/movie/join';window.close();">회원가입</a>
			<a href="/user-find" title="ID/PW 찾기 선택">ID/PW 찾기</a><br>
			</div>
			<!-- end link -->
			<c:if test="${msg == false }">
				<p style="color: red;">아이디 또는 비밀번호가 일치하지 않습니다.</p>
			</c:if>
			<input type="submit" class="btn-login" value="로그인"><br>
			<input type="button" class="btn-close" value="닫기" onclick="back()">
		</div>
		<!-- end layer-con -->
	</form>

</section>


<script type="text/javascript">
	function back(){
	opener.parent.location="/project1/movie/index";
	window.close();
	}
</script>

</body>
</html>
