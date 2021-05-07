<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

	.blank{
		margin: 0;
		padding: 0 14px 20px 14px;
	}

	.head{
		border-bottom: solid 2px #333;
		padding-bottom: 10px;
		margin-bottom: 23px;
	}

	form{
		border: 1px solid #333;
	}

	.btn-area{
		padding-top: 25px;
		padding-left: 200px;

	}

	.btn{
		border-radius: 9px;
		width: 100px;
		height: 50px;
		background-color: #d3d3d3;
		font-weight: bold;
		color: white;
	}


</style>
<meta charset="UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<title>실명 인증</title>
</head>
<body>
	<div class="blank">
			<h2 class="head">실명 확인</h2>
	<p>본인 주민등록 기준의 정보를 입력해 주세요.</p>
		<form>
			<br>
			성명 <input type="text" id="name" placeholder="이름">
			<br>
			<br>
			생년월일 <select name="birth1">
       					<%for(int i=2021; i>=1950; i--){ %>
       						<option value="<%=i %>"><%=i %></option>
     					<%} %>
     			  </select>년&nbsp;
     			  <select name="birth2">
       					<%for(int i=1; i<=12; i++){ %>
       						<option value="<%=i %>"><%=i %></option>
       					<%} %>
     			  </select>
				  <select name="birth3">
       					<%for(int i=1; i<=31; i++){ %>
       						<option value="<%=i %>"><%=i %></option>
       					<%} %>
     			  </select>일
     			  <br>
				  <br>

     		성별:<input type="radio" value="M" id="gender">남자
			<input type="radio" value="W" id="gender">여자<br/>
			<br>
			<br>
		</form>

		<input type='checkbox' name='agree' value='agree' />개인정보 수집 및 이용에 대한 동의
		<br>
		<input type='checkbox' name='agree' value='agree' />개인정보 제3자 위탁 정보제공에 대한 안내
		<br>
		<div class="btn-area">
			<input type="button" value="확인" class="btn" onclick="">
			<input type="button" value="취소" class="btn" onclick="">
		</div> <!-- end btn -->
	</div> <!-- end blank -->




</body>
</html>
