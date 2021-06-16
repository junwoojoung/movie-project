<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/auth.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<title>실명 인증</title>
</head>
<body>
	<div class="blank">
		<h2 class="head">실명 확인</h2>
		<p>본인 주민등록 기준의 정보를 입력해 주세요.</p>
		<form name="authInfo">
			<br>
			<label class="text">성명</label>
			<br>
			<input type="text" name="name" id="name" >
			<br>
			<br>
			<label class="text">주민등록번호</label>
			<br>
			<input type="text" name="ssn1" id="ssn1" maxlength="6"></input>
			<label  class="ssn-blank">-</label>
            <input type="password" name="ssn2" id="ssn2" maxlength="7"></input><br/>
   	    	<br>
			<label class="text">휴대폰번호</label>
			<br>
			<input type="text" name="phone" id="phone" maxlength="11" placeholder="'-'제외하고 숫자만 입력">
			<br>
			<br>
		</form>

		<input type='checkbox' name='agree1' value='agree' />개인정보 수집 및 이용에 대한 동의
		<br>
		<input type='checkbox' name='agree2' value='agree' />개인정보 제3자 위탁 정보제공에 대한 안내
		<br>
		<div class="btn_area">
			<input type="button" value="확인" class="btn1" onclick="auth_check()">
			<br>
			<input type="button" value="취소" class="btn2" onclick="window.close()">
		</div>
		<!-- end btn -->
	</div>
	 <!-- end blank -->

	<script type="text/javascript" src="../resources/js/auth.js"></script>
</body>
</html>
