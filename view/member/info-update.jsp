<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<style type="text/css">
			html{
		-webkit-text-size-adjust: 100%;
		width: 100%;
		height: 100%;
	}

	.bg-member{
		background-color: #f5f5f5;
	}

	div{
		display: block;
	}

	* {
		box-sizing: border-box;
	}


	body{
		letter-spacing: 0;
		line-height: 1.5;
		font-size: 15px;
		color: #444;
		font-weight: 400;
		/* 폰트 상의 후 */
		font-family: Arial, sans-serif;
	}

	body, html{
		width: 100%;
		height: 100%;
		margin: 0;
		padding: 0;
	}

	/* 메가박스 로고 */
	.ci a{
		display: block;
		width: 150px;
		height: 53px;
		background: url(https://img.megabox.co.kr/static/pc/images/common/ci/logo.png) center no-repeat;
		padding: 0;
		margin: 0 auto;
	}
	/* 메가박스 로고 */


	.ci{
		overflow: hidden;
		display: block;
		margin: 0;
		padding: 0 0 70px 0;
		text-align: center;
	}

	/**스탭 부분*/

	.member-wrap{
		width: 910px;
		min-height: 100%;
		margin: 0 auto;
		padding: 80px 100px;
		background-color: #fff;

	}

	.col-wrap{
		overflow: hidden;
	}


	.member-wrap .page-info-txt{
		padding: 0 0 20px 0;
		line-height: 1.1;
	}


	.member-wrap .table-wrap .board-form tr td .button {
    padding: 0 10px;
	}



	strong{
		display: block;
		padding: 0 0 10px 0;
		font-size: 1.4em;
		color: #222;
		font-weight: 400;
	}

	.input-text {
    display: inline-block;
    height: 32px;
    padding: 0 10px;
    line-height: 30px;
    color: #444;
    border: 1px solid #d8d9db;
    vertical-align: middle;
    width: 300px;
    margin-right: 10px;
	}

	.button.gray-line {
    line-height: 36px;
    border: 1px solid #c1c1c1;
    background-color: #fff;
	}


	/* tbody */
	.table-wrap {
    position: relative;
    border-top: 1px solid #555;
	}

	table {
    width: 100%;
    margin: 0;
    border: 0;
    table-layout: fixed;
    border-collapse: collapse;
    empty-cells: show;
	}

	table caption {
    overflow: hidden;
    width: 0;
    height: 0;
    font-size: 0;
    line-height: 0;
    opacity: 0;
	}


	element.style {
    width: 150px;
	}

	.board-form tbody th {
    background: #f7f8f9;
	}

	.board-form tbody td, .board-form tbody th {
    position: relative;
    height: 50px;
    padding: 7px 15px;
    text-align: left;
    border-bottom: 1px solid #d1d5dd;
	}

	tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
	}

	th {
    font-weight: bold;
    text-align: -internal-center;
	}
	/* end tbody */


	/* button */
	.btn-member-bottom{
	text-align: center;
	padding: 20px;
	}

	.cencle-btn {
    display: inline-block;
    margin: 0;
    padding: 0 30px;
    text-align: center;
    line-height: 44px;
    color: #503396;
    font-weight: 400;
    border-radius: 4px;
    text-decoration: none;
    border: 1px solid #503396;
    vertical-align: middle;
    background-color: #fff;
    cursor: pointer;
	}

	.update-btn {
     display: inline-block;
    margin: 0 0 0 10px;
    padding: 0 30px;
    text-align: center;
    line-height: 46px;
    color: #fff;
    font-weight: 400;
    border-radius: 4px;
    text-decoration: none;
    border: 0px;
    vertical-align: middle;
    background-color: #503396;
    cursor: pointer;
	}

	/* end button*/


	.alert {
    margin-top: 5px;
    color: #e81002;
    font-size: .9333em;
	}

	.pwChk {
	border-radius: 4px;
	line-height: 36px;
    border: 1px solid #c1c1c1;
    background-color: #fff;
	}

</style>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>

<body class="bg-member">
<form id="updateForm" method="post" action="/project1/movie/info-update">
	<input type="hidden" id="ssnFront" name="ssnFront"  value="${member.ssnFront }">
	<input type="hidden" id="ssnBack" name="ssnBack" value="${member.ssnBack }">
	<!-- 로고 및 각 STEP 표시 -->
	<div class="member-wrap">
		<h1 class="ci">
			<a href="/project1/movie/index" title="메인 페이지로 이동" ></a>
		</h1>
		<div class="col-wrap">
			<div class="col">

	<p class="page-info-txt">
		<strong>
			개인정보 수정
		</strong>
		<span>
			회원님의 개인정보 보호를 위해 비밀번호 확인 절차를 진행해야 합니다.<br>
			비밀번호 확인을 먼저 진행해 주시기 바랍니다
		</span>
	</p>

	<!-- table-wrap -->
	<div class="table-wrap">
		<table class="board-form">
			<caption>생년월일, 휴대폰번호, 아이디, 비밀번호, 비밀번호 확인, 이메일 주소 항목을 가진 회원정보 수정 표</caption>
			<colgroup>
				<col style="width:140px;">
				<col>
			</colgroup>
			<tbody>
				<tr>
					<th scope="row">이름</th>
					<td>
						<input type="text" id="userName" name="userName" class="input-text w260px" value="${member.userName }">
					</td>
				</tr>

				<tr><th scope="row">휴대폰 번호</th>
					<td>
						<input type="text" id="userPhone" name="userPhone" placeholder="- 없이 입력"  class="input-text w260px" value="${member.userPhone }" maxlength="11">
					</td>
				</tr>

				<tr>
					<th scope="row">아이디</th>
					<td>
						<input  type="text" id="userId" name="userId" class="input-text w260px" value="${member.userId }" readonly="readonly">
						※아이디는 변경하실 수 없습니다.
					</td>
				</tr>

				<tr>
					<th scope="row">비밀번호</th>
					<td>
						<input  type="password"  id="userPw" name="userPw" class="input-text w260px" maxlength="16">
<!-- 						<label style="color: red;">※정보 수정을 위해 필수 입력</label> -->
						<button type="button" id="pwChk" class="pwChk" value="N">비밀번호 확인</button>
					</td>
				</tr>

				<tr>
					<th scope="row">이메일 주소</th>
					<td>
						<input type="text" id="userEmail" name="userEmail" placeholder="이메일주소를 입력해 주세요" class="input-text w260px" value="${member.userEmail }" maxlength="50">
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- end table-wrap -->

	<div class="btn-member-bottom">
		<button id="cencle-Btn" type="button" class="cencle-btn">취소</button>
		<button id="update-Btn" type="button" class="update-btn">수정</button>
	</div>
	</div> <!-- end col -->
	</div> <!-- end col-wrap -->


	</div>
	<!-- end member-wrap -->
	<!-- 로고 및 각 STEP 표시 끝 -->
</form>

<script type="text/javascript">

	$(document).ready(function(){
		$('#update-Btn').click(function(){
		// 이름
		var nameCheck = /^[가-힣]+$/;

		// 전화번호 유효성 검사
		var phoneCheck = /^[0-9]{2,3}[0-9]{3,4}[0-9]{4}/;

		// 특수문자 / 문자 / 숫자 포함 형태의 8 - 15자리 이내의 암호 정규식
		var pwCheck = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;

		// 이메일
		var emailCheck = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;


  		if (!nameCheck.test($('#userName').val())){
  			alert('올바른 이름을 입력해주세요.');
			$('#userName').val('');
 			$('#userName').focus();
 			return false;
 		}

		if (!phoneCheck.test($('#userPhone').val())) {
	       	alert('유효하지 않은 전화번호 이거나 형식에 맞지 않습니다.');
			$('#userPhone').val('');
	       	$('#userPhone').focus();
	       	return false;
	    }

		if (!emailCheck.test($('#userEmail').val())){
			alert('올바른 이메일 형식으로 입력해주세요.');
			$('#userEmail').val('');
			$('#userEmail').focus();
			return false;
		}

		var pwChk = $('#pwChk').val();
		if (pwChk == 'N') {
			alert('비밀번호 확인을 진행해주세요.');
			return false;
		} else if (pwChk == 'Y' && !pwCheck.test($('#userPw').val())){
			alert('비밀번호는 영문,숫자,특수기호를 모두 조합하여 8자리 이상 15자리 이하입니다.');
			$('#userPw').val('');
			$('#userPw').focus();
			return false;
		}

		alert('회원정보 수정 완료\n로그인 후 다시 이용해 주세요.');
		$('#updateForm').submit();

		}); // end update-btn.click

		// 취소
		$('#cencle-Btn').on('click', function(){
			location.href='/project1/movie/mypage';
		});

		$('#pwChk').on("click", function(){
			if ($('userPw').val() == '') {
				alert('비밀번호를 입력해주세요.');
				$('#userPw').focus();
				return false;
			}

			$.ajax({
				url : '/project1/movie/pwChk',
				type : 'post',
				dataType : 'json',
				data : $('#updateForm').serializeArray(),
				success : function(data) {

					if(data == 1){
						alert("비밀번호 확인이 완료되었습니다.\n 회원님의 정보를 변경하십시오.");
						$('#pwChk').attr('value', 'Y');
					}else{
						alert("패스워드가 틀렸습니다.");
						return;

					}
				}

			}); // end ajax

		}); // end pwChk.click


	});// end document
</script>

</body>
</html>
