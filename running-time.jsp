<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<style>

	.movie-choice{
		border: 0;
        width: 263px;
		height: 30px;
        display: flex;
        align-items: center;
        justify-content: center;
		background-color: #fff;
      }

    .area-choice{
    	border: 0;
    	width: 128px;
    	height: 38px;
    	align-items: center;
        justify-content: center;
    	background-color: #fff;
    }

    .hide-name{
		border: 0;
		width: 240px;
		height: 30px;
		background-color: #fff;
	}

	.active{
		background-color: #666;
		color: #fff;
	}

	.active2{
		background-color: #ebebeb;
	}

	.show-seoul, .show-gyeonggi{
		padding: 6px 0 0 10px;

	}
</style>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>상영시간표</title>
</head>
<body>
	<section>
	    <div class="container">
	        <div class="movie-part">
	            <div class="reserve-title">영화</div>
	            <div class="sort-wrapper">
	                <div class="sort-rate sort-selected">영화목록조회</div>
	            </div>
	            <div class="movie-list">
	            	<c:forEach var="movie" items="${allList }">
	            		<input type="button" id="movieChoice" class="movie-choice" value="${movie.movieName }"><br>
		            </c:forEach>
	            </div>

	        </div>
	        <div class="theater-part">
	            <div class="title">극장</div>
	            <div>
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
	            </div>
	        </div>
	        <div class="day-part">
	            <div class="title">날짜</div>
	            <div class="date"></div>
	        </div>
	        <div class="time-part">
	            <div class="title">시간</div>
	        	<c:forEach var="time" items="${screeningMovie }">
	        		<c:if test="${time.movieDate eq 'sysdate' }">
	        			<div>${time.movieTime }</div>
	        			<div>${time.totalSeat }</div>
	        			<div>${time.reservedSeat }</div>
	        		</c:if>
	        	</c:forEach>
	        </div>

	    </div>
    </section>

<script>

        $(document).ready(function(){

        	$('.movie-choice').click(function(){
        		$('.movie-choice').removeClass('active');
        		$(this).addClass('active');
        	}); // end movie-choice.click

        	$('#seoulChoice').click(function(){
        		$('#seoulChoice').removeClass('active2');
        		$(this).addClass('active2');
        		$('.show-seoul').show();
        		$('.show-gyeonggi').hide();
        	}); // end seoulChoice.click

        	$('#gyeonggiChoice').click(function(){
        		$('#gyeonggiChoice').removeClass('active2');
        		$(this).addClass('active2');
        		$('.show-gyeonggi').show();
        		$('.show-seoul').hide();
        	}); // end gyeonggiChoice.click

        	$('.hide-name').click(function(){
        		$('.hide-name').removeClass('active');
        		$(this).addClass('active');
        	}) // end hide-name.click


        }); // end document



    </script>

</body>
</html>
