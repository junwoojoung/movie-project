<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<style type="text/css">

	.movie-choice-area {
		align-items:center;
	    overflow: hidden;
	    width: 1100px;
	    height: 300px;
	    margin: 0;
	    border: 3px solid #686571;
	    border-radius: 10px;
	    padding: 0;
	}


	* {
	    box-sizing: border-box;
	}



	.mt20 {
	margin-top: 20px!important;
	}

	.mt30 {
    margin-top: 30px!important;
	}

	.mt60 {
    	margin-top: 60px!important;
	}

	div {
	    display: block;
	}


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

	.movie-part {
	    padding: 0 240px 0 0;
	}


	.get-poster{
	border-radius: 4px;
	position: absolute;
    left: 865px;
    top: 10px;
    height: 297px;
    width: 242px;
    padding: 0;
	}


	.tab-left-area {
	    float: left;
	    width: 200px;
	    height: 100%;
	}

	.left-icon{
	    overflow: hidden;
	    display: inline-block;
	    margin: -1px 0 0 0;
	    padding: 0;
	    font-size: 0;
	    line-height: 0;
	    vertical-align: middle;
	    background-position: 0 0;
	    background-repeat: no-repeat;
	}

	.movie-title, .theater-title {
		color: #555;
    	border-bottom: 2px solid #555;
		font-weight: 800;
	}


	.movie-choice {
		border: 0;
        width: 200px;
		height: 30px;
		position: inherit;
		background-color: #fff;
      }

	.movie-list-btn, .theater-list-btn {
        width: 200px;
	 	height: 147px;
 		background-color: #fff;
 		border: 1px solid #d8d9db;
       }


	.seoul-btn, .gyeonggi-btn {
		border: 1px solid #d8d9db;
		width: 180px;
		height: 45px;
		position: inherit;
		background-color: #fff;
	}



	 .area-choice {
    	width: 70px;
    	height: 38px;
    	background-color: #fff;
    }

	.area-name {
		float: left;
		border: 1px solid #d8d9db;
		width: 100px;
		height: 30px;
		background-color: #fff;
	}


	.active {
		background-color: #666;
		color: #fff;
	}


	.active2 {
		background-color: #f2f4f5;
	}

	.active3 {
		background-color: #f2f4f5;
	}

	.list {
	    display: block;
	    float: left;
	}

	.ol, ul {
	    list-style-type: none;
	    margin: 0;
	    padding: 0;
	}



	.tit {
		line-height: 44px;
		margin: 0;
	    padding: 0 0 16px 0;
	    font-size: 1.6em;
	    font-weight: 400;
	    color: #503396;
	}

	.movie-name {
		color: #037b94!important;
	}





</style>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>상영시간표</title>
</head>
<body>
	<div class="movie-choice-area">

		<div class="tab-left-area">
					<button title="영화별 선택" class="movie-list-btn">
						<img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-tab-movie-on.png" class="left-icon">영화별
					</button>

					<button title="극장별 선택" class="theater-list-btn">
						<img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-tab-theater.png" class="left-icon">극장별
					</button>
		</div>

		<div class="movie-part">
			<p class="movie-title">전체영화</p>
			<div class="movie-list">
	            <c:forEach var="movie" items="${allList }">
	            	<ul class="list">
	            		<li><input type="button" id="movieChoice" class="movie-choice" value="${movie.movieName}"></li>
	            	</ul>
				</c:forEach>
					<div class="rigth">
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
	 	<input type="text" id="getData">
    </div>



	<div class="theater-list-box mt30">
		<input type="button" value="서울" class="seoul-btn">
		<input type="button" value="경기" class="gyeonggi-btn">
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




	<div id="replies"></div>

<script>

        $(document).ready(function(){
        	// 영화별 선택
        	$('.movie-list-btn').click(function(){
        		$('.movie-list-btn').removeClass('active2');
        		$(this).addClass('active2');
        		$('.movie-part').show();
        		$('.theater-part').hide();
        	}); // end movie-list.btn

        	// 극장별 선택
        	$('.theater-list-btn').click(function(){
        		$('.movie-list-btn').removeClass('active2');
        		$(this).addClass('active2');
        		$('.theater-part').show();
        		$('.movie-part').hide();
        	}); // end theater-list-btn


        	// 영화 선택
        	$('.movie-choice').click(function(){
        		$('.movie-choice').removeClass('active');
        		$(this).addClass('active');

        		var selectMoiveName = $(this).val();
        		console.log(selectMoiveName);
         		$('.movie-name').html(selectMoiveName);

        		$.ajax({
        			type : 'post',
        			 url : '/project1/movie/movie-info',
        			data : {'movieName' : selectMoiveName},
        			success : function(data) {
        				console.log(data);
        				if (data != null) {
        					// alert('movieId 값 가져오기 성공');
        					$('.get-poster').attr('src', '../resources/image/' + data + '.jpg');
        				} else {
        					alert('movieId 가져오기 실패');
        				}
        			}

        		}); // end ajax
        	}); // end movie-choice.click


        	// 	극장별 보기 -> 서울 선택
        	$('#seoulChoice').click(function(){
        		$('#gyeonggiChoice').removeClass('active2');
        		$(this).addClass('active2');
        		$('.show-seoul').show();
        		$('.show-gyeonggi').hide();
        	}); // end seoulChoice.click

        	// 극장별 보기 -> 경기 선택
        	$('#gyeonggiChoice').click(function(){
        		$('#seoulChoice').removeClass('active2');
        		$(this).addClass('active2');
        		$('.show-gyeonggi').show();
        		$('.show-seoul').hide();
        	}); // end gyeonggiChoice.click

        	$('.movie-list-btn').click(function(){
        		$('.theater-list-btn').removeClass('active2');
        		$(this).addClass('active2');
        	}); // end movie-list-btn


        	// 상영시간표 서울 선택
        	$('.seoul-btn').click(function(){
        		$('.seoul-btn').removeClass('active');
        		$(this).addClass('active');
        		$('.gyeonggi-btn').removeClass('active');
        		$('.show-seoul').show();
        		$('.show-gyeonggi').hide();
        	}); // end seoul-btn.click

        	// 상영시간표 경기 선택
        	$('.gyeonggi-btn').click(function(){
        		$('.gyeonggi-btn').removeClass('active');
        		$(this).addClass('active');
        		$('.seoul-btn').removeClass('active');
        		$('.show-gyeonggi').show();
        		$('.show-seoul').hide();
        	}); // end gyeonggi-btn.click

        	// 상영시간표 지점 선택
           	$('.area-name').click(function(){
        		$('.area-name').removeClass('active3');
        		$(this).addClass('active3');

        		// 선택한 날짜
        		var getInputDate = $('.select-date').val();
        	    $('#getData').val(getInputDate);
        	    var getDate = $('#getData').val();
        	    console.log('getDate : ' + getDate);

        	    // 선택한 지역
    			var getArea = $('.seoul-btn').val();
    			console.log(getArea);

    			// 선택한 지점
    			var getTheater = $(this).val();
    			console.log(getTheater);

    			var theaterId = '';
    			if (getTheater == '강남') {theaterId = 'S001';}
    			if (getTheater == '강동') {theaterId = 'S002';}
    			if (getTheater == '코엑스') {theaterId = 'S003';}
    			if (getTheater == '홍대') {theaterId = 'S004';}
    			if (getTheater == '고양스타필드') {theaterId = 'G001', getArea = '경기';}
    			if (getTheater == '미사강변') {theaterId = 'G002', getArea = '경기';}
    			if (getTheater == '수원') {theaterId = 'G003', getArea = '경기';}
    			console.log(theaterId);

    			var obj = {
  					'startDate' : getDate,
					'area' : getArea,
					'theaterName' : getTheater,
					'theaterId' : theaterId
    			};

    			var JSONObj = JSON.stringify(obj);
    			console.log(obj);

    			$.ajax({
        			type : 'post',
        			 url : '/project1/movie/running-time',
        			 headers : {
                         'Content-Type' : 'application/json', // 데이터를 전송하는 방식을 선언
                         'X-HTTP-Method-Override' : 'POST'
                     },
        			data : JSONObj,
        			success : function(data) {
        				console.log(data);
        				var list = '';
        				if (data != null) {
        					alert('서브쿼리문 값 가져오기 성공');
//         					$(data).each(function(){
//         						list += '<div class="reply_item">'
//     								+ '<pre>'
//     								+ '<input type="button" id="replyNo" value="' + this.totalSeat + '" />'
//     								+ '</pre>'
//     								+ '</div>';
//         					}); // end each()
//         					 $('#replies').html(list);

        				} else {
        					alert('ERROR');
        				}
        			}

        		}); // end ajax



        	}) // end area-name.click

        }); // end document


    </script>

</body>
</html>
