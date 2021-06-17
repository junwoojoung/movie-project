<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/login.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/js-cookie@2/src/js.cookie.min.js"></script>
<title>Login</title>
</head>
<body>
	<header class="layer_header">
		로그인
	</header>

	<section>
		<input type="hidden" id="getMsg" value="${msg}">
		<c:if test="${member eq null }">
			<div class="layer-con">
				<input type="text" id="userId" class="input-text" placeholder="아이디" title="아이디를 입력하세요"><br>
				<input type="password" id="userPw" class="input-text" placeholder="비밀번호" title="비밀번호를 입력하세요"><br>
				<input type="checkbox" id="idSaveCheck">아이디 저장<br>

				<div class="link">
					<a href="/join" title="회원가입 선택" onclick="opener.location.href='/project1/movie/join';window.close();">회원가입</a>
					<a href="/user-find" title="ID/PW 찾기 선택">ID/PW 찾기</a><br>
				</div>
				<!-- end link -->

				<input type="button" id="btn-login" class="btn-login" value="로그인"><br>
				<input type="button" class="btn-close" value="닫기" onclick="back()">
			</div>
			<!-- end layer-con -->
		</c:if>
	</section>

	<script type="text/javascript" src="../resources/js/login.js"></script>
</body>
</html>
