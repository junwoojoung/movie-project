function idChk() {
	var idCheck = /^[a-zA-Z0-9]{8,12}$/;
	if (!idCheck.test($('#userId').val())){
		alert('가입조건에 맞는 아이디를 입력해주세요.');
		return false;
	}

	$.ajax({
		url : '/project1/login/userIdChk',
		type : 'post',
		dateType : 'json',
		data : {'userId' : $('#userId').val()},
		success : function(data) {
			if (data == 1) {
				alert('중복된 아이디입니다.');
			} else if (data == 0) {
				$('#btnUserIdDup').attr('value', 'Y');
				alert('사용가능한 아이디입니다.');
				$('#JoinId-error-text').hide();
			}
		} // success

	}); // end ajax

} // end function idChk()


$(function() {
	$('.alert-success').hide();
	$('.alert-danger').hide();
	$('#userPwConfirm').keyup(function() {
		var pw1 = $('#userPw').val();
		var pw2 = $('#userPwConfirm').val();

		if (pw1 != '' || pw2 != ''){
			if (pw1 == pw2) {
				$('.alert-success').show();
				$('.alert-danger').hide();
			} else {
				$('.alert-success').hide();
				$('.alert-danger').show();
			}
		}
	}); // end userPwConfirm.keyup
}); // end function

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
		// 문자 / 숫자 포함 8-12자리 이내의 아이디 정규식
		var idCheck = /^[a-zA-Z0-9]{8,12}$/;

		// 특수문자 / 문자 / 숫자 포함 형태의 8 - 15자리 이내의 암호 정규식
		var pwCheck = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;

		// 이메일 정규식
		var emailCheck = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

		// 아이디 확인
		if (!idCheck.test($('#userId').val())){
			$('#JoinId-error-text').show();
			$('#userId').val('');
			$('#userId').focus();
			return false;
		}

		// 비밀번호 확인
		if (!pwCheck.test($('#userPw').val())){
			$('#JoinPw-error-text').show();
			$('#userPw').val('');
			$('#userPw').focus();
			return false;
		}

		// 이메일 확인
		if (!emailCheck.test($('#userEmail').val())){
			$('#JoinEmail-error-text').show();
			$('#userEmail').val('');
			$('#userEmail').focus();
			return false;
		}

		// 라디오박스 동의 여부 확인
		if ($('input[name=marketing_agree]:radio:checked').length <1) {
			$('#agree-check-text').show();
			return false;
		}

		// 동의 시 혜택 수신설정 확인
		if ($('input[id=agree]').is(':checked') == true) {
			if ($('input:checkbox[name="mt"]').is(':checked') == false) {
				$('#mt-check-text').show();
				return false;
			}
		}

		// 중복 확인 버튼
		var idChkVal = $('#btnUserIdDup').val();
		if (idChkVal == 'N') {
			alert('중복확인 버튼을 눌러주세요.');
			return false;
		}

		alert('회원가입 완료');
		$('#join-form').attr('action', '/project1/login/info-input');
		$('#join-form').submit();

	}); // end #btnJoin.click
});// end document
