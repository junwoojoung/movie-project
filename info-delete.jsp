<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/info-delete.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>회원정보 삭제</title>
</head>
<body class="bg-member">
	<form id="deleteForm" method="post" action="/project1/member/info-delete">
		<div class="member-wrap">
			<h1 class="ci">
				<a href="/project1/movie/index" title="메인 페이지로 이동" ></a>
			</h1>
			<div class="col-wrap">
				<div class="col">

					<p class="page-info-txt">
						<strong>
							개인정보 삭제
						</strong>
						<span>
							회원님의 정보를 확인해주세요.
						</span>
					</p>

					<div class="table-wrap">
						<table class="board-form">
							<caption>생년월일, 휴대폰번호, 아이디, 비밀번호, 비밀번호 확인, 이메일 주소 항목을 표시한 회원정보 삭제 표</caption>
							<colgroup>
								<col style="width:140px;">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">이름</th>
									<td>
										<div id="return-userName">
											<input type="text" id="userName" name="userName" value="${member.userName }">
										</div>
									</td>
								</tr>

								<tr>
									<th scope="row">생년월일</th>
									<td>
										<div id="return-ssn">
											<input type="hidden" id="ssnFront" name="ssnFront"  value="${member.ssnFront }">
											<input type="hidden" id="ssnBack" name="ssnBack" value="${member.ssnBack }">
										</div>
									</td>
								</tr>

								<tr id="joinInfoPhone"><th scope="row">휴대폰 번호</th>
									<td>
										<div id="return-phone">
											<input type="hidden" id="userPhone" name="userPhone" value="${member.userPhone }">
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">이메일 주소</th>
									<td>
										<div id="return-userEmail">
											<input type="text" id="userEmail" name="userEmail" value="${member.userEmail }">
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- end table-wrap -->

					<div class="table-interval">
						<p style="color: red;">※회원님의 아이디와 비밀번호를 입력해주세요.</p>
					</div>

					<div class="table-wrap">
						<table class="board-form">
							<tbody>
								<tr>
									<th scope="row">아이디</th>
									<td>
										<input type="text" id="userId" name="userId" class="input-text w260px" value="${member.userId }" readonly="readonly">
									</td>
								</tr>
								<tr>
									<th scope="row">비밀번호</th>
									<td>
										<input  type="password"  id="userPw" name="userPw" class="input-text w260px">
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- end table-wrap -->

					<div class="btn-member-bottom">
						<button id="cencle-btn" type="button" class="cencle-btn">취소</button>
						<button id="delete-btn" type="button" class="delete-btn">삭제</button>
					</div>
				</div>
				<!-- end col -->
			</div>
			<!-- end col-wrap -->
		</div>
		<!-- end member-wrap -->
	</form>

	<script type="text/javascript" src="../resources/js/info-delete.js"></script>
</body>
</html>
