<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	font-size: 18px;
	font-weight: bold;
	height: 40px;
	}
</style>

<!-- 뒤로가기 클릭 시 팝업창 닫으면서 부모창 새로고침 -->
<script type="text/javascript">
	function back(){
		opener.parent.location="/project1/movie/index";
		window.close();
	}

</script>
</head>
<body>
	<header class="layer_header">
	로그인
	</header>

	<section>
		<input type="text" placeholder="아이디"><br>
		<input type="password" placeholder="비밀번호"><br>
		<input type="checkbox" value="아이디 저장"><br>
		<input type="button" value="로그인"><br>
		<a href="">ID/PW 찾기</a>
		<a href="">회원가입</a>
	</section>



	<input type="button" class="close_btn" value="닫기" onclick="back()">


</body>
</html>
