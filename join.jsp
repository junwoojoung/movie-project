<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="../resources/css/join.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body class="bg-member">

	<!-- 로고 및 각 STEP 표시 -->
	<div class="member-wrap">
		<h1 class="ci">
			<a href="/project1/movie/index" title="메인 페이지로 이동" ></a>
		</h1>
		<div class="col-wrap">
			<div class="col">
				<div class="step-member" title="가입완료 단계 중 step1 실명인증 단계">
					<ol>
						<li>
							<p class="step on">
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
							<p class="step">
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
			</div> <!-- end col -->
		</div> <!-- end col-wrap -->



	<!-- 실명인증을 위한 안내문 -->
	<p class="page-info-txt">
		<strong>
			실명인증을 위한 본인인증 단계입니다.
		</strong>
		<span>
			해당 인증 방법을 선택해 주세요.
		</span>
	</p>
	<!-- 회원가입을 위한 실명인증 안내문 -->


	<!-- 실명 인증 클릭 버튼 -->
	<div class="join-chk-me">
		<a href="#"
		onclick="window.open('/project1/movie/auth', 'login', 'width=463, height=644, left=745, top=210, location=no,toolbar=no, status=no, scrollbars=no')"
		title="실명 인증 선택" id="">
			<img class="icon-member-phone" src="../resources/image/phone.png">
				<span>
					실명 인증
				</span>
		</a>
	</div>


	<ul class="dot-list">
		<li>
			14세 미만 어린이는 보호자 인증을 추가로 완료한 후 가입이 가능합니다.
		</li>
		<li>
			본인 인증 시 제공되는 정보는 인증 이외의 용도로 이용 또는 저장되지 않습니다.
		</li>
		<li>
			부정확한 정보기입으로 인해 실명인증이 되지 않는 경우 가입하실 수 없습니다.
		</li>
		</ul>


	</div> <!-- end member-wrap -->
	<!-- 로고 및 각 STEP 표시 끝 -->









</body>
</html>
