<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<link href="../resources/css/info-input.css" rel="stylesheet" type="text/css">

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>

<body class="bg-member">
<form id="join-form" method="post">
	<input type="hidden" value="${ssn1 }"  name="ssnFront" id="ssnFront">
	<input type="hidden" value="${ssn2 }"  name="ssnBack" id="ssnBack">
	<input type="hidden" value="${phone }" name="userPhone" id="userPhone">
	<!-- 로고 및 각 STEP 표시 -->
	<div class="member-wrap">
		<h1 class="ci">
			<a href="/project1/movie/index" title="메인 페이지로 이동" ></a>
		</h1>
		<div class="col-wrap">
			<div class="col">
				<div class="step-member" title="가입완료 단계 중 step3 정보입력 단계">
					<ol>
						<li>
							<p class="step">
								<em>STEP1.</em>
								<span>
									실명인증
								</span>
							</p>
						</li>
						<li>
							<p class="step">
								<em>STEP2.</em>
								<span>
									약관동의
								</span>
							</p>
						</li>
						<li>
							<p class="step on">
								<em>STEP3.</em>
								<span>
									정보입력
								</span>
							</p>
						</li>
						<li>
							<p class="step">
								<em>STEP4.</em>
								<span>
									가입완료
								</span>
							</p>
						</li>

					</ol>
				</div>
				<!-- end step-member -->



	<p class="page-info-txt">
		<strong>
			${name }님 안녕하세요.
			<input type="hidden" name="userName" id="userName" value="${name }">
		</strong>
		<span>
			회원정보를 입력해주세요.
		</span>
	</p>

	<!-- table-wrap -->
	<div class="table-wrap">
		<table class="board-form">
			<caption>생년월일, 휴대폰번호, 아이디, 비밀번호, 비밀번호 확인, 이메일 주소 항목을 가진 회원가입 정보입력 표</caption>
			<colgroup>
				<col style="width:140px;">
				<col>
			</colgroup>
			<tbody>
				<tr>
					<th scope="row">생년월일<!--생년월일--></th>
					<td>
						<div id="return-ssn">
						<input type="hidden" name="ssnFront" id="ssnFront" value="${ssn1 }">
						<input type="hidden" name="ssnBack" id="ssnBack" value="${snn2 }">
						</div>
					</td>
				</tr>

				<!-- 휴대폰 번호 불러올때 -->
				<tr id="joinInfoPhone"><th scope="row">휴대폰 번호</th>
					<td>
						<div id="return-phone">
						</div>
					</td>
				</tr>

				<tr>
					<th scope="row"><label for="userId">아이디</label></th>
					<td>
						<input maxlength="12" id="userId" name="userId" type="text" placeholder="영문,숫자 조합(8~12자)" class="input-text w260px">
						<button id="btnUserIdDup" type="button" onclick="idChk()" value="N" class="button gray-line small w75px ml08 disabled">중복확인</button>
						<div id="JoinId-error-text" class="alert" style="display: none;">아이디는 영문,숫자 조합 8자리 이상 12자리 이하 입니다.</div>
					</td>
				</tr>
				<tr>
					<th scope="row"><label for="userPw">비밀번호</label></th>
					<td>
						<input maxlength="16" id="userPw" name="userPw" type="password" placeholder="영문,숫자,특수기호를 모두 조합" class="input-text w260px">
						<div id="JoinPw-error-text" class="alert" style="display: none;">비밀번호는 영문,숫자,특수기호를 모두 조합하여 8자리 이상 15자리 이하입니다.</div>
					</td>
				</tr>
				<tr>
					<th scope="row"><label for="userPwConfirm">비밀번호 확인</label></th>
					<td>
						<input maxlength="16" id="userPwConfirm" type="password" placeholder="영문,숫자,특수기호를 모두 조합" class="input-text w260px">
						<div id="JoinPw-Dup-text" class="alert" style="display: none;">비밀번호가 일치하지 않거나 형식에 맞지 않습니다.</div>
					</td>
				</tr>
				<tr>
					<th scope="row"><label for="userEmail">이메일 주소</label></th>
					<td>
						<input maxlength="50" id="userEmail" name="userEmail" type="text" placeholder="이메일주소를 입력해 주세요" class="input-text w260px">
						<div id="JoinEmail-error-text" class="alert" style="display: none;">올바른 이메일 형식으로 입력해주세요.</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- end table-wrap -->

	<!-- marketing-agree -->
	<div class="marketing-agree mt40">
		<p class="tit">마케팅 활용을 위한 개인정보 수집 이용 안내(선택)</p>

		<div class="cont">
			<dl>
				<dt>수집목적</dt><dd>고객맞춤형 상품 및 서비스 추천, 당사 신규 상품/서비스 안내 및 권유, 사은/할인 행사 등 각종 이벤트 정보 등의 안내 및 권유</dd><dt>수집항목</dt><dd>이메일, 휴대폰번호, 주소, 생년월일, 선호영화관, 문자/이메일/앱푸쉬 정보수신동의여부, 서비스 이용기록, 포인트 적립 및 사용 정보, 접속로그 </dd><dt>보유기간</dt><dd>회원 탈퇴 시 혹은 이용 목적 달성 시 까지</dd>
			</dl>

			<div class="radio-agree">
				<input type="radio" id="agree" name="marketing_agree">
				<label for="agree">동의</label>

				<input type="radio" id="notagree" name="marketing_agree" class="ml20">
				<label for="notAgree">미동의</label>
			</div>
			<div id="agree-check-text" class="alert" style="display: none;">마케팅 활용을 위한 개인정보 수집 여부를 선택해주세요.</div>

			<p class="mt30">혜택 수신설정</p>

			<div class="benefit-agree">
				<input type="checkbox" name="mt" id="push">
				<label for="push">알림</label>

				<input type="checkbox" name="mt" id="sms" class="ml20">
				<label for="sms">SMS</label>

				<input type="checkbox" name="mt" id="email" class="ml20">
				<label for="email">이메일</label>
			</div>

			<p class="mt20">
				※  이벤트, 신규 서비스, 할인 혜택 등의 소식을 전해 드립니다.<br>(소멸포인트 및 공지성 안내 또는 거래정보와 관련된 내용은 수신 동의 여부와 상관없이 발송됩니다.)
			</p>
			<div id="mt-check-text" class="alert" style="display: none;">혜택 수신설정을 완료해주세요.</div>

		</div>
	</div>
	<!-- end marketing-agree -->
		<!-- button -->
		<div class="btn-member-bottom">
			<button id="btnJoin" type="button" class="button">회원가입</button>
		</div>
		<!-- end button -->
	</div> <!-- end col -->
	</div> <!-- end col-wrap -->


	</div>
	<!-- end member-wrap -->
	<!-- 로고 및 각 STEP 표시 끝 -->
</form>

<script type="text/javascript">
function idChk() {
	$.ajax({
		url : '/project1/movie/userIdChk',
		type : 'post',
		dateType : 'json',
		data : {'userId' : $('#userId').val()},
		success : function(data) {
			if (data == 1) {
				alert('중복된 아이디입니다.');
			} else if (data == 0) {
				$('#btnUserIdDup').attr('value', 'Y');
				alert('사용가능한 아이디입니다.');
			}
		}
	}); // end ajax

} // end function idChk()



	$(document).ready(function(){

		// 주민등록번호 앞자리를 2000년 01월 01일 형식으로 출력
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

		// 전화번호 010-1111-1111 형식으로 출력
		var phone = $('#userPhone').val();
		console.log(phone);
		phone = phone.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");
		$('#return-phone').html(phone);


		// 회원가입 버튼
		$("#btnJoin").click(function(){
			// 문주 / 숫자 포함 8-12자리 이내의 아이디 정규식
			var idCheck = /^[a-zA-Z0-9]{8,12}$/;

			// 특수문자 / 문자 / 숫자 포함 형태의 8 - 15자리 이내의 암호 정규식
			var pwCheck = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;

			// 이메일 정규식
			var emailCheck = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

			if (!idCheck.test($('#userId').val())){
				$('#JoinId-error-text').show();
				$('#userId').val('');
				$('#userId').focus();
				return false;
			}

			if (!pwCheck.test($('#userPw').val())){
				$('#JoinPw-error-text').show();
				$('#userPw').val('');
				$('#userPw').focus();
				return false;
			}

			if ($('#userPw').val() != $('#userPwConfirm').val()){
				$('#JoinPw-Dup-text').show();
				$('#userPwConfirm').val('');
				$('#userPwConfirm').focus();
				return false;
			}

			if (!emailCheck.test($('#userEmail').val())){
				$('#JoinEmail-error-text').show();
				$('#userEmail').val('');
				$('#userEmail').focus();
				return false;
			}

			if ($('input[name=marketing_agree]:radio:checked').length <1) {
				$('#agree-check-text').show();
				return false;
			}

			if ($('input[id=agree]').is(':checked') == true) {
				if ($('input:checkbox[name="mt"]').is(':checked') == false) {
					$('#mt-check-text').show();
					return false;
				}
			}

			var idChkVal = $('#btnUserIdDup').val();
			if (idChkVal == 'N') {
				alert('중복확인 버튼을 눌러주세요.');
				return false;
			}

			alert('회원가입 완료');
			$('#join-form').attr('action', '/project1/movie/info-input');
			$('#join-form').submit();

		}); // end #btnJoin.click
	});// end document
</script>

</body>
</html>
