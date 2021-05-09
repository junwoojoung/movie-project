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

	.btn_area{
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
		<form name="authInfo">
			<br>
			성명 <input type="text" name="name" placeholder="이름">
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

     		성별:<input type="radio" name="gender" value="M" >남자
			<input type="radio" name="gender" value="W" >여자<br/>
			<br>
			<br>
		</form>

		<input type='checkbox' name='agree' value='agree' />개인정보 수집 및 이용에 대한 동의
		<br>
		<input type='checkbox' name='agree' value='agree' />개인정보 제3자 위탁 정보제공에 대한 안내
		<br>
		<div class="btn_area">
			<input type="button" value="확인" class="btn" onclick="auth_check()">
			<input type="button" value="취소" class="btn" onclick="window.close()">
		</div> <!-- end btn -->
	</div> <!-- end blank -->



<script type="text/javascript">
	function auth_check() {
		if (authInfo.name.value == ""){
			 alert("이름이 입력되지 않았습니다.");
			 authInfo.name.focus();
			 return false;
		}

		if (authInfo.name.value.replace(/^[가-힣]*$/,"") != "") {
			alert("제대로된 이름을 작성해 주십시오.");
			return false;
		}


		if (authInfo.birth1.value > 2006){
			 alert("14세 미만 어린이는 보호자와 함께 진행해 주시기 바랍니다.");
			 return false;
		}

		var chk_radio = document.getElementsByName('gender');
		var sel_type = null;

		for(var i=0;i<chk_radio.length;i++){
			if(chk_radio[i].checked == true){
				sel_type = chk_radio[i].value;
			}
		}

		if(sel_type == null){
        	alert("성별을 선택하세요.");
			return false;
		}

		var chk_box = document.getElementsByName('agree');
		var chk = false;
		for(var i=0 ; i<chk_box.length ; i++) {
			if(chk_box[i].checked) {
				chk = true;
			} else {
				chk = false;
			}
		}

		if(chk == false) {
				alert("개인정보 수집에 대한 동의 여부를 확인해 주시기 바랍니다.")
				return false;
		}

// 		authInfo.action = "project1/movie/tos";
		opener.location.href='/project1/movie/tos';
		window.close();
		authInfo.submit();
		alert("실명인증이 완료되었습니다!");


	}
</script>

</body>
</html>
