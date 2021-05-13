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

	}

	.btn1, .btn2{
		width: 418px;
		height: 50px;
		font-size: 20px;
		margin-bottom: 10px;
		border: 0;
	}

	.btn1{
		background-color: #8041D9;
		color: #fff;
	}
	.btn2{
		background-color: #ebebeb;
		color: #fff;
	}

	#name, #phone{
		margin-left:20px;
		height: 44px;
		width: 374px;
		font-size: 20px;
	}

	#ssn1{
 		margin-right: 10px;
	}
	#ssn2{
		margin: 0;
		padding: 0;
	}

	#ssn1, #ssn2{
		margin-left: 20px;
		width: 153px;
		height: 44px;
		font-size: 20px;
	}

	.text{
		margin-left: 20px;
	}

	.ssn-blank{
		margin-left: 13px;
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

		<input type='checkbox' name='agree' value='agree' />개인정보 수집 및 이용에 대한 동의
		<br>
		<input type='checkbox' name='agree' value='agree' />개인정보 제3자 위탁 정보제공에 대한 안내
		<br>
		<div class="btn_area">
			<input type="button" value="확인" class="btn1" onclick="auth_check()">
			<br>
			<input type="button" value="취소" class="btn2" onclick="window.close()">
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


		var num1 = document.getElementById("ssn1");
        var num2 = document.getElementById("ssn2");

        var arrNum1 = new Array(); // 주민번호 앞자리숫자 6개를 담을 배열
        var arrNum2 = new Array(); // 주민번호 뒷자리숫자 7개를 담을 배열

        // -------------- 주민번호 -------------

        for (var i=0; i<num1.value.length; i++) {
            arrNum1[i] = num1.value.charAt(i);
        } // 주민번호 앞자리를 배열에 순서대로 담는다.

        for (var i=0; i<num2.value.length; i++) {
            arrNum2[i] = num2.value.charAt(i);
        } // 주민번호 뒷자리를 배열에 순서대로 담는다.

        var tempSum=0;

        for (var i=0; i<num1.value.length; i++) {
            tempSum += arrNum1[i] * (2+i);
        } // 주민번호 검사방법을 적용하여 앞 번호를 모두 계산하여 더함

        for (var i=0; i<num2.value.length-1; i++) {
            if(i>=2) {
                tempSum += arrNum2[i] * i;
            }
            else {
                tempSum += arrNum2[i] * (8+i);
            }
        } // 같은방식으로 앞 번호 계산한것의 합에 뒷번호 계산한것을 모두 더함

        if((11-(tempSum%11))%10!=arrNum2[6]) {
            alert("올바른 주민번호가 아닙니다.");
            num1.value = "";
            num2.value = "";
            num1.focus();
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
				alert("개인정보 수집에 대한 동의 여부를 확인해 주시기 바랍니다.");
				return false;
		}

		var name = document.getElementById("name").value;
		var ssn1 = document.getElementById("ssn1").value;
		var ssn2 = document.getElementById("ssn2").value;
		var phone = document.getElementById("phone").value;

		console.log(name);
		authInfo.submit();
		opener.location.href='/project1/movie/tos?name=' + name + "&ssn1=" + ssn1 +"&ssn2=" + ssn2 + "&phone=" + phone;
		window.close();
		alert("실명인증이 완료되었습니다!");
	}
</script>

</body>
</html>
