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
	}); // end seoul-btn.click

	// 상영시간표 경기 선택
	$('.gyeonggi-btn').click(function() {
		$('.gyeonggi-btn').removeClass('active');
		$(this).addClass('active');
		$('.seoul-btn').removeClass('active');
		$('.show-gyeonggi').show();
		$('.show-seoul').hide();
	}); // end gyeonggi-btn.click

	// 상영시간표 지점 선택
	$('.area-name').click(function() {
		$('.area-name').removeClass('active3');
		$(this).addClass('active3');

		// 선택한 날짜
		var getInputDate = $('.select-date').val();
		$('#getData').val(getInputDate);
		var getDate = $('#getData').val();
		console.log('getDate : ' + getDate);

		// 선택한 지점
		var getTheater = $(this).val();
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
							+ '<div class="txt-center">'
							+ '<p class="time">' + this.movieTime + '</p>'
							+ '<p class="seat">' + this.totalSeat + '/' + this.emptySeat + '</p>'
							+ '</div>'
							+ '	</div>'
							+ '</td>'
							+ '</table>'
							+ '</div>';
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
