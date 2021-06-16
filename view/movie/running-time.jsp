<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/running-time.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>상영시간표</title>
</head>
<body class="running-time">
	<div class="theater-wrap">
		<h1 class="ci">
			<a href="/project1/movie/index" title="메인 페이지로 이동" ></a>
		</h1>

		<div class="movie-choice-area">
			<div class="tab-left-area">
				<button title="영화별 선택" class="movie-list-btn">
					<img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-tab-movie-on.png" class="left-icon">영화별
				</button>

				<button title="극장별 선택" class="theater-list-btn">
					<img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-tab-theater.png" class="left-icon">극장별
				</button>
			</div>
			<!-- end tab-left-area -->

			<div class="movie-part">
				<p class="movie-title">전체영화</p>
				<div class="movie-list">
		            <c:forEach var="movie" items="${allList }">
		            	<ul class="list">
		            		<li><input type="button" id="movieChoice" class="movie-choice" value="${movie.movieName}"></li>
		            	</ul>
					</c:forEach>
						<div class="right">
							<img class="get-poster">
						</div>
				</div>
				<!-- end movie-list -->
			</div>
			<!-- end movie-part -->

			<div class="theater-part" style="display: none;">
				<p class="theater-title">극장</p>
				<div class="theater-list">
				<input type="button" id="seoulChk" class="area-choice" value="서울">
		        <input type="button" id="gyeonggiChk" class="area-choice" value="경기">
			        <div class="theater-name">
			        	<c:forEach var="theater" items="${theater}">
			            	<c:if test="${theater.area eq '서울'}">
			            		<div class="show-seoul" style="display: none;"><input type="button" class="hide-name" value="${theater.theaterName }"></div>
			            	</c:if>
			            	<c:if test="${theater.area eq '경기'}">
			            		<div class="show-gyeonggi" style="display: none;"><input type="button" class="hide-name" value="${theater.theaterName }"></div>
			            	</c:if>
			            </c:forEach>
			       </div>
			       <!-- end theater-name -->
				</div>
				<!-- end theater-list -->
			</div>
			<!-- end theater-part -->
		</div>
		<!-- end movie-choice-area -->

		<h3 class="tit mt60">
			<span class="movie-name"><!-- 선택한 영화 이름 가져오기 --></span> 상영시간표
		</h3>

		<div class="date">
		 	<input type="date" class="select-date">
		 	<input type="hidden" id="getData">
	    </div>

		<div class="theater-list-box mt30">
			<input type="button" value="서울" class="seoul-btn">
			<input type="button" value="경기" class="gyeonggi-btn">

			<!-- 서울 or 경기 버튼 클릭 시 각 지역의 상영점 출력 -->
			<div class="area mt20">
				<c:forEach var="theater" items="${theater}">
					<c:if test="${theater.area eq '서울'}">
				    	<div class="show-seoul" style="display: none;"><input type="button" class="area-name" value="${theater.theaterName }"></div>
				    </c:if>
				    <c:if test="${theater.area eq '경기'}">
				    	<div class="show-gyeonggi" style="display: none;"><input type="button" class="area-name" value="${theater.theaterName }"></div>
				    </c:if>
				</c:forEach>
			</div>
		</div>
		<!-- end theater-list-box -->

		<!-- 시간, 지역, 상영점 클릭 시 ajax를 통해 데이터를 반환하는 부분 -->
		<div class="theater-list mt60"></div>
	</div>
	<!-- end theater-wrap -->

	<script type="text/javascript" src="../resources/js/running-time.js"></script>
</body>
</html>
