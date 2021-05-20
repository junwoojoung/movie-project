<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="../resources/css/auth.css" rel="stylesheet" type="text/css">
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

<script type="text/javascript">

	function auth_check() {

		// 이름 유효성 검사
		var nameCheck = /^[가-힣]+$/;

		if (!nameCheck.test($('#name').val())){
			alert('올바른 이름을 입력해주세요.');
			return false;
		}


        var ssn = $("#ssn1").val() + $("#ssn2").val();
        //주민등록번호 생년월일 전달

        var fmt = RegExp(/^\d{6}[1234]\d{6}$/)  //포멧 설정
        var buf = new Array(13);


        //주민번호 유효성 검사
        if (!fmt.test(ssn)) {
              alert("주민등록번호 형식에 맞게 입력해주세요");
              $("#ssn1").focus();
              return false;
          }

          //주민번호 존재 검사
           for (var i = 0; i < buf.length; i++){
             buf[i] = parseInt(ssn.charAt(i));
        }
             var multipliers = [2,3,4,5,6,7,8,9,2,3,4,5];// 밑에 더해주는 12자리 숫자들
             var sum = 0;

              for (var i = 0; i < 12; i++){
                  sum += (buf[i] *= multipliers[i]);// 배열끼리12번 돌면서
             }
               if ((11 - (sum % 11)) % 10 != buf[12]) {
                  alert("잘못된 주민등록번호 입니다.");
                  $('#ssn1').val('');
                  $('#ssn2').val('');
                  $('#ssn1').focus();
                    return false;
               }

        // 전화번호 유효성 검사
        var phoneCheck = /^[0-9]{2,3}[0-9]{3,4}[0-9]{4}/;

        if (!phoneCheck.test($('#phone').val())) {
        	alert("유효하지 않은 전화번호 이거나 형식에 맞지 않습니다.");
        	$('#phone').focus();
        	return false;
        }

		// 개인정보 동의 유효성 검사
		if ($('input:checkbox[name=agree1]').is(':checked') == false) {
			alert("개인정보 수집에 대한 동의 여부를 확인해 주시기 바랍니다.");
			return false;
		}

		if ($('input:checkbox[name=agree2]').is(':checked') == false) {
			alert("개인정보 제3자 위탁 정보제공에 대한 안내에 대한 동의 여부를 확인해 주시기 바랍니다.");
			return false;
		}

		// url에 전달하기 위한 값 받기
		var name = $('#name').val();
		var ssn1 = $('#ssn1').val();
		var ssn2 = $('#ssn2').val();
		var phone = $('#phone').val();

		authInfo.submit();
		opener.location.href='/project1/movie/tos?name=' + name + "&ssn1=" + ssn1 +"&ssn2=" + ssn2 + "&phone=" + phone;
		window.close();
		alert("실명인증이 완료되었습니다!");
	}
</script>

</body>
</html>
