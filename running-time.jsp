<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<style type="text/css">

	.movie-choice-area {
	    overflow: hidden;
	    width: 1200px;
	    height: 300px;
	    margin: 0;
	    border: 3px solid #686571;
	    border-radius: 10px;
	    padding: 0;
	}


	* {
	    box-sizing: border-box;
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

	.movie-title, .theater-title{
		color: #555;
    	border-bottom: 2px solid #555;
		font-weight: 800;
	}


	.movie-choice{
		border: 0;
        width: 200px;
		height: 30px;
		position: inherit;
		background-color: #fff;
      }

	.movie-list-btn, .theater-list-btn{
        width: 200px;
	 	height: 147px;
 		background-color: #fff;
 		border: 1px solid #d8d9db;
       }

	    .area-choice{
    	width: 70px;
    	height: 38px;
    	background-color: #fff;
    }

	.hide-name{
		display: flex;
		border: 0;
		width: 200px;
		height: 30px;
		background-color: #fff;
	}


	.active{
		background-color: #666;
		color: #fff;
	}


	.active2{
		background-color: #f2f4f5;
	}


	img{
		display: none;
	}

	.right{
		float: right;
		padding-left: 1070px;
	}

	.list{
    display: block;
    float: left;
	}

	.ol, ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
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
						<img class="show-img1" src="../resources/image/M001.jpg" style="width: 194px" height="250px"><!-- 비와 당신의 이야기 -->
						<img class="show-img2" src="../resources/image/M003.jpg" style="width: 194px" height="250px"><!-- 아이들은 즐겁다 -->
						<input type="text" class="movie-name">
					</div>
			</div>
			<!-- end movie-list -->
		</div>
		<!-- end movie-part -->

		<div class="theater-part" style="display: none;">
			<p class="theater-title">극장</p>
			<div class="theater-list">
			<input type="button" id="seoulChoice" class="area-choice" value="서울">
	        <input type="button" id="gyeonggiChoice" class="area-choice" value="경기">
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

        		var btn = $(this).val();
        		console.log(btn);
        		$('.movie-name').val(btn);

        		if ($('.movie-name').val() == '비와 당신의 이야기') {
        			$('img').hide();
        			$('.show-img1').show();
        		}

        		if ($('.movie-name').val() == '아이들은 즐겁다') {
        			$('img').hide();
        			$('.show-img2').show();
        		}




        	}); // end movie-choice.click




        	// 서울 선택
        	$('#seoulChoice').click(function(){
        		$('#gyeonggiChoice').removeClass('active2');
        		$(this).addClass('active2');
        		$('.show-seoul').show();
        		$('.show-gyeonggi').hide();
        	}); // end seoulChoice.click

        	// 경기 선택
        	$('#gyeonggiChoice').click(function(){
        		$('#seoulChoice').removeClass('active2');
        		$(this).addClass('active2');
        		$('.show-gyeonggi').show();
        		$('.show-seoul').hide();
        	}); // end gyeonggiChoice.click

        	$('.hide-name').click(function(){
        		$('.hide-name').removeClass('active');
        		$(this).addClass('active');
        	}) // end hide-name.click

        	$('.movie-list-btn').click(function(){
        		$('.theater-list-btn').removeClass('active2');
        		$(this).addClass('active2');
        	}); // end movie-list-btn



        }); // end document




    </script>

</body>
</html>
