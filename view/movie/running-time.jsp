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
	<input type="text" name="movieName">
	<input type="text" name="date">
	<input type="text" name="area">
	<input type="text" name="theater">
	<input type="text" name="time" id="time">

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

<!-- 	<script type="text/javascript" src="../resources/js/running-time.js"></script> -->

<script type="text/javascript">
$(document).ready(function() {
	// 영화별 선택
	$('.movie-list-btn').click(function() {
		$('.movie-list-btn').removeClass('active2');
		$(this).addClass('active2');
		$('.movie-part').show();
		$('.theater-part').hide();
	}); // end movie-list.btn

	// 극장별 선택
	$('.theater-list-btn').click(function() {
		$('.movie-list-btn').removeClass('active2');
		$(this).addClass('active2');
		$('.theater-part').show();
		$('.movie-part').hide();
	}); // end theater-list-btn

	// 영화 선택
	$('.movie-choice').click(function() {
		$('.movie-choice').removeClass('active');
		$(this).addClass('active');

		var selectMoiveName = $(this).val();
		console.log(selectMoiveName);
		$('.movie-name').html(selectMoiveName);
		$('input[name=movieName]').val(selectMoiveName);


		$.ajax({
			type: 'post',
			url: '/project1/movie/movie-info',
			data: { 'movieName': selectMoiveName },
			success: function(data) {
				console.log(data);
				if (data != null) {
					// alert('movieId 값 가져오기 성공');
					$('.get-poster').attr('src', '../resources/image/' + data + '.jpg');
				} else {
					alert('movieId 가져오기 실패');
				}
			} // end success

		}); // end ajax

	}); // end movie-choice.click

	// 	극장별 보기 -> 서울 선택
	$('#seoulChoice').click(function() {
		$('#gyeonggiChoice').removeClass('active2');
		$(this).addClass('active2');
		$('.show-seoul').show();
		$('.show-gyeonggi').hide();
	}); // end seoulChoice.click

	// 극장별 보기 -> 경기 선택
	$('#gyeonggiChoice').click(function() {
		$('#seoulChoice').removeClass('active2');
		$(this).addClass('active2');
		$('.show-gyeonggi').show();
		$('.show-seoul').hide();
	}); // end gyeonggiChoice.click

	// 영화이름 선택 버튼
	$('.movie-list-btn').click(function() {
		$('.theater-list-btn').removeClass('active2');
		$(this).addClass('active2');
	}); // end movie-list-btn.click

	// 상영시간표 서울 선택
	$('.seoul-btn').click(function() {
		$('.seoul-btn').removeClass('active');
		$(this).addClass('active');
		$('.gyeonggi-btn').removeClass('active');
		$('.show-seoul').show();
		$('.show-gyeonggi').hide();
		$('input[name=area]').val('서울');
	}); // end seoul-btn.click

	// 상영시간표 경기 선택
	$('.gyeonggi-btn').click(function() {
		$('.gyeonggi-btn').removeClass('active');
		$(this).addClass('active');
		$('.seoul-btn').removeClass('active');
		$('.show-gyeonggi').show();
		$('.show-seoul').hide();
		$('input[name=area]').val('경기');
	}); // end gyeonggi-btn.click

	// 상영시간표 지점 선택
	$('.area-name').click(function() {
		$('.area-name').removeClass('active3');
		$(this).addClass('active3');

		// 선택한 날짜
		var getInputDate = $('.select-date').val();
		$('#getData').val(getInputDate);
		var getDate = $('#getData').val();
		$('input[name=date]').val(getDate);
		console.log('getDate : ' + getDate);

		// 선택한 지점
		var getTheater = $(this).val();
		$('input[name=theater]').val(getTheater);
		console.log(getTheater);

		// 상영관 ID
		var theaterId = 's0' + getTheater;
		console.log(theaterId);

		var obj = {
			'startDate': getDate,
			'theaterName': getTheater,
			'theaterId': theaterId
		};

		var JSONObj = JSON.stringify(obj);
		console.log(obj);

		$.ajax({
			type: 'post',
			url: '/project1/movie/running-time',
			headers: {
				'Content-Type': 'application/json', // 데이터를 전송하는 방식을 선언
				'X-HTTP-Method-Override': 'POST'
			},
			data: JSONObj,
			success: function(data) {
				console.log(data);
				var list = '';
				if (data != null) {
					// alert('서브쿼리문 값 가져오기 성공');
					$(data).each(function() { // this : 컬렉션에서 각 데이터를 꺼내서 저장
						console.log(this);
						list += '<div class="theater_item">'
							+ '<table class="time-list-table">'
							+ '<tbody>'
							+ '<tr>'
							+ '<td>'
							+ '<div class="td-ab">'
							+ '<button class="btn-center">'
							+ '<p class="time">' + this.movieTime + '</p>'
							+ '<p class="seat">' + this.totalSeat + '/' + this.emptySeat + '</p>'
							+ '</button>'
							+ '	</div>'
							+ '</td>'
							+ '</table>'
							+ '</div>';

							$('#time').val(this.movieTime);

						// end theater_item
					}); // end each()
					$('.theater-list').html(list);
				} else {
					alert('ERROR');
				}
			} // end success

		}); // end ajax

	}); // end area-name.click

}); // end document

function timeAndSeat(e) {
	console.log($(e).attr('this.movieTime'));

}

</script>
</body>
</html>
