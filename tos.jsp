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

	/* 	전체 동의 */
	.all-chk {
		margin: 0;
		padding: 0 0 15px 0;
		font-size: 1.2em;
		color: #222;
		border-bottom: 1px solid #ebebeb;
	}

	lable{
		display: inline-block;
		vertical-align: middle;
		cursor: pointer;
	}
	/* 전체 동의 */



</style>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약관동의</title>
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
			약관동의 및 정보활용동의
		</strong>
		<span>
			메가박스 서비스 이용을 위한 약관에 동의해주세요.
		</span>
	</p>
	<!--// 실명인증을 위한 안내문 -->


	<div class="member-rule-agree">

	<!-- 약관 동의 모두 선택 -->
	<div class="all-chk">
		<input type="checkbox" id="chkAll">
		<label for="chkAll">
			필수항목 전체동의
		</label>
	</div>

	<!-- block1 -->
	<div class="block">
		<div class="chk">
			<input type="checkbox" id="chkUtilClau">
			<label>
				서비스 이용 약관 동의(필수)
			</label>
		</div>

		<div id="utilClau" class="scroll" tabindex="0">
		</div>

	</div>






	</div>
	<!--// member-rule-agree -->





	</div> <!-- end member-wrap -->
	<!-- 로고 및 각 STEP 표시 끝 -->

	







</body>
</html>
