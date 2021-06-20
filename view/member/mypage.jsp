<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<style type="text/css">
	/* 기본 페이지 초기 설정 */
	html{
		-webkit-text-size-adjust: 100%;
		width: 100%;
		height: 100%;
	}

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
		letter-spacing: 0;
		line-height: 1.5;
		font-size: 15px;
		color: #444;
		font-weight: 400;
		/* 폰트 상의 후 */
		font-family: Arial, sans-serif;
	}

	.body-wrap{
		height: 100%;
	}

	body, html{
		width: 100%;
		height: 100%;
		margin: 0;
		padding: 0;
	}

	.ci a{
		display: block;
		width: 150px;
		height: 53px;
		background: url(https://img.megabox.co.kr/static/pc/images/common/ci/logo.png) center no-repeat;
		padding: 0;
		margin: 0 auto;
	}

	.ci{
		overflow: hidden;
		display: block;
		margin: 0;
		padding: 0 0 70px 0;
		text-align: center;
	}

	.member-wrap{
		width: 1300px;
		min-height: 100%;
		margin: 0 auto;
		padding: 80px 100px;
		background-color: #fff;

	}

	.col-wrap{
		overflow: hidden;
	}

	/* end 기본 페이지 초기 설정 */



	/* aside */
	body {
	    overflow: auto;
	    overflow-y: scroll;
	    letter-spacing: 0;
	    line-height: 1.5;
	    font-size: 15px;
	    color: #444;
	    font-weight: 400;
	    font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
	}

	.lnb-area {
	    float: left;
	    width: 200px;
	    padding: 40px 0 0 0;
	    background-color: #fff;
	}

	#lnb {
	    margin: 0;
	    padding: 0;
	}

	article, aside, figcaption, figure, footer, header, main, nav, section {
    	display: block;
	}

	#lnb .tit {
	    overflow: hidden;
	    margin: 0;
	    padding: 0;
	    border-radius: 10px 10px 0 0;
	    background: url(https://img.megabox.co.kr/static/pc/images/common/bg/bg-lnb-tit.png) 0 0;
	}

	p {
	    display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	}

	#lnb .tit a {
	    display: block;
	    width: 100%;
	    font-size: 1.2em;
	    line-height: 90px;
	    text-align: center;
	    color: #fff;
	    text-decoration: none;
	}

	#lnb>ul {
	    border: 1px solid #d8d9db;
	    border-left-width: 2px;
	    border-right-width: 2px;
	    border-bottom-width: 2px;
	    border-radius: 0 0 10px 10px;
	}

	ol, ul {
	    list-style-type: none;
	    margin: 0;
	    padding: 0;
	}

	#lnb>ul>li:first-child {
    	border-top: 0;
	}

	li {
	    display: list-item;
	    text-align: -webkit-match-parent;
	}

	#lnb>ul>li>a {
	    display: block;
	    color: #222;
	    padding: 10px 15px;
	    font-weight: 400;
	    background-color: #f2f4f5;
	}

	#lnb ul li a {
	    display: block;
	    text-decoration: none;
	    line-height: 1.3;
	}

	#lnb .depth3 {
	    display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    padding-left: 30px;
	}

	.font{
		color: #444;
	}
	/* aside */

	/* contaior 시작*/
	.container.has-lnb #contents {
		padding-left: 400px;
	    float: right;
	    width: calc(100% - 260px);
	}

	#contents {
	    width: 100%;
	    margin: 0;
	    padding: 40px 0 0 200px;
	    margin-left: 100px;
	}


	.my-magabox-info {
	    overflow: hidden;
	    height: 367px;
	    background-color: #f3f4f6;
	}

	/* top */
	.my-magabox-info .top {
	    position: relative;
	    height: 198px;
	    padding: 30px 30px 0 0;
	}

	.my-magabox-info .top .info-input {
	    float: left;
	    padding-top: 20px;
	}

	.my-magabox-info .top .info-input .name {
		padding-left: 70px;
	    font-size: 1.8666em;
	    line-height: 1.3;
	    color: #222;
	}

	.my-megabox-main p {
	    margin: 0;
	    padding: 0;
	}

	.link{
		padding: 20px 0 0 70px;
	}
	/* end top */

	/* button */
	.my-magabox-info .bottom {
	    overflow: hidden;
	    height: calc(100% - 198px);
	    padding: 26px 30px 29px 30px;
	    background-color: #eaebed;
	}

	.my-magabox-info .bottom .myBokd {
	    float: left;
	    width: 100%;
	    min-height: 116px;
	}

	.my-magabox-info .bottom .myBokd .tit-area {
    	padding-right: 30px;
	}

	.my-magabox-info .bottom .tit-area .tit {
	    float: left;
	    font-size: 1.2em;
	    color: #222;
	}

	.my-megabox-main p {
	    margin: 0;
	    padding: 0;
	}

	.change {
	    overflow: hidden;
	    margin: 10px 30px 0 0;
	    padding: 10px 0 0 0;
	    border-top: 1px solid #d8d9db;
	}

	/* end button */


	/* myInq */

	h2.tit.small {
	    font-size: 1.4666em;
	    color: #503396;
	    font-weight: bold;
	}

	.table-wrap {
	overflow: hidden;
    margin: 10px 30px 0 0;
    padding: 10px 0 0 0;
    border-top: 1px solid #d8d9db;
	}
	/* myInq */

	.list{
	}

	.reserve-movie, .reserve-price, .reserve-view, .reserve-buy {
    	font-size: 20px;
	}


</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<head>
<meta charset="UTF-8">
<title>내정보</title>
</head>
<body class="bg-member">
<div class="body-wrap">

	<div class="member-wrap">
		<h1 class="ci">
			<a href="/project1/movie/index" title="메인 페이지로 이동" ></a>
		</h1>
		<div class="col-wrap">
			<div class="col">

				<!-- lnb-area -->
				<div class="lnb-area">
					<nav id="lnb">
						<p class="tit on"><a href="/project1/movie/index" title="나의 메가박스">나의 메가박스</a></p>

						<ul>
							<li><a href="/mypage/bookinglist" title="예매/구매내역">예매/구매내역</a></li>
							<li><a href="/mypage/moviestory" title="나의 무비스토리">나의 무비스토리</a></li>
							<li><a href="/mypage/myinquiry" title="나의 문의내역">나의 문의내역</a></li>
							<li>
								<a href="/project1/movie/mypage" title="회원정보">회원정보</a>
								<ul class="depth3">
									<li><a href="/project1/movie/info-update" title="회원정보 수정" class="a">회원정보 수정</a></li>
									<li><a href="/project1/movie/info-delete" title="회원정보 삭제" class="a">회원정보 삭제</a></li>
								</ul>
							</li>
						</ul>
					</nav>
				</div>
				<!-- end lbn-area -->


		<div id="contents" class="">

		<!-- my-megabox-main -->
		<div class="my-megabox-main">

			<div class="my-magabox-info ">
				<!-- top -->
				<div class="top">

					<div class="info-input">
						<p class="name">${member.userName }님<br>환영합니다.</p>

						<div class="link">
							<a href="#" title="회원정보 수정 페이지로 이동" class="font">나의 무비스토리></a>
							<a href="#" title="회원정보 삭제 페이지로 이동" class="font">선호관람정보></a>
						</div>
					</div>
				</div>
				<!-- end top -->
				<!-- bottom -->
				<div class="bottom">
					<div class="myBokd">
						<div class="tit-area">
							<p class="tit">예매 내역</p><br>
						</div>
						<div class="cont-area">
							<div class="change">
								<c:forEach var="reserve" items="${reserve}">
									<table border="1">
										<tr>
											<td class="reserve-movie">영화명</td>
											<td class="reserve-price">결제비용</td>
											<td class="reserve-view">상영일자</td>
											<td class="reserve-buy">예매일</td>
										</tr>

										<tr class="list">
			            					<td >${reserve.movieName}</td>
			            					<td >${reserve.reserveTotPrice}</td>
			            					<td >${reserve.reserveViewDay}</td>
			            					<td>${reserve.reserveBuyDay}</td>
			            				</tr>
		            				</table>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
				<!-- end bottom -->
			</div>
			<!-- end my-magabox-info -->

			<!-- myInq -->
			<div id="myPurc">
				<div class="tit-util mt70">
					<h2 class="tit small">나의 문의내역</h2>
				</div>

				<div class="table-wrap">
					<table class="board-list line">
						<tbody><tr><td colspan="6" class="myinquiry">문의내역이 없습니다.</td></tr></tbody>
					</table>
				</div>
			</div>
			<!-- end myInq -->


			</div>
			<!-- end my-megabox-main -->
		</div>
		<!-- my content-->
		</div>
		<!-- end col -->
		</div>
		<!-- end col-wrap -->
	</div>
	<!-- end member-wrap -->
</div>
<!-- body -->


</body>
</html>
