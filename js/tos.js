$(document).ready(function() {
	// 최상단 체크박스 클릭
	$('#chkAll').click(function() {
		// 클릭 되었으면
		if ($('#chkAll').prop('checked')) {
			$('input[name=chkBox]').prop('checked', true);
		} else {
			$('input[name=chkBox]').prop('checked', false);
		};

	}); // end chkAll.click

}); //end document

$(document).ready(function() {
	$('#btn').click(function() {
		if ($('input[id=chk-necessary]').is(':checked') == true) {
			alert('다음 페이지로 이동');
			var name = document.getElementById("name").value;
			var ssn1 = document.getElementById("ssn1").value;
			var ssn2 = document.getElementById("ssn2").value;
			var phone = document.getElementById("phone").value;
			location.href = '/project1/login/info-input?name=' + name + "&ssn1=" + ssn1 + "&ssn2=" + ssn2 + "&phone=" + phone;

		} else {
			alert('필수 약관 동의 버튼을 클릭해 주세요');
		};
	}); // end btn.click

}); // end document
