<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">

	.bg-member{
		background-color: #f5f5f5;
	}

	div{
		display: block;
	}

	* {
		box-sizing: border-box;
	}


	body{
		overflow: auto;
		overflow-y: scroll;
		letter-spacing: 0;
		line-height: 1.5;
		font-size: 15px;
		color: #444;
		font-weight: 400;
		/* 폰트 상의 후 */
		font-family: Arial, sans-serif;
	}

	body, html{
		overflow: hidden;
		width: 100%;
		height: 100%;
		margin: 0;
		padding: 0;
	}

	/* 메가박스 로고 */
	.ci a{
		display: block;
		width: 150px;
		height: 53px;
		background: url(https://img.megabox.co.kr/static/pc/images/common/ci/logo.png) center no-repeat;
		padding: 0;
		margin: 0 auto;
	}
	/* 메가박스 로고 */


	.ci{
		overflow: hidden;
		display: block;
		margin: 0;
		padding: 0 0 70px 0;
		text-align: center;
	}

	/**스탭 부분*/

	.member-wrap{
		width: 910px;
		min-height: 100%;
		margin: 0 auto;
		padding: 80px 100px;
		background-color: #fff;

	}

	.col-wrap{
		overflow: hidden;
	}

	.member-wrap .step-member ol li:first-child{
		margin-left: 0;
	}

	.member-wrap .step-member{
		overflow: hidden;
		position: relative;
		margin: 0 0 40px 0;
		padding: 0;
	}

	ol, ul{
		list-style-type: none;
		margin: 0;
		padding: 0;
	}

	.member-wrap .step-member ol li{
		float: left;
		margin: 0 0 0 102px;
		padding: 0;
		text-align: center;
		font-size: .9333em;
	}


	.step-member ol{
		margin-left: 0;
	}

	.step.on{
		border-bottom: 2px solid #503396;
		color: #503396;
	}

	.step{
		display: inline-block;
		position: relative;
		z-index: 2;
		margin: 0;
		padding: 0 0 15px 0;
		font-size: .9333em;
		letter-spacing: 0;
	}

	.member-wrap .step-member:after{
		content: '';
		overflow: hidden;
		position: absolute;
		left: 0;
		bottom: 0;
		width: 100%;
		height: 1px;
		background-color: #ebebeb;
	}




	.member-wrap .page-info-txt{
		padding: 0 0 20px 0;
		line-height: 1.1;
	}

	.memver-wrap p{
		margin: 0;
	}


	strong{
		display: block;
		padding: 0 0 10px 0;
		font-size: 1.4em;
		color: #222;
		font-weight: 400;
	}


	/* 휴대폰 인증 */
	.btnMbl{
		width: 100%;
		float: left;
	}

	.join-chk-me a{
		display: block;
		height: 200px;
		padding: 18px 0 0 0;
		border: 1px solid #ebebeb;
		border-radius: 10px;
		text-align: center;
		text-decoration: none;
	}

	.icon-member-phone{
		padding: 0px;
		margin: 0px;
		width: 140px;
    	height: 140px;
	}

	.join-chk-me a span{
		display: block;
		padding: 10px 0 0 0;
		color: #444;
	}
	/* 휴대폰 인증 끝 */


	.dot-list{
		margin-top: 20px!important;
	}

	.dot-list>li{
		position: relative;
		padding: 0 0 0 8px;
	}

	li{
		display: list-item;
		text-align: -webRit-match-parent;
	}

</style>
<!DOCTYPE html>
<html>
<head>
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
				<div class="step-member" title="가입완료 단계 중 step1 본인인증 단계">
					<ol>
						<li>
							<p class="step on">
								<em>STEP1.</em>
								<span>
									본인인증
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



	<!-- 회원가입을 위한 본인인증 안내문 -->
	<p class="page-info-txt">
		<strong>
			회원가입을 위한 본인인증 단계입니다.
		</strong>
		<span>
			해당 인증 방법을 선택해 주세요.
		</span>
	</p>
	<!-- 회원가입을 위한 본인인증 안내문 -->

	<!-- 휴대폰 인증 클릭 버튼 -->
	<div class="join-chk-me">
		<a href="#" title="휴대폰 인증 선택" id="btnMbl">
			<img class="icon-member-phone" src="../resources/image/phone.png">
				<span>
					휴대폰 인증
				</span>
		</a>
	</div>

	<ul class="dot-list">
		<li>
			14세 미만 어린이는 보호자 인증을 추가로 완료한 후 가입이 가능합니다.
		</li>
		<li>
			본인 인증 시 제공되는 정보는 해당 인증기관에서 직접 수집하여, 인증 이외의 용도로 이용 또는 저장되지 않습니다.
		</li>
	</ul>

	</div> <!-- end member-wrap -->
	<!-- 로고 및 각 STEP 표시 끝 -->
	

</body>
</html>
