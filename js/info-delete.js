$(document).ready(function() {
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
	phone = phone.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/, "$1-$2-$3");
	$('#return-phone').html(phone);


	// 취소
	$('.cencle-btn').on('click', function() {
		location.href = '/project1/movie/mypage';
	});

	$('#delete-btn').on("click", function() {
		if ($('userPw').val() == '') {
			alert('비밀번호를 입력해주세요.');
			$('#userPw').focus();
			return false;
		}

		$.ajax({
			url: '/project1/member/pwChk',
			type: 'post',
			dataType: 'json',
			data: $('#deleteForm').serializeArray(),
			success: function(data) {
				if (data == false) {
					alert('패스워드가 틀렸습니다.');
					$('#userPw').val('');
					$('#userPw').focus();
					return;
				} else {
					if (confirm('회원탈퇴를 하시겠습니까?')) {
						$('#deleteForm').submit();
					};
				};
			} // end success

		}); // end ajax

	}); // end delete-btn click

});// end document
