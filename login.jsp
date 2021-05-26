<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style type="text/css">
	body{
	padding: 0;
	margin: 0;
	}

	.layer_header{
	margin:0;
	padding-top: 13px;
	background-color: #503396;
	color: white;
	font-size: 20px;
	font-weight: bold;
	height: 44px;
	}

	.layer-con{
		padding-top: 15px;
		padding-left: 11px;
	}

	.input-text{
		font-size: 18px;
		margin-bottom: 10px;
		width: 380px;
		height: 43px;
	}

	.btn-login, .btn-close{
		margin-top: 10px;
		margin-bottom: 10px;
		font-size: 16px;
		font-weight: 400;
		width: 386px;
		height: 48px;
		color: #503396;
    	border-radius: 4px;
    	text-decoration: none;
    	border: 1px solid #503396;
    	vertical-align: middle;
    	background-color: #fff;
    	cursor: pointer;
	}

	.link{
		padding-left: 233px;
	}

	a{
		text-decoration: none;
		color: #444;
	}

</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/js-cookie@2/src/js.cookie.min.js"></script>
</head>
<body>
<header class="layer_header">
	로그인
</header>

<section>
<input type="hidden" id="getMsg" value="${msg}">
	<c:if test="${member eq null }">
		<div class="layer-con">
			<input type="text" id="userId" class="input-text" placeholder="아이디" title="아이디를 입력하세요"><br>
			<input type="password" id="userPw" class="input-text" placeholder="비밀번호" title="비밀번호를 입력하세요"><br>
			<input type="checkbox" id="idSaveCheck">아이디 저장<br>

			<div class="link">
			<!-- 로그인 팝업창 닫으면서 회원가입 페이지로 전환 -->
			<a href="/join" title="회원가입 선택" onclick="opener.location.href='/project1/movie/join';window.close();">회원가입</a>
			<a href="/user-find" title="ID/PW 찾기 선택">ID/PW 찾기</a><br>
			</div>
			<!-- end link -->

			<input type="button" id="btn-login" class="btn-login" value="로그인"><br>
			<input type="button" class="btn-close" value="닫기" onclick="back()">
		</div>
		<!-- end layer-con -->
	</c:if>


</section>

<script type="text/javascript">
	function back(){
	opener.parent.location="/project1/movie/index";
	window.close();
	};

	$(document).ready(function(){

		$('#btn-login').click(function() {
			var userId = $('#userId').val();
			var userPw = $('#userPw').val();
			var obj = { // 입력 값을 서버에 보내기 위해 포장
					userId : userId,
					userPw : userPw
			}; // end obj

			$.ajax({
				type : 'post',
				 url : '/project1/movie/login',
				data : obj,
				success : function(msg) {
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


	    // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
	    var key = getCookie("key");
	    $("#userId").val(key);

	    if($("#userId").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
	        $("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
	    };

	    $("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
	        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
	            setCookie("key", $("#userId").val(), 7); // 7일 동안 쿠키 보관
	        }else{ // ID 저장하기 체크 해제 시,
	            deleteCookie("key");
	        };
	    });

	    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
	    $("#userId").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
	        if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,
	            setCookie("key", $("#userId").val(), 7); // 7일 동안 쿠키 보관
	        };
	    });

	function setCookie(cookieName, value, exdays){
	    var exdate = new Date();
	    exdate.setDate(exdate.getDate() + exdays);
	    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
	    document.cookie = cookieName + "=" + cookieValue;
	};

	function deleteCookie(cookieName){
	    var expireDate = new Date();
	    expireDate.setDate(expireDate.getDate() - 1);
	    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
	};

	function getCookie(cookieName) {
	    cookieName = cookieName + '=';
	    var cookieData = document.cookie;
	    var start = cookieData.indexOf(cookieName);
	    var cookieValue = '';
	    if(start != -1){
	        start += cookieName.length;
	        var end = cookieData.indexOf(';', start);
	        if(end == -1)end = cookieData.length;
	        cookieValue = cookieData.substring(start, end);
	    };
	    return unescape(cookieValue);
	};


	}); // end document
</script>
</body>
</html>
