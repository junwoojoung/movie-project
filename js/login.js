function back() {
	opener.parent.location = "/project1/movie/index";
	window.close();
};

$(document).ready(function() {

	$('#btn-login').click(function() {
		var userId = $('#userId').val();
		var userPw = $('#userPw').val();
		var obj = { // 입력 값을 서버에 보내기 위해 포장
			userId: userId,
			userPw: userPw
		}; // end obj

		$.ajax({
			type: 'post',
			url: '/project1/login/login',
			data: obj,
			success: function(msg) {
				console.log(msg);
				if (msg == 'success') {
					self.close(); //현재창 닫기
					opener.location.reload(); // 부모창 리프레쉬
				} else {
					alert('아이디 또는 패스워드가 일치하지 않습니다.');
				}
			} // end success

		}); // end ajax

	}); // end btn-login.click

	/* 로그인 쿠키 생성 */
	// 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
	var key = getCookie("key");
	$("#userId").val(key);

	if ($("#userId").val() != "") { // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
		$("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
	};

	$("#idSaveCheck").change(function() { // 체크박스에 변화가 있다면,
		if ($("#idSaveCheck").is(":checked")) { // ID 저장하기 체크했을 때,
			setCookie("key", $("#userId").val(), 7); // 7일 동안 쿠키 보관
		} else { // ID 저장하기 체크 해제 시,
			deleteCookie("key");
		};
	});

	// ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
	$("#userId").keyup(function() { // ID 입력 칸에 ID를 입력할 때,
		if ($("#idSaveCheck").is(":checked")) { // ID 저장하기를 체크한 상태라면,
			setCookie("key", $("#userId").val(), 7); // 7일 동안 쿠키 보관
		};
	});

	function setCookie(cookieName, value, exdays) {
		var exdate = new Date();
		exdate.setDate(exdate.getDate() + exdays);
		var cookieValue = escape(value) + ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
		document.cookie = cookieName + "=" + cookieValue;
	};

	function deleteCookie(cookieName) {
		var expireDate = new Date();
		expireDate.setDate(expireDate.getDate() - 1);
		document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
	};

	function getCookie(cookieName) {
		cookieName = cookieName + '=';
		var cookieData = document.cookie;
		var start = cookieData.indexOf(cookieName);
		var cookieValue = '';
		if (start != -1) {
			start += cookieName.length;
			var end = cookieData.indexOf(';', start);
			if (end == -1) end = cookieData.length;
			cookieValue = cookieData.substring(start, end);
		};
		return unescape(cookieValue);
	};
	/* end 로그인 쿠키 생성 */

}); // end document
