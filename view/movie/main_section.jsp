<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<style type="text/css">
	 section {
		height: 100vh;
    	background-image: linear-gradient(
        to right bottom,
        rgba(0, 0, 0, 0.7),
        rgba(0, 0, 0, 0.7)),
    	url("../resources/image/M007.jpg");
    	background-size: cover;
    	background-position: top;
   }
</style>
<head>
<meta charset="UTF-8">
<link href="../resources/css/main-section.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title></title>
</head>
<body>
	<!-- 박스오피스, 더 많은 영화보기 -->
	<div class="body_top" >
		<a href="#" class="body_top_a">박스오피스</a>
	</div>

	<div class="more_info">
		<a href="#" class="more_info_a" title="더 많은 영화보기">더 많은 영화보기
		<img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-more-cross-gray.png" height="12px;">
		</a>
	</div>
	<!-- 박스오피스, 더 많은 영화보기 종료-->

	<!-- 메인 영화 리스트 1~4위 보여주는 거 -->
	<div class="row">
		<div class="movie-list">
			<c:forEach var="vo" items="${list}">
				<div class="movie-item">
					<div class="poster">
						<a href="#" title="영화상세 보기">
							<div class="box">
								<div class="text">
									<p class="summary_font">${vo.movieSummary }</p>
								</div>
							<img alt="${vo.movieName }" src="../resources/image/${vo.movieId}.jpg" width="250" height="400">
							</div>
							<!-- end box -->
						</a>
					</div>
					<!-- end poster -->

					<div class="movie-info">
						<p><span>${vo.ageLimit }세</span> ${vo.movieName }</p>
						<p>관객수 : ${vo.audCount }</p>

						<div class="button" align="left">
							<a href="#" class="button" title="예매">예매</a>
						</div>

					</div>
					<!-- end movie-info -->
				</div>
				<!-- end movie-item -->
			</c:forEach>
		</div>
		<!-- end movie-list -->
	</div>
	<!-- end row -->
	<!-- 메인 영화 리스트 종료 -->

	<!-- 검색 링크 및 빠른 이동 -->
	<div class="search_link">
		<div class="search">
			<input type="text" placeholder="영화명을 입력해 주세요" title="영화 검색" id="movieName" class="text_search">
			<button type="button" class="btn" id="btn_Search">
				<img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-search-white.png" class="search_icon">
			</button>
		</div>
		<div class="running_time">
			<a href="/project1/movie/running-time" class="screen_a">
				<img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-schedule-main.png" class="screen_icon">
				상영시간표
			</a>
		</div> <!-- end screen_time -->
		<div class="box_office">
			<a href="#" class="box_a">
				<img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-boxoffice-main.png" class="box_icon">
				박스오피스
			</a>
		</div><!-- box_office -->
		<div class="quick_reserve">
			<a href="#" class="reserve_a">
				<img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-quick-reserve-main.png" class="reserve_icon">
			빠른 예매
			</a>
		</div>
		<!-- quick_reserve -->
	</div>
	<!-- end search_link -->
	<!-- 검색 링크 및 빠른 이동 종료-->
</body>
</html>
