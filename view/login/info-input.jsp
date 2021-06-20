<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/info-input.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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
										<input type="hidden" id="ssnFront" name="ssnFront"  value="${ssn1 }">
										<input type="hidden" id="ssnBack" name="ssnBack"  value="${snn2 }">
										</div>
									</td>
								</tr>

								<!-- 휴대폰 번호 불러올때 -->
								<tr><th scope="row">휴대폰 번호</th>
									<td>
										<div id="return-phone">
										</div>
									</td>
								</tr>

								<tr>
									<th scope="row"><label for="userId">아이디</label></th>
									<td>
										<input type="text" id="userId" name="userId" placeholder="영문,숫자 조합(8~12자)" class="input-text w260px" maxlength="12" >
										<button type="button" id="btnUserIdDup" onclick="idChk()" value="N" class="button gray-line small w75px ml08 disabled">중복확인</button>
										<div id="JoinId-error-text" class="alert" style="display: none;">아이디는 영문,숫자 조합 8자리 이상 12자리 이하 입니다.</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="userPw">비밀번호</label></th>
									<td>
										<input type="password" id="userPw" name="userPw" placeholder="영문,숫자,특수기호를 모두 조합" class="input-text w260px" maxlength="16">
										<div id="JoinPw-error-text" class="alert" style="display: none;">비밀번호는 영문,숫자,특수기호를 모두 조합하여 8자리 이상 15자리 이하입니다.</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="userPwConfirm">비밀번호 확인</label></th>
									<td>
										<input type="password" id="userPwConfirm" placeholder="영문,숫자,특수기호를 모두 조합" class="input-text w260px" maxlength="16">
										<div id="JoinPw-Dup-text" class="alert" style="display: none;">비밀번호가 일치하지 않거나 형식에 맞지 않습니다.</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="userEmail">이메일 주소</label></th>
									<td>
										<input type="text" id="userEmail" name="userEmail" placeholder="이메일주소를 입력해 주세요" class="input-text w260px" maxlength="50" >
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
								<input type="checkbox" id="push" name="mt" >
								<label for="push">알림</label>

								<input type="checkbox" id="sms" name="mt"  class="ml20">
								<label for="sms">SMS</label>

								<input type="checkbox" id="email" name="mt"  class="ml20">
								<label for="email">이메일</label>
							</div>

							<p class="mt20">
								※  이벤트, 신규 서비스, 할인 혜택 등의 소식을 전해 드립니다.<br>(소멸포인트 및 공지성 안내 또는 거래정보와 관련된 내용은 수신 동의 여부와 상관없이 발송됩니다.)
							</p>
							<div id="mt-check-text" class="alert" style="display: none;">혜택 수신설정을 완료해주세요.</div>
						</div>
						<!-- end cont -->
					</div>
					<!-- end marketing-agree -->

					<div class="btn-member-bottom">
						<button id="btnJoin" type="button" class="button">회원가입</button>
					</div>
					<!-- end btn-member-bottom -->
				</div>
				<!-- end col -->
			</div>
			<!-- end col-wrap -->
		</div>
		<!-- end member-wrap -->
		<!-- 로고 및 각 STEP 표시 끝 -->
	</form>

	<script type="text/javascript" src="../resources/js/info-input.js"></script>
</body>
</html>
