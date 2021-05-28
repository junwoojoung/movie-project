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

	.delete-btn{
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

	.table-interval{
		padding-top: 40px;
	}


</style>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<head>
<meta charset="UTF-8">
<title>회원정보 삭제</title>
</head>

<body class="bg-member">
<form id="deleteForm" method="post" action="/project1/movie/info-delete">
	<div class="member-wrap">
		<h1 class="ci">
			<a href="/project1/movie/index" title="메인 페이지로 이동" ></a>
		</h1>
		<div class="col-wrap">
			<div class="col">

	<p class="page-info-txt">
		<strong>
			개인정보 삭제
		</strong>
		<span>
			회원님의 정보를 확인해주세요.
		</span>
	</p>

	<!-- table-wrap -->
	<div class="table-wrap">
		<table class="board-form">
			<caption>생년월일, 휴대폰번호, 아이디, 비밀번호, 비밀번호 확인, 이메일 주소 항목을 표시한 회원정보 삭제 표</caption>
			<colgroup>
				<col style="width:140px;">
				<col>
			</colgroup>
			<tbody>
				<tr>
					<th scope="row">이름</th>
					<td>
						<div id="return-userName">
							<input type="text" id="userName" name="userName" value="${member.userName }">
						</div>
					</td>
				</tr>

				<tr>
					<th scope="row">생년월일</th>
					<td>
						<div id="return-ssn">
							<input type="hidden" id="ssnFront" name="ssnFront"  value="${member.ssnFront }">
							<input type="hidden" id="ssnBack" name="ssnBack" value="${member.ssnBack }">
						</div>
					</td>
				</tr>

				<tr id="joinInfoPhone"><th scope="row">휴대폰 번호</th>
					<td>
						<div id="return-phone">
							<input type="hidden" id="userPhone" name="userPhone" value="${member.userPhone }">
						</div>
					</td>
				</tr>
				<tr>
					<th scope="row">이메일 주소</th>
					<td>
						<div id="return-userEmail">
							<input type="text" id="userEmail" name="userEmail" value="${member.userEmail }">
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="table-interval">
		<p style="color: red;">※회원님의 아이디와 비밀번호를 입력해주세요.</p>
	</div>
	<div class="table-wrap">
		<table class="board-form">
			<tbody>
				<tr>
					<th scope="row">아이디</th>
					<td>
						<input type="text" id="userId" name="userId" class="input-text w260px" value="${member.userId }" readonly="readonly">
					</td>
				</tr>
				<tr>
					<th scope="row">비밀번호</th>
					<td>
						<input  type="password"  id="userPw" name="userPw" class="input-text w260px">
					</td>
				</tr>
			</tbody>
		</table>

	</div>
	<!-- end table-wrap -->

	<div class="btn-member-bottom">
		<button id="cencle-btn" type="button" class="cencle-btn">취소</button>
		<button id="delete-btn" type="button" class="delete-btn">삭제</button>
	</div>
	</div> <!-- end col -->
	</div> <!-- end col-wrap -->

	</div>
	<!-- end member-wrap -->
</form>

<script type="text/javascript">

	$(document).ready(function(){

		// 아이디
		var userId = $('#userId').val();
		$('#return-userId').html(userId);

		// 이름
		var userName = $('#userName').val();
		$('#return-userName').html(userName);

		// 이메일
		var userEmail = $('#userEmail').val();
		$('#return-userEmail').html(userEmail);

		// 주민등록번호
		var ssn1 = $('#ssnFront').val();
		console.log(ssn1);

		var ssn2 = $('#ssnBack').val();
		console.log(ssn2);

		var yy = ssn1.substring(0, 2);
	  	var mm = ssn1.substring(2, 4);
	  	var dd = ssn1.substring(4, 6);
	  	var gender_code = ssn2.substring(0, 1);

		if (yy == ("00")) {
			yy = "20" + yy;
		} else {
			yy = "19" + yy;
		}
		console.log(yy + "년" + mm + "월" + dd + "일");
		$('#return-ssn').html(yy + "년" + mm + "월" + dd + "일");

		// 전화번호
		var phone = $('#userPhone').val();
		console.log(phone);
		phone = phone.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");
		$('#return-phone').html(phone);


		// 취소
		$('.cencle-btn').on('click', function(){
			location.href='/project1/movie/mypage';
		});

		$('#delete-btn').on("click", function(){
			if ($('userPw').val() == '') {
				alert('비밀번호를 입력해주세요.');
				$('#userPw').focus();
				return false;
			}

			$.ajax({
				url : '/project1/movie/pwChk',
				type : 'post',
				dataType : 'json',
				data : $('#deleteForm').serializeArray(),
				success : function(data) {

					if (data == 0) {
						alert('패스워드가 틀렸습니다.');
						$('#userPw').val('');
						$('#userPw').focus();
						return;
					} else {
						if (confirm('회원탈퇴를 하시겠습니까?')) {
							$('#deleteForm').submit();
						}
					}
				}

			});

		}); // end delete-btn click

	});// end document
</script>

</body>
</html>
