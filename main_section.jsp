<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style type="text/css">

	img{
		border-radius: 10px 10px 10px 10px;
	}

	div{
		float: left;
		padding-left: 60px;
		font-family: system-ui;
		font-weight: bold;
		font-size: 16px;
		color: white;
		padding-bottom: 3px;
	}

	.movie_info{
		float: none;
	}

	.row{
	padding-top: 10px;
	}

 	div.button{
 	padding: 0;
 	}

 	.poster{
 		padding: 0;
 		color: #fff;
 	}

 	.button{
 	height: 36px;
 	width: 250px;
 	background-color: #037b94;
 	color: white; border-radius: 10px;
 	outline: 0; border: 0; font-family: system-ui;
 	font-size: 24px;
 	text-align: center;
 	font-weight: bold;
 	text-decoration: none;

 	}



/*박스 오피스 시작*/
	.body_top{
	padding-left: 870px;
	padding-top: 30px;
	font-size: 20px;
	padding-bottom: 30px;
}

	.body_top_a{
		color: #fff;
    text-decoration: none;
        border-bottom: 2px solid rgba(255,255,255,0.2);

	}
/*박스 오피스 끝*/

/*더 많은 정보 보기 시작*/
	.more_info{
		padding-left: 1468px;
	}

	.more_info_a{
		color: #aaa;
		font-size: 15px;

	}
/*더 많은 정보 보기 끝*/
	.box{
		position: relative;
	}

	.text{
		padding: 0;
		position: absolute;
		visibility: hidden;
	}

	.box:hover{
		opacity: 0.7;
	}

	.box:hover .text {
		visibility: visible;
	}

	.summary_font{
	color: white;
    font-size: 15px;
    font-weight: bold;
	}

/* 검색 링크 및 빠른 이동 시작*/


	.search_link{
	margin-top: 17px;
	margin-left: 237px;
	width: 1304px;
	height: 100px;
	background-color: rgba( 0, 0, 0, 0.2 );
	position: relative;
}

	.btn{
	margin-left: 0;
	background-color: transparent;
	margin-top: 33px;
	width: 37px;
	height: 34px;
	}

	.search_icon{
		width: 28px;
		height: 28px;
	}

	.text_search{
 		background-color: transparent;
		display: inline-block;
		color: white;
		border: 1px solid #fff;
		vertical-align: middle;
		width: 250px;
		height: 37px;
		font-size: 22px;
		font-weight: bold;
		margin-bottom: 10px;
	}

	.screen_time, .box_office, .quick_reserve{
		margin-left: 50px;
		margin-top: 33px;
		height: 37px;
		width: 160px;
		font-size: 24px;

	}

	.screen_a, .box_a, .reserve_a{
		text-decoration: none;
		color: white;
	}

	.screen_icon, .box_icon, .reserve_icon{
		width: 28px;
		height: 28px;

	}


/* 검색 링크 및 빠른 이동 끝*/


</style>
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
	<div class="movie_list">
		<c:forEach var="vo" items="${list}">
			<div class="movie_item">
				<div class="poster">
					<a href="#" title="영화상세 보기">
						<div class="box">
						<div class="text">
								<p class="summary_font">${vo.movieSummary }</p>
							</div>
						<img alt="${vo.movieName }" src="../resources/image/${vo.movieId}.jpg" width="250" height="400">

						</div>
					</a>
				</div> <!-- end poster -->
			<div class="movie_info">
			<p><span>${vo.ageLimit }세</span> ${vo.movieName }</p>
<%-- 			줄거리 : ${vo.movieSummary } --%>
				<p>관객수 : ${vo.audCount }</p>
					<div class="button" align="left">
						<a href="#" class="button" title="예매">예매</a>
					</div> <!-- end button -->
			</div> <!-- end movie_info -->
			</div> <!-- end movie_item -->
		</c:forEach>
	</div> <!-- end movie_list -->
</div> <!-- end row -->
<!-- 메인 영화 리스트 종료 -->

<!-- 검색 링크 및 빠른 이동 -->
<div class="search_link">
	<div class="search">
		<input type="text" placeholder="영화명을 입력해 주세요" title="영화 검색" id="movieName" class="text_search">
		<button type="button" class="btn" id="btn_Search">
			<img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-search-white.png" class="search_icon">
		</button>
	</div>
		<div class="screen_time">
			<a href="#" class="screen_a">
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
		</div> <!-- quick_reserve -->




</div> <!-- end search_link -->

<!-- 검색 링크 및 빠른 이동 종료-->

</body>
</html>
