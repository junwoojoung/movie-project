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
		padding-left: 50px;
		font-family: system-ui;
		font-weight: bold;
		font-size: 16px;
		color: white;
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

 	img:hover {
	/* 이미지에 갖다대면 줄거리가 나오게 구현한다
	*/
}

/*박스 오피스 시작*/
	.body_top{
	padding-left: 798px;
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
		padding-left: 1368px;
	}

	.more_info_a{
		color: #aaa;
		font-size: 15px;

	}
/*더 많은 정보 보기 끝*/

/* 검색 링크 및 빠른 이동 시작*/


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
					<a href="#">
						<img alt="${vo.movieName }" src="../resources/image/${vo.movieId}.jpg" width="250" height="400">
					</a>
				</div> <!-- end poster -->
			<div class="movie_info">
			<p><span>${vo.ageLimit }세</span> ${vo.movieName }</p>
<%-- 			줄거리 : ${vo.movieSummary } --%>
				<p>관객수 : ${vo.audCount }</p>
					<div class="button" align="left">
						<a href="#" class="button"><input type="button" value="예매" style="height: 36px; width: 250px; background-color: #037b94; color: white; border-radius: 10px; outline: 0; border: 0; font-family: system-ui; font-size: 15px; font-weight: bold;"></a>
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
		<div class="screen_time"></div>

	</div> <!-- end search -->
</div> <!-- end search_link -->

<!-- 검색 링크 및 빠른 이동 종료-->

</body>
</html>
