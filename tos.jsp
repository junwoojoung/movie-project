<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../resources/css/tos.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>약관동의</title>
</head>
<body class="bg-member">
	<!-- hidden으로 전달받음 -->
	<input type="hidden" name="name" id="name" value="${name }">
	<input type="hidden" name="ssn1" id="ssn1" value="${ssn1 }">
	<input type="hidden" name="ssn2" id="ssn2" value="${ssn2 }">
	<input type="hidden" name="phone" id="phone" value="${phone }">

	<!-- 로고 및 각 STEP 표시 -->
	<div class="member-wrap">
		<h1 class="ci">
			<a href="/project1/movie/index" title="메인 페이지로 이동" ></a>
		</h1>
		<div class="col-wrap">
			<div class="col">
				<div class="step-member" title="가입완료 단계 중 step2 약관인증 단계">
					<ol>
						<li>
							<p class="step">
								<em>STEP1.</em>
								<span>
									실명인증
								</span>
							</p>
						</li>
						<li>
							<p class="step on">
								<em>STEP2.</em>
								<span>
									약관동의
								</span>
							</p>
						</li>
						<li>
							<p class="step">
								<em>STEP3.</em>
								<span>
									정보입력
								</span>
							</p>
						</li>
						<li>
							<p class="step">
								<em>STEP4.</em>
								<span>
									가입완료
								</span>
							</p>
						</li>

					</ol>
				</div>
			</div> <!-- end col -->
		</div> <!-- end col-wrap -->


		<!-- 실명인증을 위한 안내문 -->
		<p class="page-info-txt">
			<strong>
				약관동의 및 정보활용동의
			</strong>
			<span>
				메가박스 서비스 이용을 위한 약관에 동의해주세요.
			</span>
		</p>
		<!-- end 실명인증을 위한 안내문 -->


		<div class="member-rule-agree">

			<!-- 약관 동의 모두 선택 -->
			<div class="all-chk">
				<input type="checkbox" id="chkAll">
				<label for="chkAll">
					항목 전체동의
				</label>
			</div>
			<!-- end 약관 동의 모두 선택 -->

			<div class="block">
				<div class="chk">
					<input type="checkbox" name="chkBox">
					<label class="must">
						서비스 이용 약관 동의(필수)
					</label>
				</div>

				<div id="utilClau" class="scroll" tabindex="0">
					<dl>
						<dt id="n1">제 1조. 목적</dt>
						<dd>본 약관은 메가박스중앙(주)(이하 “회사”라 합니다)가 제공하는 온라인, 오프라인 서비스(이하 "서비스"라 합니다) 이용과 관련하여 회사와 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.</dd>
						<dt id="n2">제 2조. 약관의 효력 및 변경</dt>
						<dd>
						<ol>
							<li>본 약관은 서비스를 이용하고자 본 약관에 동의한 모든 회원에 대하여 그 효력을 발생합니다.</li>
							<li>본 약관의 내용은 회원(서비스)가입 시 게재되거나 공지된 내용에 회원이 동의함으로써 그 효력이 발생합니다.</li>
							<li>회사는 합리적인 사유가 발생될 경우 본 약관을 변경(수정 또는 개정)할 수 있으며, 약관을 개정할 경우 회사는 시행일 및 개정 사유를 명시하여 현행 약관과 함께 시행일로부터 최소 7일 전, 고객에게 불리하게 변경되거나 중요한 내용인 경우에는 최소 30일 전에 회사의 웹사이트 또는 전자메일 등을 통해 공지합니다.</li>
							<li>회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴를 요청할 수 있으며, 변경된 약관의 효력 발생일 이후 탈퇴 요청을 하지 않을 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.</li>
						</ol>
						</dd>
						<dt id="n3">제 3조. 약관 외 준칙</dt>
						<dd>
						<ol>
							<li>본 약관에 명시되지 아니한 사항에 대해서는 전자상거래 등에서의 소비자보호에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 및 기타 관련 법령의 규정에 따릅니다.</li>
							<li>본 약관에 명시되지 않은 서비스에 대한 사항은 당사 홈페이지, 모바일 또는 영화관 현장을 통한 해당 서비스 공지사항에 따릅니다.</li>
						</ol>
						</dd>
						<dt id="n4">제 4조. 용어의 정의</dt>
						<dd>본 약관에서 사용하는 주요한 용어의 정의는 다음과 같습니다.
						<ol>
							<li>“사이트”: 회사가 재화•용역•정보를 회사에게 제공하기 위하여 컴퓨터 등 정보통신 설비를 이용하여 재화•용역을 거래할 수 있도록 설정한 가상의 영업장 또는 회사가 운영하는 웹사이트(홈페이지, 모바일 웹/어플리케이션, SNS 등)를 말하며, 아울러 사이트를 운영하는 사업자의 의미로도 사용합니다.</li>
							<li>"회원" : 본 약관을 인지하고, 본인인증절차를 거쳐 회사에 개인정보를 제공하여 회원으로서 등록하여 회사 아이디(ID)와 멤버십 카드를 부여 받은 자로서, 정상적으로 메가박스 서비스를 이용할 수 있는 권한을 부여 받은 고객을 말합니다.</li>
							<li>"아이디" : 회원의 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 회사가 승인하는 문자나 숫자 혹은 그 조합을 말합니다(이하"ID"라 합니다).</li>
							<li>"비밀번호" : 회원이 부여 받은 ID와 일치된 회원임을 확인하고, 회원 자신의 비밀을 보호하기 위하여 회원이 정한 문자와 숫자의 조합을 말합니다.</li>
							<li>"서비스" : 회사가 회원을 위하여 유료 또는 무료로 제공하는 행위 또는 그 행위 대상인 유, 무형의 물건 자체를 의미하며 온/오프라인에서 이루어지는 영화 관람, 포인트 적립, 사용, 할인, 이벤트 참여 등의 전반적인 고객 서비스 프로그램을 말합니다.</li>
							<li>“멤버십 포인트”: 회사에서 재화/서비스 구매 시 적립/사용이 가능하도록 제공하는 포인트를 말합니다.</li>
							<li>"이용중지" : 회사가 약관에 의거하여 회원의 서비스 이용을 제한하는 것을 말합니다.</li>
							<li>"해지" : 회사 또는 회원이 서비스사용 후 이용계약을 해약하는 것을 말합니다.</li>
							<li>"휴면 회원" : 메가박스 서비스를 이용한 마지막 날로부터 연속하여 12개월간 이용 내역이 없는 회원을 말합니다.</li>
						</ol>
						</dd>
						<dt id="n5">제 5조. 회원 가입 및 카드 발급</dt>
						<dd>
						<ol>
							<li>회원 가입은 회사가 운영하는 사이트를 통해 가능하며, 서비스 가입 신청 시 본 약관과 개인정보 처리방침(‘개인정보수집 및 이용안내’ 및 ‘마케팅 활용 동의’ 등)′에 동의함으로써 회원 가입을 신청합니다.&nbsp;</li>
							<li>고객으로부터 회원 가입 신청이 있는 경우 회사는 자체 기준에 따른 심사를 거친 후 고객에게 회원 자격을 부여 할 수 있으며 회원 자격이 부여된 고객은 회사로부터 가입 완료 공지를 받은 시점부터 회원으로서의 지위를 취득하고 멤버십 카드를 즉시 발급받을 수 있습니다.</li>
							<li>“정보통신망 이용촉진 및 정보보호 등에 관한 법률” 상 만14세 미만의 아동은 온라인으로 타인에게 개인정보를 보내기 전에 반드시 개인정보의 수집 및 이용목적에 대하여 충분히 숙지하고 법정대리인(부모)의 동의를 받아야 합니다.</li>
						</ol>
						</dd>
						<dt id="n6">제 6조. 멤버십 카드의 이용 및 관리</dt>
						<dd>
						<ol>
							<li>회원이 서비스를 이용하고자 할 경우에는 멤버십 카드를 제시하여야 합니다. 카드를 제시할 경우 회사는 회원에게 본인 확인을 위한 식별 절차를 요청할 수 있습니다. 이 경우 회원은 회사의 요청을 준수하여야 정상적인 서비스를 제공받을 수 있습니다.</li>
							<li>멤버십 카드는 회원 본인이 직접 사용하여야 하며, 카드를 제3자에게 임의적으로 대여 사용하게 하거나 양도 또는 담보의 목적으로 사용 할 수 없습니다.</li>
							<li>전항의 규정에도 불구하고, 회원이 당사의 사전 동의 없이 멤버십 카드를 타인에게 대여하거나, 그 사용을 위임하거나, 양도 또는 담보의 목적으로 제공함으로써 발생한 손해와 타인이 멤버십 카드를 사용할 수 있음을 알았거나 쉽게 알 수 있었음에도 불구하고 멤버십 카드를 방치함으로써 발생한 손해에 대하여는 회사는 어떠한 책임도 지지 않습니다.</li>
						</ol>
						</dd>
						<dt id="n7">제 7조. 회원 탈퇴 및 자격 장실</dt>
						<dd>
						<ol>
							<li>회원이 이용 계약을 해지(탈퇴) 하고자 하는 경우에는 회원 본인이 사이트나 메가박스 고객센터 또는 E-MAIL등 기타 회사가 정하는 방법으로 회원탈퇴 또는 이용약관 철회를 요청할 수 있으며, 회사는 회원의 요청에 따라 조속히 회원 탈퇴에 필요한 제반 절차를 수행합니다. 단, 회원 탈퇴 시 이벤트 부정 이용 방지 등을 위하여 탈퇴일로부터 30일 이내에 재가입이 불가하며 회원 탈퇴 시 적립된 메가박스 멤버십 포인트 및 쿠폰 등은 모두 삭제됩니다.</li>
							<li>회원이 다음 각 호에 해당하는 경우, 회사는 당해 회원에 대한 통보로써 회원 자격을 상실시킬 수 있습니다. 단, 4)호의 경우에는 회원에 대한 통보 없이 자격이 상실됩니다.
							<ul>
								<li>1) 회원 가입 신청 시, 허위 내용을 등록하거나 타인의 명의를 도용한 경우</li>
								<li>2) 가입한 이름이 실명이 아닌 경우</li>
								<li>3) 회원이 부정 적립, 부정 사용 등 멤버십 포인트 및 카드를 부정한 방법 또는 목적으로 이용한 경우</li>
								<li>&nbsp;- 부정 적립 : 회원이 실제로 상품이나 서비스를 구매하지 않았음에도 불구하고 당해 회원에게 포인트가 적립된 경우를 말합니다. 그러나 시스템의 오류 등 회원의 귀책사유에 의하지않고 포인트가 적립된 경우나 상품이나 서비스를 실제로 구매한 당사자의 동의가 있어 구매 당사자 대신 다른 회원에게 포인트를 적립하는 경우는 이에 제외됩니다. 부정 적립된 포인트는 회원 자격 상실 통보와 함께 동시 소멸하고 이에 대하여 회원은 어떠한 권리도 주장할 수 없습니다. 또한 부정 적립 포인트로 상품이나 서비스를 구매하는 등의 부당이득이 발생한 경우 회원 당사자 또는 부정 적립 동조자가 당사에 대한 민•형사상 책임을 집니다.</li>
								<li>&nbsp;- 부정 사용 : 당사나 회원의 동의 없이 타 회원의 포인트를 수단과 방법에 관계 없이 임의로 사용한 경우를 말합니다.</li>
								<li>4) 회원이 사망한 경우</li>
								<li>5) 타인의 명예를 손상시키거나 불이익을 주는 행위를 한 경우</li>
								<li>6) 회사, 다른 회원 또는 제 3자의 지적재산권을 침해하는 경우</li>
								<li>7) 공공질서 및 미풍양속에 저해되는 내용을 고의로 유포시킨 경우</li>
								<li>8) 서비스 운영을 고의로 방해한 경우</li>
								<li>9)&nbsp;회사의 서비스를 이용하여 얻은 정보를 회사의 사전 승낙 없이 복제 또는 유통시키거나 상업적으로 이용하는 경우</li>
								<li>10)&nbsp;회원이 자신의 홈페이지와 게시판에 음란물을 게재하거나 음란 사이트 링크하는 경우</li>
								<li>11)&nbsp;본 약관을 포함하여 기타 회사가 정한 이용 조건에 위반한 경우</li>
								<li>12)&nbsp;당사 및 제휴사의 합리적인 판단에 기하여 메가박스 서비스 제공을 거부할 필요가 있다고 인정할 경우</li>
							</ul>
							</li>
							<li>본 조 제 2 항에 의해 회원 자격이 상실된 회원은 회사로부터 해당 사유 발생에 대한 통지를 받은 날로부터 최대 30일 이내에 본인의 의견을 소명할 수 있으며, 당사는 회원의 소명 내용을 심사하여 회원의 주장이 타당하다고 판단하는 경우 회원으로 하여금 계속하여 정상적인 서비스를 이용할 수 있도록 합니다.</li>
							<li>본 조 제 1항에 의한 회원 탈퇴 또는 제 2항에 의한 회원 자격상실이 확정되는 시점은 아래와 같습니다.
							<ul>
								<li>1) 회원 탈퇴 요청일 또는 회원 자격상실 통보일에 회원 탈퇴 또는 자격상실이 확정됩니다.</li>
								<li>2) 사망으로 인한 자격상실의 경우에는 회원 사망일에 자격상실이 확정됩니다. 당해 회원에게 제공된 기 메가박스 멤버십 서비스와 관련된 권리나 의무 및 포인트는 당해 회원의 상속인에게 상속되지 않습니다.</li>
							</ul>
							</li>
						</ol>
						</dd>
						<dt id="n8">제 8조. 회원에 대한 통지</dt>
						<dd>
						<ol>
							<li>당사가 회원에 대한 통지를 하는 경우, 회원이 당사와 미리 약정하여 지정한 E-MAIL 주소, SMS, PUSH메세지 등으로 할 수 있습니다.</li>
							<li>회사는 보다 나은 서비스 혜택 제공을 위해 다양한 전달 방법(안내문, E-MAIL, SMS 등)을 통해 서비스 관련 정보를 제공할 수 있습니다. 단, 회사는 회원이 서비스 혜택 정보 제공을 원치 않는다는 의사를 밝히는 경우 정보 제공 대상에서 해당 회원을 제외하여야 하며, 대상에서 제외되어 서비스 정보를 제공 받지 못해 불이익이 발생하더라도 이에 대해서는 회사가 책임지지 않습니다</li>
							<li>당사는 불특정다수 회원에 대한 통지의 경우 1주일 이상 사이트 공지사항에 게시함으로써 개별 통지에 갈음할 수 있습니다.&nbsp;<br>
							&nbsp;</li>
						</ol>
						</dd>
						<dt id="n9">제 9조. 회원 정보의 변경</dt>
						<dd>
						<ol>
							<li>회원은 개인정보처리방침를 통해 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다.</li>
							<li>회원은 이용신청 시 기재한 사항이 변경되었을 경우 온라인으로 직접 수정을 하거나, m.dreamcenter@partner.megabox.co.kr또는 1544-0070로 연락하시어 수정 요청을 해야 하며, 회원정보를 변경하지 아니하여 발생되는 문제의 책임은 회원에게 있습니다.</li>
						</ol>
						</dd>
						<dt id="n10">제 10조. 회사의 의무</dt>
						<dd>
						<ol>
							<li>회사는 특별한 사정이 없는 한 회원이 서비스 이용을 신청한 날에 서비스를 이용할 수 있도록 합니다.</li>
							<li>회사는 본 약관에서 정한 바에 따라 계속적이고 안정적인 서비스의 제공을 지속적으로 노력하며, 설비에 장애가 생기거나 멸실 된 때에는 지체 없이 이를 수리 복구하여야 합니다. 다만, 천재지변, 비상사태 또는 그 밖에 부득이한 경우에는 그 서비스를 일시 중단하거나 중지할 수 있습니다.</li>
							<li>회사는 회원으로부터 소정의 절차에 의해 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 적절한 절차를 거처 처리하여야 합니다. 처리 시 일정 기간이 소요될 경우 회원에게 그 사유와 처리 일정을 알려주어야 합니다.</li>
							<li>회사는 회원의 개인정보 수집 및 이용에 관련 하여 ‘개인정보처리방침’을 준수합니다.</li>
							<li>회사는 본 약관의 체결, 계약사항의 변경 및 해지 등 이용고객과의 계약 관련 절차 및 내용 등에 있어 이용고객에게 편의를 제공하도록 노력합니다.</li>
						</ol>
						</dd>
						<dt id="n11">제 11조. 회원의 의무</dt>
						<dd>
						<ol>
							<li>회원은 이 약관에서 규정하는 사항과 이용안내 또는 공지사항 등을 통하여 회사가 공지하는 사항을 준수하여야 하며, 기타 회사의 업무에 방해되는 행위를 하여서는 안됩니다.</li>
							<li>회원의 ID와 비밀번호에 관한 모든 관리책임은 회원에게 있습니다. 회원에게 부여된 ID와 비밀번호의 관리 소홀, 부정 사용에 의하여 발생하는 모든 결과에 대한 책임은 회원에게 있습니다.</li>
							<li>회원은 자신의 ID나 비밀번호가 부정하게 사용되었다는 사실을 발견한 경우에는 즉시 회사에 신고하여야 하며, 신고를 하지 않아 발생하는 모든 결과에 대한 책임은 회원에게 있습니다.</li>
							<li>회원은 회사의 사전승낙 없이는 서비스를 이용하여 영업활동을 할 수 없으며, 그 영업활동의 결과와 회원이 약관에 위반한 영업활동을 하여 발생한 결과에 대하여 회사는 책임을 지지 않습니다. 회원은 이와 같은 영업활동으로 회사가 손해를 입은 경우 회원은 회사에 대하여 손해배상의무를 집니다.</li>
							<li>회원은 회사의 명시적인 동의가 없는 한 서비스의 이용권한, 기타 이용 계약상 지위를 타인에게 양도, 증여할 수 없으며, 이를 담보로 제공할 수 없습니다.</li>
							<li>회원은 서비스 이용과 관련하여 다음 각 호에 해당되는 행위를 하여서는 안됩니다.
							<ul>
								<li>1) 다른 회원의 ID와 비밀번호 등을 도용하는 행위</li>
								<li>2) 본 서비스를 통하여 얻은 정보를 회사의 사전승낙 없이 회원의 이용 이외 목적으로 복제하거나 이를 출판 및 방송 등에 사용하거나 제3자에게 제공하는 행위</li>
								<li>3) 기타 제3자의 저작권 등 지적재산권에 대한 침해하거나 제3자의 명예 손상 및 업무를 방해하는 행위</li>
								<li>4) 공공질서 및 미풍양속에 위반되는 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서 양속에 반하는 정보를 홈페이지에 공개 또는 게시하는 행위</li>
								<li>5) 모욕적이거나 위협적이어서 타인의 프라이버시를 침해할 수 있는 내용을 전송, 게시, 전자메일 또는 기타의 방법으로 타인에게 유포하는 행위</li>
								<li>6) 범죄와 결부된다고 객관적으로 판단되는 행위</li>
								<li>7) 회사의 승인을 받지 않고 다른 사용자의 개인정보를 수집 또는 저장하는 행위</li>
								<li>8) 기타 관계법령에 위배되는 행위</li>
							</ul>
							</li>
						</ol>
						</dd>
						<dt id="n12">제 12조. 회원 서비스 혜택</dt>
						<dd>
						<ol>
							<li>회원 가입을 통해 멤버십 카드를 발급 받은 회원은 회사의 상품을 구입하거나 서비스를 이용하고 본 약관 내 고지된 바에 따라 멤버십 포인트를 회원 본인의 계정에 적립할 수 있습니다. 멤버십 포인트 적립 및 사용, 소멸에 관한 상세 내용은 ‘제 13조. 포인트 안내’ 에 상세 기술합니다.</li>
							<li>회원 티켓 예매 시 온라인 예매는 1회 8매까지로 한정하며, 티켓 구매 및 포인트 적립은 1일 5회 또는 25매, 최대 4개 지점으로(온라인 예매 시)로 제한됩니다.(1일 2매씩 예매 시 5회 10매까지 가능, 8매씩 예매 시 3회 24매까지 가능). 1일 제한 기준을 초과 할 경우 온라인 티켓 예매를 진행할 수 없습니다. 단, 현장 구매 시에는 횟수 및 매수를 제한하지 않습니다.</li>
							<li>무분별한 서비스 이용 방지를 위하여 월 기준 온라인 티켓 구매 내역 100매 또는 10 개 지점 이상(예매 후 취소 건수 포함) 예매 시 익월부터 온라인 티켓 서비스 이용에 추가 제한이 있을 수 있습니다. 예매 제한에 도달할 경우 해당 회원에게 개별 고지가 진행됩니다.</li>
							<li>회원은 회사 홈페이지, ARS, 키오스크 및 모바일 앱 등을 이용하여 영화 티켓을 포함한 메가박스에서 제공하는 서비스를 이용할 수 있으며 E-MAIL 또는 SMS, 카카오 알림톡, 모바일 앱 푸쉬(APP PUSH)를 통한 영화 및 극장, 구매 정보를 제공받습니다.</li>
							<li>회원은 구매 또는 서비스 이용 실적에 따라 VIP 회원으로 선정될 수 있습니다. VIP 회원 선정 기준 및 시기, VIP 자격 기간과 혜택은 별도의 회사 공지에 따릅니다.</li>
							<li>회원은 맞춤서비스를 위해 본인의 동의 과정을 통해 스페셜 멤버십에 가입할 수 있습니다.</li>
							<li>스페셜 멤버십은 기본적인 혜택은 동일하나, 별도의 공지를 통해 추가된 서비스를 제공받을 수 있습니다. 스페셜 멤버십 혜택은 회사의 정책에 의거 공지를 통해 변경될 수 있습니다.</li>
							<li>휴면 계정으로 전환된 회원의 경우 휴면 기간 동안 로그인 및 포인트 적립 및 사용 등 메가박스에서 제공하는 서비스를 받을 수 없으며, 별도의 본인 인증 절차를 통해 휴면 계정에서 활동 계정으로 변경 시 지속적인 서비스를 받으실 수 있습니다.</li>
							<li>회사는 가능한 한 회원에게 회사에서 계획하는 모든 행사에 참여할 수 있는 우선권을 부여토록 합니다.</li>
						</ol>
						</dd>
						<dt id="n13">제 13조. 포인트 안내</dt>
						<dd>
						<ol>
							<li>회원은 티켓을 구입할 때 멤버십 카드를 제시하거나 회원을 식별할 수 있는 정보를 제공하여야만 적립이 가능합니다.</li>
							<li>2020년 2월 멤버십 포인트 제도가 변경됩니다. 포인트 제도 변경 일시는 회사의 사이트 또는 전자메일 등을 통해 재공지 합니다. 회사는 포인트 제도 변경 일자를 기준으로 기존에 적립되어 있는 포인트를 구 포인트, 포인트 제도 변경 후 적립되는 포인트를 신포인트로 구분하여 포인트를 운영, 관리합니다.</li>
							<li>구포인트는 메가박스 영화 관람을 위한 티켓 구매 시 유료로 구매한 영화 티켓 금액의 10%에 해당되는 포인트가 적립됩니다. 멤버십 포인트는 상영일 익일에 적립되고, 적립된 멤버십 포인트 내역은 영화관람 익일에 확인할 수 있습니다. 적립된 포인트의 유효기간은 적립 월 기준 2년간이며, 극장 내 매점 이용에 대해서는 멤버십 포인트가 적립되지 않습니다. 포인트 제도가 변경되는 시점부터 구포인트는 적립되지 않습니다.</li>
							<li>신포인트는 다음 각 호와 같이 적립됩니다.
							<ul>
								<li>1) 메가박스 영화 관람 시 티켓 결제 금액의 5~10% (회원 등급에 따라 적립률 차등 일반회원 5%, VIP회원 10%)</li>
								<li>2) 메가박스 매점 서비스 이용 시 제휴 및 기타 할인 금액을 제외한 결제 금액의 2%(일부 영화관 제외)</li>
							</ul>
							</li>
							<li>멤버십 포인트의 적립은 멤버십 카드를 제시하거나 회원을 식별할 수 있는 정보를 제공하여야만 적립이 가능하며,&nbsp;티켓 또는 매점 상품의 유료 구매 시에만 적립 가능합니다. 영화 상영 및 매점 상품 구매 이후 사후 적립은 불가능합니다.&nbsp;</li>
							<li>포인트는 결제가 완료된 후 적립 예정 포인트로 적립되며 적립 예정 포인트는 사용 가능 포인트에 포함되지 않습니다. 적립 예정 포인트는 상영일 및 구매일 익일 사용 가능 포인트로 전환되며 해당 시점부터 포인트 사용이 가능합니다.</li>
							<li>당사 및 제휴사에서 발행한 할인/관람 쿠폰 및 관람권 또는 메가박스 멤버십 포인트, 제휴사 포인트 등을 통해 할인을 받은 금액은 적립 금액에서 제외됩니다. 또한, 일부 상품, 일부 극장/매장의 경우 적립이 되지 않거나 별도의 적립률이 적용될 수 있으며 상세 내용은 해당 쿠폰, 상품, 극장/매장 등에 별도 공지합니다.</li>
							<li>단체 관람을 통해 가격 할인을 받은 경우 포인트는 적립되지 않습니다.</li>
							<li>회원은 회사가 사전 공지한 행사 및 이벤트의 참여를 통해 멤버십 포인트를 추가로 적립 받을 수 있습니다. 이 경우 적립되는 멤버십 포인트는 행사 공지 시 별도로 공지된 기준에 따라 적립되며, 해당 포인트는 VIP 선정기준에 제외됩니다.</li>
							<li>본 조 2항과 3항을 통해 적립된 포인트의 유효기간은 적립 월 기준 2년이며 그 외 특정 이벤트 및 제휴를 통하여 적립된 포인트의 유효기간은 해당 이벤트, 제휴 상품 안내에 별도 공지합니다.</li>
							<li>이미 결제한 내용을 환불할 경우, 해당 환불액에 해당하는 멤버십 포인트가 적립 취소됩니다.</li>
							<li>적립된 포인트에 오류가 있을 경우 회원은 오류발생 시점부터 60일 이내에 회사에 정정 신청을 하여야 하며, 회사는 회원의 정정 신청일로부터 최대 3개월 이내에 정정 절차를 마쳐야 합니다. 단, 회원은 필요한 경우 포인트 적립 오류를 증명할 수 있는 객관적인 자료(영수증 등)를 제시 하여야 합니다.</li>
							<li>포인트를 사용하기 위해서는 회원 가입을 통해 회원의 지위를 취득하고 반드시 카드를 발급 등록 및 소유해야 합니다. 온라인 사이트를 제외한 현장에서 포인트 사용 시 포인트 비밀번호 인증을 해야 합니다. 포인트는 회원이 보유중인 사용 가능한 포인트에서 유효기간이 먼저 도래하는 소멸 일자가 빠른 포인트부터 우선적으로 차감 됩니다.</li>
							<li>적립된 포인트는 사용 가능한 보유 포인트 내에서 메가박스에서 제공하는 서비스(티켓, 매점, 포토카드 등)구매 시 상품 전액을 기준으로 포인트를 차감하여 사용할 수 있습니다.(일부 상품 제외) 단, 구포인트, 신포인트에 따라 사용 가능한 상품과 사용 가능 요일이 상이하며 메가박스 홈페이지(혜택 &gt; 메가박스 멤버십 &gt; 멤버십 안내)에 상세 기술 되어 있습니다.</li>
							<li>멤버십 포인트는 현금이나 기타 유가증권, 다른 포인트로 전환할 수 없으며, 사이트에 공지된 멤버십 포인트 사용 방법 외 다른 용도로 사용할 수 없습니다. 멤버십 포인트를 이용한 부분 결제는 불가합니다.</li>
							<li>포인트는 최초 적립된 시점부터 24개월이 지난 시점의 해당 월 말일에 먼저 적립된 포인트부터 월 단위로 자동 소멸됩니다. 회사는 회원이 보유한 포인트를 소멸예정일이 도래하여 소멸시키는 경우 포인트 소멸과 관련된 내용을 최소 15일전에 E-MAIL, SMS 등으로 발송합니다. 단, 특정 이벤트를 통해 제공된 포인트는 이벤트 진행 시 포인트 유효기간 및 소멸일을 별도로 안내하고, 소멸 안내 E-MAIL 발송에서는 제외될 수 있습니다. 또한, 회원이 당사 사이트에서 해당 월 소멸 예정 포인트 확인이 가능하도록 조치합니다.</li>
							<li>회원은 포인트를 타인에게 양도하거나 대여 또는 담보의 목적으로 이용할 수 없습니다. 다만, 회사에서 운영하는 “포인트 선물하기" 절차를 따른 경우는 예외로 합니다. "포인트 선물하기"에 따라 타 회원에게 양도 또는 증여 받은 포인트는 다시 타 회원에게 재 양도는 불가합니다. 회사 정책에 따라 당해 포인트 사용 유효기간 및 양도 금액 한도/횟수의 제한이 있을 수 있으며, 이에 대한 사항은 포인트 선물하기 서비스 페이지에서 별도 고지합니다.</li>
							<li>포인트 적립 및 사용, 소멸 기준은 회사의 내부 방침에 따라 임의로 변경될 수 있습니다.</li>
						</ol>
						</dd>
						<dt id="n14">제 14 조. 모바일 오더 서비스</dt>
						<dd>
						<ol>
							<li>메가박스 애플리케이션 이용 고객은 해당 애플리케이션에서 제공되는 "모바일 오더 서비스"를 이용할 수 있습니다.</li>
							<li>용어의 정의
							<ul>
								<li>1) "모바일 오더 서비스"란 고객이 메가박스 애플리케이션을 통해 고객이 주문할 극장 매점을 선택하여 주문 가능 메뉴를 확인하고 상품 등을 결제 및 주문할 수 있는 서비스를 말합니다.&nbsp;</li>
								<li>2) "주문"이란 고객이 "모바일 오더 서비스"를 통해 매장별 실시간 주문 가능한 상품을 확인하여 선결제 한 후, 고객이 선택한 매장에 주문을 전송 및 픽업 요청을 하는 것을 말합니다.&nbsp;</li>
							</ul>
							</li>
							<li>모바일 오더 서비스를 통해 제공되는 서비스는 아래 각 호와 같으며, 구체적인 서비스 내용, 이용 방법 등은 별도로 안내합니다.
							<ul>
								<li>1) 애플리케이션을 통한 매점 상품 결제 및 주문 서비스</li>
								<li>2) 고객 위치 정보에 따른 극장 매점 안내 등 회사가 본 서비스의 본질에 부합하며, 이용자의 편의성을 향상시킨다고 판단하여 제공하는 일체의 서비스&nbsp;</li>
							</ul>
							</li>
							<li>이용&nbsp;
							<ul>
								<li>1). "모바일 오더 서비스" 이용 가능 시간은 개별 극장 별로 상이하며, 개별 극장 별 모바일 오더 서비스 이용 가능 시간은 별도 안내합니다.&nbsp;</li>
								<li>2) 개별 극장 별 매장 운영 상황에 따라 "모바일 오더 서비스" 이용이 제한될 수 있으며, 이러한 경우 회사는 고객이 각 서비스 이용 시 서비스 이용이 제한된다는 사실을 고객에게 안내합니다.&nbsp;</li>
								<li>3) "모바일 오더 서비스"를 이용하는 고객은 반드시 메가박스 애플리케이션 PUSH 알림을 이용하여야만 하며, 해당 알림 이용에 동의하지 않을 시 각 서비스의 이용이 불가합니다.&nbsp;</li>
							</ul>
							</li>
							<li>결제 및 주문 취소 등&nbsp;
							<ul>
								<li>1) "모바일 오더 서비스" 이용 고객은 상품 등의 구매 시 결제 수단을 이용함에 있어 반드시 본인 명의의 결제 수단을 사용하여야 하며, 타인의 결제 수단을 사용하여서는 안 됩니다. 타인의 결제 수단을 사용함으로써 발생하는 회사, 결제 수단의 적법한 소유자, 제3자의 손실과 손해 등에 대한 책임은 모두 해당 고객에게 있습니다.&nbsp;</li>
								<li>2) "모바일 오더 서비스" 내 상품 등의 주문 신청 또는 픽업 신청에 따른 서비스 이용 고객의 청약의 의사표시에 대해 회사가 주문 신청 또는 픽업 신청에 대한 승낙의 의사표시(접수)를 함으로써 회사와 서비스 이용 고객 사이에 판매 상품 등에 대한 매매 계약이 성립합니다.&nbsp;</li>
								<li>3) 고객이 제2호와 같이 주문 신청 또는 픽업 신청을 한 이후에는 상품 등의 변경 또는 결제 취소가 일체 불가합니다.</li>
								<li>4) 다음 각 목의 어느 하나에 해당하는 경우, 회사는 각 서비스 이용 고객의 주문 신청 또는 픽업 신청에 대해 접수를 하지 아니할 수 있으며, 이러한 경우 회사는 해당 고객에게 즉시 접수를 하지 않은 사유와 결제 취소 관련 내용을 메가박스 애플리케이션으로 안내합니다.&nbsp;</li>
								<li>- 기술상 문제 등으로 인하여 회사가 고객에 주문 신청 또는 픽업 신청에 대한 접수를 하는 것이 어려운 경우</li>
								<li>- 매장 내 재고 미보유, 매장 운영 상황 등에 따라 원활한 상품 등의 제공이 어려운 경우</li>
								<li>- 기타 주문 접수가 현저히 불가능한 사유가 발생한 경우</li>
								<li>5) "모바일 오더 서비스" 이용 고객이 결제 및 주문한 상품 등이 준비 완료된 경우, 회사는 해당 이용 고객에게 메가박스 애플리케이션 PUSH 알림을 통해 상품 등에 대한 준비 완료 및 픽업 요청을 알립니다. 해당 고객이 회사의 픽업 요청에도 불구하고 수령 대기시간 (픽업 요청 알림 발송 시부터 10분을 초과하여 결제 및 주문한 상품 등을 미수령할 경우, 고객은 해당 상품 등에 대한 결제 취소를 할 수 없으며, 이로 인하여 발생하는 모든 손해는 고객이 부담합니다.</li>
								<li>6) 다음 각 목 중 어느 하나에 해당하는 경우, 회사는 즉시 교환 또는 환불을 위한 조치를 취합니다.</li>
								<li>- &nbsp;제공된 상품 등이 서비스 이용 고객이 결제한 상품 등의 내용과 현저히 상이한 경우</li>
								<li>- &nbsp;제공된 상품 등이 변질, 손상되는 하자가 발생하는 경우&nbsp;</li>
								<li>- 천재지변 등 특수 상황에 따른 미입고가 발생하는 경우&nbsp;</li>
								<li>7) 회사는 상품 등의 결제의 취소 및 환불과 관련하여 전자상거래 법 등 관계 법령을 준수합니다.&nbsp;</li>
								<li>8) 전자상거래 법 등 관계 법령상 청약철회가 제한될 수 있으며, 이에 회사는 청약 철회가 제한되는 사실을 개별 상품 등에 대한 안내 또는 결제 화면 등에서 고지하고, 서비스 이용 고객이 이에 동의하여야 결제가 가능한 것으로 할 수 있습니다.&nbsp;</li>
							</ul>
							</li>
							<li>모바일 오더 서비스;를 통해 구매한 상품 등을 재판매하거나 상품 등의 재판매 목적으로 해당 서비스를 이용하는 경우, 회사는 해당 고객에 대해 &lt;모바일 오더 서비스&gt;; 이용을 제한할 수 있습니다.</li>
						</ol>
						</dd>
						<dt id="n15">제 15조. 개인정보 수집 및 이용과 제공</dt>
						<dd>
						<ol>
							<li>회사는 회원의 개인정보를 보호하고 존중합니다.</li>
							<li>회사는 회원이 가입 신청을 할 때 제공하거나 회사 서비스 이용 시 발생하는 각종 개인정보 외 사전에 회원으로부터 동의를 얻어회원이 다양한 서비스 이용 시 발생하는 정보를 수집하며, 회원의 개인정보는 본 이용 계약의 이행과 본 이용 계약상의 서비스 제공을 위한 목적으로 사용됩니다. 또한 해당 정보를 분석하여 회원에게 보다 나은 서비스를 제공하고 고객 지향적인 마케팅 활동을 하기 위해 사용합니다.&nbsp;</li>
							<li>회사는 개인정보의 수집•이용•제공에 관한 동의란을 미리 선택한 것으로 설정해 두지 않습니다. 또한, 개인정보의 수집•이용•제공에 관한 회원의 동의 거절 시 제한되는 서비스를 구체적으로 명시하고, 필수 수집 항목이 아닌 개인 정보의 수집•이용•제공에 관한 회원의 동의 거절을 이유로 회원 가입 등 서비스 제공을 제한하거나 거절하지 않습니다.</li>
							<li>회원은 원하는 경우 언제든 회사에 제공한 개인정보의 수집과 이용에 대한 동의를 철회할 수 있으며, 동의의 철회는 해지 신청을 하는 것으로 이루어집니다.</li>
							<li>회사는 서비스 제공과 관련하여 취득한 회원의 개인 정보를 ‘개인정보 처리방침’에 기재된 자에게만 제공하고 기재된 목적 범위 내에서만 활용하며 수집한 개인정보를 당해 회원의 동의 없이 목적 범위를 넘어선 용도로 이용하거나 제3자에게 제공할 수 없습니다. 다만, 다음의 각 호에 해당하는 경우는 예외로 합니다.
							<ul>
								<li>1) 배송 업무상 배송업체에게 배송에 필요한 최소한의 회원의 정보(성명, 주소, 전화번호)를 알려주는 경우</li>
								<li>2) 정보통신서비스의 제공에 따른 요금 정산을 위하여 필요한 경우</li>
								<li>3)&nbsp;통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 알아볼 수 없는 형태로 가공하여 제공하는 경우</li>
								<li>4)&nbsp;재화 등의 거래에 따른 대금 정산을 위하여 필요한 경우</li>
								<li>5)&nbsp;관계 법령에 의하여 수사상 목적으로 정해진 절차와 방법에 따라 관계기관의 요구가 있는 경우</li>
								<li>6)&nbsp;다른 법률에 특별한 규정이 있는 경우</li>
								<li>7)&nbsp;정보통신윤리위원회가 관계법령에 의하여 요청한 경우</li>
							</ul>
							</li>
						</ol>
						</dd>
						<dt id="n16">제 16조. 개인정보 보유 및 이용기간</dt>
						<dd>
						<ol>
							<li>회원이 가입 시 제공한 정보는 무분별한 회원 가입 방지 및 고객 요구사항 처리 등을 위하여 회원 가입 시점부터 해지 완료 후 30일까지 보관할 수 있습니다. 법령의 규정에 의하여 보존할 필요성이 있는 경우에는 예외로 합니다.</li>
							<li>정보통신망 이용촉진 및 정보보호 등에 관한 법률에 따라 1년 이상 멤버십 서비스를 이용하지 않아 휴면계정으로 전환 된 경우 회원 정보를 별도 분리 보관하여 관리하며, 휴면 계정으로 전환된 후에도 1년동안 메가박스 미이용시 회원 계정 및 개인정보는 파기됩니다. 개인정보 파기 시에는 보유중인 멤버십 포인트, 쿠폰, 관람권 등이 삭제 처리 됩니다.</li>
							<li>휴면계정으로 전환된 회원의 경우 휴면 기간 동안 로그인 및 포인트 적립 및 사용 등 메가박스에서 제공하는 모든 서비스를 받을 수 없으며, 별도의 본인 인증 절차를 통해 휴면 계정에서 활동 계정으로 변경 시 지속적인 서비스를 받으실 수 있습니다.</li>
							<li>위 1항에도 불구하고 상법 및 ‘전자상거래 등에서 소비자보호에 관한 법률′ 등 관련 법령의 규정에 의하여 다음과 같이 일정기간 보유해야 할 필요가 있을 경우에는 관련 법령이 정한 기간 또는 다음 각 호의 기간 동안 회원정보를 보유할 수있습니다.
							<ul>
								<li>1) 계약 또는 청약철회 등에 관한 기록 : 5년</li>
								<li>2) 대금결제 및 재화등의 공급에 관한 기록 : 5년</li>
								<li>3)&nbsp;소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</li>
								<li>※ 개인정보와 관련된 보다 자세한 사항은 개인정보처리방침을 참조하시기 바랍니다.</li>
							</ul>
							</li>
						</ol>
						</dd>
						<dt id="n17">제 17조. 회원의 게시물</dt>
						<dd>
						<ol>
							<li>게시물에 대한 권리와 책임은 게시자에게 있으며 회사는 게시자의 동의 없이는 이를 서비스 내 게재 이외에 영리 목적으로 사용할 수 없습니다. 단, 비영리적인 경우에는 그러지 아니하며 또한 회사는 서비스 내의 게재권을 갖습니다.&nbsp;</li>
							<li>회사는 서비스를 이용하여 얻은 정보를 가공, 판매하는 행위 등 서비스에 게재된 자료를 상업적으로 사용할 수 없습니다.</li>
							<li>회사는 회사가 게시하거나 등록하는 서비스 내의 내용물이 다음 각 항에 해당한다고 판단되는 경우에 사전 통지 없이 삭제할 수 있습니다.
							<ul>
								<li>1) 다른 회원 또는 제3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우</li>
								<li>2) 공공질서 및 미풍양속에 위반되는 내용인 경우</li>
								<li>3)&nbsp;범죄적 행위에 결부된다고 인정되는 내용일 경우</li>
								<li>4)&nbsp;회사의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우</li>
								<li>5)&nbsp;회사에서 규정한 게시기간이나 용량을 초과한 경우</li>
								<li>6)&nbsp;회원이 자신의 홈페이지와 게시판에 음란물을 게재하거나 음란사이트를 링크하는 경우</li>
								<li>7)&nbsp;고객 문의 게시판에 욕설과 성희롱 등 미풍양속에 위배되는 내용을 게재하는 경우</li>
								<li>8)&nbsp;게시판의 성격에 부합하지 않는 게시물의 경우</li>
								<li>9)&nbsp;기타 관계법령에 위반된다고 판단되는 경우</li>
							</ul>
							</li>
						</ol>
						</dd>
						<dt id="n18">제 18조. 저작권 등의 귀속</dt>
						<dd>
						<ol>
							<li>회사가 작성한 저작물에 대한 저작권, 기타 지적재산권은 회사에 귀속합니다.</li>
							<li>회사가 제공하는 서비스 중 제휴 계약에 의해 제공되는 저작물에 대한 저작권, 기타 지적재산권은 해당 제공업체에 귀속합니다.</li>
							<li>회원은 회사의 서비스를 이용함으로써 얻은 정보를 회사의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.</li>
							<li>회원이 타인의 저작권 등 지적재산권을 침해하였음을 이유로 타인으로부터 손해배상청구, 형사고소 등을 받은 경우 회원은 그로 인해 발생하는 모든 손해를 배상하여야 하며 회사가 이로 인하여 입게 되는 손해(변호사 비용 포함)를 변상하여야 합니다.</li>
							<li>회사는 회원의 저작물을 사용하는 경우 당해 회원의 허락을 받습니다. 다만, 회원이 본 서비스 내에 게시물을 게재하는 것은 다른 회원이 해당 게시물을 본 서비스 내에서 사용하거나 회사가 검색결과로 사용하는 데 허락하는 것으로 보며, 회사가 국내외에서 다음 각 호의 목적으로 사용하는 데 허락하는 것으로 봅니다.
							<ul>
								<li>1) 본 서비스(제 3자가 운영하는 서비스 또는 회사가 제공하는 다른 서비스의 일정 영역 내에 입점하여 본 서비스가 제공되는 경우 포함) 내에서 게시물을 사용하기 위하여 게시물의 크기를 변환하거나 단순화하는 등의 방식으로 수정하는 것</li>
								<li>2) 회사에서 운영하는 다른 사이트에 게시물을 복제, 전송, 전시하는 것</li>
								<li>3)&nbsp;회사의 본 서비스를 홍보할 목적으로 미디어, 통신사 등에 게시물의 내용을 보도, 방영하게 하는 것</li>
							</ul>
							</li>
							<li>전 항의 규정에도 불구하고 회사가 게시물을 전 항 각 호에 기재된 목적 이외의 상업적 목적으로 사용할 때에는 미리 회사의 동의를 얻습니다.</li>
							<li>회사는 본 서비스 운영 정책상 필요하거나 회사가 운영하는 사이트 통합할 때에 게시물의 내용을 변경하지 않고 게시물의 게재 위치를 변경, 이전하거나 사이트 간 공유로 하여 게시물을 서비스할 수 있습니다.</li>
						</ol>
						</dd>
						<dt id="n19">제 19조. 광고게재 및 광고주와의 거래</dt>
						<dd>
						<ol>
							<li>회사가 회원에게 서비스를 제공할 수 있는 서비스 투자기반의 일부는 광고게재를 통한 수익으로부터 나옵니다. 서비스를 이용하고자 하는 자는 서비스 이용 시 노출되는 광고게재에 대해 동의하는 것으로 간주됩니다.</li>
							<li>회사는 본 서비스상에 게재되어 있거나 본 서비스를 통한 광고주의 판촉활동에 회원이 참여하거나 교신 또는 거래의 결과로서 발생하는 모든 손실 또는 손해에 대해 책임을 지지 않습니다.</li>
						</ol>
						</dd>
						<dt id="n20">제 20조. 사이트의 연결</dt>
						<dd>
						<ol>
							<li>회사는 사이트 내 하이퍼링크(하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등을 통해 타 사이트를 연결시킬 수 있습니다.</li>
							<li>회사는 회원이 해당 연결사이트와 독자적으로 상품 또는 용역을 거래한 행위에 대해서는 아무런 책임을 부담하지 않습니다.</li>
						</ol>
						</dd>
						<dt id="n21">제 21조. 서비스 이용 책임</dt>
						<dd>회원은 회사에서 권한 있는 사원이 서명한 명시적인 서면에 구체적으로 허용한 경우를 제외하고는 서비스를 이용하여 상품을 판매하는 영업활동을 할 수 없으며 특히 해킹, 돈벌이 광고, 음란 사이트 등을 통한 상업행위, 상용S/W 불법배포 등을 할 수 없습니다. 이를 어기고 발생한 영업활동의 결과 및 손실, 관계기관에 의한 구속 등 법적 조치 등에 관해서는 회사가 책임을 지지 않습니다.<br>
						&nbsp;</dd>
						<dt id="n22">제 22조. 서비스 제공의 중지</dt>
						<dd>
						<ol>
							<li>회사는 다음 각 호에 해당하는 경우 서비스 제공을 중지할 수 있습니다.
							<ul>
								<li>1) 서비스용 설비의 보수 등 공사로 인한 부득이한 경우</li>
								<li>2) 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 경우</li>
								<li>3) 기타 불가항력적 사유가 있는 경우</li>
							</ul>
							</li>
							<li>회사는 국가비상사태, 정전, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 때에는 서비스의 전부 또는 일부를 제한하거나 중지할 수 있습니다.</li>
							<li>회사는 제 1 항 및 2항의 규정에 의하여 서비스의 이용을 제한하거나 중지한 때에는 그 사유 및 제한기간 등을 지체 없이 회원에게 알려야 합니다.</li>
						</ol>
						</dd>
						<dt id="n23">제 23조. 손해배상</dt>
						<dd>회사는 이용 요금이 무료인 서비스 이용과 관련하여 회원에게 발생한 어떠한 손해에 관하여도 책임을 지지 않습니다. 유료 서비스의 경우는 서비스 별 이용약관에 따릅니다.<br>
						&nbsp;</dd>
						<dt id="n24">제 24조. 면책조항</dt>
						<dd>
						<ol>
							<li>회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.</li>
							<li>회사는 회원의 귀책사유로 인한 서비스 이용의 장애에 대하여 책임을 지지 않습니다.</li>
							<li>회사는 회원이서비스를 이용하여 기대하는 수익을 상실한 것이나 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않습니다.</li>
							<li>회사는 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임을 지지 않습니다.</li>
							<li>회사는 서비스 이용과 관련하여 회원에게 발생한 손해 가운데 회원의 고의, 과실에 의한 손해에 대하여 책임을 지지 않습니다.</li>
						</ol>
						</dd>
						<dt id="n25">제 25조. 관할 법원</dt>
						<dd>서비스 이용으로 발생한 분쟁에 대해 소송이 제기될 경우 회사의 본사 소재지를 관할하는 법원을 전속 관할법원으로 합니다.<br>
						&nbsp;</dd>
						<dt id="etc">부칙</dt>
						<dd>
						<ol>
							<li>(시행일) 이 약관은 2020년 8월 3일부터 시행합니다.</li>
							<li>(변경) 종전의 약관은 본 약관으로 대체합니다.</li>
						</ol>
						</dd>
					</dl>
				</div>
				<!-- end utilClau -->
			</div>
			<!-- end block1 -->

			<!-- block2 -->
			<div class="block">
				<div class="chk">
					<input type="checkbox" name="chkBox" id="chk-necessary">
					<label class="must">
						개인정보 수집 및 이용 동의(필수)
					</label>
				</div>
				<!-- end chk -->

				<div id="personInfo" class="scroll" tabindex="0">메가박스중앙(주)(이하 "회사")는&nbsp;다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며, 이용 목적이 변경되는 경우에는 개인정보 보호법 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.
					<br>
					<br>
					1.&nbsp;필수 입력(수집) 항목<br>&nbsp;
					<table class="MsoTableGrid" style="margin-left:8px; border-collapse:collapse; border:solid windowtext 1.0pt">
						<tbody>
							<tr>
								<td style="border: 1pt solid windowtext; width: 107.15pt; padding: 0cm 5.4pt; text-align: center;" valign="top" width="179"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:115%"><span style="color:black">구분</span></span></span></span></td>
								<td style="border-top: 1pt solid windowtext; border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-image: initial; width: 6cm; border-left: none; padding: 0cm 5.4pt; text-align: center;" valign="top" width="284"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:115%"><span style="color:black">수집항목</span></span></span></span></td>
								<td style="border-top: 1pt solid windowtext; border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-image: initial; width: 167.55pt; border-left: none; padding: 0cm 5.4pt; text-align: center;" valign="top" width="279"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:115%"><span style="color:black">수집 및 이용 목적</span></span></span></span></td>
							</tr>
							<tr>
								<td rowspan="2" style="border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-left: 1pt solid windowtext; border-image: initial; width: 107.15pt; border-top: none; padding: 0cm 5.4pt; text-align: center;" width="179"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:115%"><span style="color:black">회원 가입 및 관리 필수 수집 항목</span></span></span></span></td>
								<td style="border-bottom: 1pt solid windowtext; width: 6cm; border-top: none; border-left: none; border-right: 1pt solid windowtext; padding: 0cm 5.4pt; text-align: center;" width="284"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:115%"><span style="color:black">성명, 생년월일, 성별, 본인인증정보(CI, DI), 아이핀 번호(아이핀 본인인증 일 경우),<br>
								아이디, 비밀번호, 휴대폰번호, 이메일</span></span></span></span></td>
								<td style="border-bottom: 1pt solid windowtext; width: 167.55pt; border-top: none; border-left: none; border-right: 1pt solid windowtext; padding: 0cm 5.4pt; text-align: center;" width="279"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:115%"><span style="color:black">-메가박스 상품 구매에 대한 결제 및 예매 확인<br>
								- 회원 서비스 이용에 따른 본인 식별 및 실명 여부, 중복 가입 여부 확인<br>
								- 멤버십 서비스 제공<br>
								- 공지사항 전달, 문의 또는 불만 처리 등을 위한 원활한 의사소통 경로의 확보<br>
								- 드림센터 운영</span></span></span></span></td>
							</tr>
							<tr>
								<td style="border-bottom: 1pt solid windowtext; width: 6cm; border-top: none; border-left: none; border-right: 1pt solid windowtext; padding: 0cm 5.4pt; text-align: center;" width="284"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:115%"><span style="color:black">14세미만 법정대리인의 이름, 휴대폰번호, CI</span></span></span></span></td>
								<td style="border-bottom: 1pt solid windowtext; width: 167.55pt; border-top: none; border-left: none; border-right: 1pt solid windowtext; padding: 0cm 5.4pt; text-align: center;" width="279"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:115%"><span style="color:black">- 만 14세 미만 아동의 고객 가입을 위한 법정대리인 동의 여부 확인</span></span></span></span></td>
							</tr>
							<tr>
								<td style="border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-left: 1pt solid windowtext; border-image: initial; width: 107.15pt; border-top: none; padding: 0cm 5.4pt; text-align: center;" width="179"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:115%"><span style="color:black">모바일 서비스 이용 위한 필수 수집 항목</span></span></span></span></td>
								<td style="border-bottom: 1pt solid windowtext; width: 6cm; border-top: none; border-left: none; border-right: 1pt solid windowtext; padding: 0cm 5.4pt; text-align: center;" width="284"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:115%"><span style="color:black">모바일 단말기기정보(모델명, OS종류, OS버전 정보)</span></span></span></span></td>
								<td style="border-bottom: 1pt solid windowtext; width: 167.55pt; border-top: none; border-left: none; border-right: 1pt solid windowtext; padding: 0cm 5.4pt; text-align: center;" width="279"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:115%"><span style="color:black">-공지사항 전달, 문의 또는 불만 처리 등을 위한 원활한 의사소통 경로의 확보<br>
								-개인정보&nbsp;침해&nbsp;사고에&nbsp;대한&nbsp;대비,&nbsp;분쟁&nbsp;조정을&nbsp;위한&nbsp;기록보존</span></span></span></span></td>
							</tr>
							<tr>
								<td style="border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-left: 1pt solid windowtext; border-image: initial; width: 107.15pt; border-top: none; padding: 0cm 5.4pt; text-align: center;" width="179"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:115%"><span style="color:black">비회원으로부터 </span></span></span><br>
								<span style="font-size:10pt"><span style="line-height:115%"><span style="color:black">수집되는 정보</span></span></span></span></td>
								<td style="border-bottom: 1pt solid windowtext; width: 6cm; border-top: none; border-left: none; border-right: 1pt solid windowtext; padding: 0cm 5.4pt; text-align: center;" width="284"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:normal">성명, 생년월일, 휴대폰번호, 비밀번호</span></span></span></td>
								<td style="border-bottom: 1pt solid windowtext; width: 167.55pt; border-top: none; border-left: none; border-right: 1pt solid windowtext; padding: 0cm 5.4pt; text-align: center;" width="279"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:normal">홈페이지, 모바일 앱/웹 이용 시</span></span></span></td>
							</tr>
						</tbody>
					</table>
					<span style="font-family:돋움"> <span style="font-size:10pt"><span style="line-height:107%"><span lang="EN-US" style="line-height:107%">*</span><span style="line-height:107%">간편 로그인 이용을 위해 제공받은 정보는 회원가입이 진행되지 않은 경우 즉시 파기합니다. 또한 닉네임, 프로필사진 정보는 SNS의 운영 정책에 따라 전송되나, 당사 DB에 저장하지 않고 즉시 파기 합니다.</span></span></span></span><br>
						<br>
						2. 서비스 이용 또는 사업처리 과정에서 생성, 수집되는 정보
						<table class="MsoTableGrid" style="margin-left:8px; border-collapse:collapse; border:solid windowtext 1.0pt">
							<tbody>
								<tr>
									<td style="border: 1pt solid windowtext; width: 222.45pt; padding: 0cm 5.4pt; text-align: center;" width="371"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:normal">수집 항목</span></span></span></td>
									<td style="border-top: 1pt solid windowtext; border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-image: initial; width: 222.35pt; border-left: none; padding: 0cm 5.4pt; text-align: center;" width="371"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:normal">수집 및 이용 목적</span></span></span></td>
								</tr>
								<tr>
									<td style="border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-left: 1pt solid windowtext; border-image: initial; width: 222.45pt; border-top: none; padding: 0cm 5.4pt; text-align: center;" valign="top" width="371"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:normal">서비스 이용기록(이용시간, 이용극장, 포인트 적립 및 사용 기록, 상품 또는 서비스 구매 내역 등), 앱/웹 로그인 기록, 접속 로그, 접속IP정보,&nbsp;</span></span></span></td>
									<td style="border-bottom: 1pt solid windowtext; width: 222.35pt; border-top: none; border-left: none; border-right: 1pt solid windowtext; padding: 0cm 5.4pt; text-align: center;" valign="top" width="371"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:normal">개인정보 침해 사고에 대한 대비, 분쟁 조정을 위한 기록보존</span></span></span></td>
								</tr>
								<tr>
									<td style="border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-left: 1pt solid windowtext; border-image: initial; width: 222.45pt; border-top: none; padding: 0cm 5.4pt; text-align: center;" valign="top" width="371"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:normal">쿠키</span></span></span></td>
									<td style="border-bottom: 1pt solid windowtext; width: 222.35pt; border-top: none; border-left: none; border-right: 1pt solid windowtext; padding: 0cm 5.4pt; text-align: center;" valign="top" width="371"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:normal"><span style="word-break:keep-all">-마케팅홍보 활동을 위한 고객 분석<br>
									-신규 서비스 개발 및 맞춤 서비스 제공<br>
									*본 처리 방침 제8조에 상술</span></span></span></span><br>
									&nbsp;</td>
								</tr>
								<tr>
									<td style="border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-left: 1pt solid windowtext; border-image: initial; width: 222.45pt; border-top: none; padding: 0cm 5.4pt; text-align: center;" valign="top" width="371"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:normal">결제 기록(생년월일, 신용카드 정보)</span></span></span></td>
									<td style="border-bottom: 1pt solid windowtext; width: 222.35pt; border-top: none; border-left: none; border-right: 1pt solid windowtext; padding: 0cm 5.4pt; text-align: center;" valign="top" width="371"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:normal">상품 구매에 대한 결제</span></span></span></td>
								</tr>
								<tr>
									<td style="border-right: 1pt solid windowtext; border-bottom: 1pt solid windowtext; border-left: 1pt solid windowtext; border-image: initial; width: 222.45pt; border-top: none; padding: 0cm 5.4pt; text-align: center;" valign="top" width="371"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:normal">상품 및 결제 정보, 쿠폰 정보 등&nbsp;</span></span></span></td>
									<td style="border-bottom: 1pt solid windowtext; width: 222.35pt; border-top: none; border-left: none; border-right: 1pt solid windowtext; padding: 0cm 5.4pt; text-align: center;" valign="top" width="371"><span style="font-family:돋움"><span style="font-size:10pt"><span style="line-height:normal">모바일 오더 서비스 및 통합결제 서비스 제공을 위한 기록 수집</span></span></span></td>
								</tr>
							</tbody>
						</table>
						<br>
						<br>
						​​​​​3.&nbsp;개인정보의 처리 및 보유기간
						<dl>
							<dd>회사는 법령에따른 개인정보 보유 및 이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의 받은 개인정보 보유 및 이용기간 내에서 개인정보를 처리‧보유합니다.<br>
							<br>
							각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.<br>
							<br>
							1.서비스 이용을 위한 필수 수집 항목 : 탈퇴 시까지 보유<br>
							다음의 사유에 해당하는 경우에는 해당 사유 종료 시까지 보유<br>
							1)비회원 수집 항목 : 관람 또는 취소 후 7일까지 보유<br>
							2)무분별한 회원 탈퇴와 재가입으로 인한 피해 최소화, 고객탈퇴 후 변심에 의한 민원처리 등을 처리하기 위해 고객 탈퇴 후 30일간 최소한의 고객 정보 보유 (탈퇴 즉시 최소한의 정보만 분리보관, 30일 보유 후 지체 없이 파기)<br>
							3)관계 법령 위반에 따른 수사․조사 등이 진행중인 경우에는 해당 수사․조사 종료 시까지<br>
							4)홈페이지 이용에 따른 채권․채무관계 잔존 시에는 해당 채권․채무관계 정산 시까지<br>
							<br>
							2.휴면 회원 : 휴면 고객으로 분리 보관된 시점으로부터 1년 보유 후 파기<br>
							1)휴면 회원 : 서비스를 1년 이상 이용하지 않은 회원<br>
							2)휴면 회원 전환 조건<br>
							&nbsp;&nbsp;-홈페이지 및 모바일 웹, 앱 로그인 이력이 1년 이상 없는 고객<br>
							&nbsp;&nbsp;-포인트 거래 이력이 1년 이상 없는 고객<br>
							&nbsp;&nbsp;-멤버십 카드 발급 및 삭제 등의 이력이 1년 이상 없는 고객<br>
							3)휴면 회원 사전 안내<br>
							&nbsp; -안내일 : 휴면 전환 30일전<br>
							&nbsp; -안내 항목 : 별도 분리 보관되는 사실 및 휴면 예정일, 별도 분리 보관하는 개인정보 항목<br>
							&nbsp; -안내 방법 : 이메일, 서면, 모사전송 등 하나의 방법으로 안내<br>
							<br>
							3.&nbsp;재화 또는 서비스 제공 : 재화․서비스 공급완료 및 요금결제․정산 완료 시까지<br>
							다만, 다음의 사유에 해당하는 경우에는 해당 기간 종료 시까지<br>
							1)「전자상거래 등에서의 소비자 보호에 관한 법률」에 따른 표시․광고, 계약내용 및 이행 등 거래에 관한 기록<br>
							-게시판 이용자의 본인 확인에 관한 기록 : 6개월<br>
							-계약 또는 청약철회, 대금결제, 재화 등의 공급 기록 : 5년<br>
							-소비자 불만 또는 분쟁처리에 관한 기록 : 3년<br>
							2)「통신비밀보호법」제41조에 따른 통신사실확인자료 보관<br>
							-웹페이지 방문 및 로그인에 관한 기록: 3개월</dd>
						</dl>
				</div>
				<!-- end personInfo -->
			</div>
			<!-- end block2 -->

			<!-- block3 -->
			<div class="block">
				<div class="chk">
					<input type="checkbox" name="chkBox" id="chk-necessary">
					<label>
						마케팅 활용을 위한 개인정보 수집 이용 안내(선택)
					</label>
				</div>

				<div id="marketInfo" class="scroll x-scroll" tabindex="0"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:115%"><span style="color:black">&lt;선택 입력(수집) 항목&gt;</span></span></span></span>
					<table class="MsoTableGrid" style="margin-left:8px; border-collapse:collapse; border:solid windowtext 1.0pt">
						<tbody>
							<tr>
								<td style="border:solid windowtext 1.0pt; width:92.05pt; padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="153"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">구분</span></span></span></td>
								<td style="border:solid windowtext 1.0pt; width:142.7pt; border-left:none; padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="238"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">항목</span></span></span></td>
								<td style="border:solid windowtext 1.0pt; width:252.3pt; border-left:none; padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="421"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">이용 목적</span></span></span></td>
							</tr>
							<tr>
								<td style="border:solid windowtext 1.0pt; width:92.05pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="153"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">고객 맞춤형 상품 및 서비스 추천 등 마케팅 정보</span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:142.7pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="238"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">이메일, 휴대폰번호, 주소, 생년월일, 선호영화관, 선호장르, 선호시간대, 문자/이메일/앱푸쉬 정보 수신동의여부, 서비스 이용기록, 포인트 적립 및 사용 정보, 접속로그, 프로필 사진, 본인 갤러리 사진 정보</span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:252.3pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="421"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">고객 맞춤형 상품 및 서비스 추천,&nbsp;당사 신규 상품/서비스 안내 및 권유,&nbsp;사은/할인 행사 등 각종 이벤트 정보 등의 안내 및 권유</span><br>
								<span style="line-height:normal">마케팅홍보 등을 위한 고객 분석, 혜택 및 서비스 개발을 위한 고객 통계 분석 및 연구 조사</span><br>
								<span style="line-height:normal">-신규 서비스 개발 및 맞춤 서비스 제공</span><br>
								<span style="line-height:normal">-개인 프로필 설정</span><br>
								<span style="line-height:normal">-포토카드 서비스 이용</span></span></span></td>
							</tr>
							<tr>
								<td style="border:solid windowtext 1.0pt; width:92.05pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="153"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">조사 및 연구 정보</span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:142.7pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="238"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">고객의 영화관 이용 행태, 서비스만족도 평가정보, 성별, 나이, 거주지역(도단위), 직업, 취미, 관심사, 결혼여부, 자녀수, 자녀나이</span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:252.3pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="421"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">조사 및 연구 분석&nbsp;</span></span></span></td>
							</tr>
							<tr>
								<td rowspan="5" style="border:solid windowtext 1.0pt; width:92.05pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt" width="153"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:115%"><span style="color:black">간편 로그인 이용 시 수집되는 정보</span></span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:142.7pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" width="238"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">이름/이메일</span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:252.3pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" width="421"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">네이버 간편로그인</span></span></span></td>
							</tr>
							<tr>
								<td style="border-bottom:solid windowtext 1.0pt; width:142.7pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" width="238"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">닉네임 및 프로필 사진/이메일</span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:252.3pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" width="421"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">카카오 간편로그인</span></span></span></td>
							</tr>
							<tr>
								<td style="border-bottom:solid windowtext 1.0pt; width:142.7pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" width="238"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">이름/이메일</span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:252.3pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" width="421"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">페이코 간편로그인</span></span></span></td>
							</tr>
							<tr>
								<td style="border-bottom:solid windowtext 1.0pt; width:142.7pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" width="238"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">사용자 이름 및 프로필 사진/이메일</span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:252.3pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" width="421"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">페이스북 간편로그인</span></span></span></td>
							</tr>
							<tr>
								<td style="border-bottom:solid windowtext 1.0pt; width:142.7pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" width="238"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">회원 번호, 고유키, 이름, 이메일</span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:252.3pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" width="421"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">애플 간편로그인</span></span></span></td>
							</tr>
							<tr>
								<td rowspan="4" style="border:solid windowtext 1.0pt; width:92.05pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt" width="153"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:115%"><span style="color:black">외부 예매처 / </span></span><br>
								<span style="line-height:115%"><span style="color:black">제휴 멤버십 이용 시 수집되는 정보</span></span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:142.7pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" width="238"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">CI,&nbsp;성명,&nbsp;전화번호,&nbsp;생년월일</span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:252.3pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" width="421"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">YES24, 인터파크 예매</span></span></span></td>
							</tr>
							<tr>
								<td style="border-bottom:solid windowtext 1.0pt; width:142.7pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" width="238"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">성명,&nbsp;전화번호,&nbsp;생년월일</span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:252.3pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" width="421"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">KT 멤버십 (제휴 멤버십)</span></span></span></td>
							</tr>
							<tr>
								<td style="border-bottom:solid windowtext 1.0pt; width:142.7pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" width="238"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">CI,&nbsp;성명,&nbsp;전화번호,&nbsp;생년월일,&nbsp;성별,&nbsp;주소</span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:252.3pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" width="421"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">KT/LGU+/SYRUP 멤버십 (제휴 멤버십)</span></span></span></td>
							</tr>
							<tr>
								<td style="border-bottom:solid windowtext 1.0pt; width:142.7pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" width="238"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">CI,&nbsp;성명,&nbsp;전화번호,&nbsp;생년월일,&nbsp;성별</span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:252.3pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" width="421"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">카카오 멤버십 (제휴 멤버십)</span></span></span></td>
							</tr>
							<tr>
								<td style="border:solid windowtext 1.0pt; width:92.05pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="153"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">위치 정보 활용</span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:142.7pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="238"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">모바일 단말기 기기 정보</span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:252.3pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="421"><span style="font-size:14px;"><span style="font-family:돋움">위치&nbsp;정보&nbsp;서비스&nbsp;기반&nbsp;기록&nbsp;활용&nbsp;및&nbsp;서비스&nbsp;혜택&nbsp;안내</span></span></td>
							</tr>
						</tbody>
					</table>
					<span style="font-size:14px;"> <span style="font-family:돋움"> <span style="line-height:107%"><span lang="EN-US" style="line-height:107%">* </span><span style="line-height:107%">해당 정보는 자료 수집 시점에 별도 동의를 받으며, 동의를 받은 기간 까지만 보관 후 안전한 방법으로 파기 합니다.</span></span><br>
					<br>
					<span style="line-height:115%"><span style="color:black">&lt;서비스 이용 또는 사업 처리 과정에서 생성/수집되는 정보&gt;</span></span></span></span>

					<table class="MsoTableGrid" style="margin-left:8px; border-collapse:collapse; border:solid windowtext 1.0pt">
						<tbody>
							<tr>
								<td style="border:solid windowtext 1.0pt; width:222.45pt; padding:0cm 5.4pt 0cm 5.4pt" width="371"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">수집 항목</span></span></span></td>
								<td style="border:solid windowtext 1.0pt; width:222.35pt; border-left:none; padding:0cm 5.4pt 0cm 5.4pt" width="371"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">수집 및 이용 목적</span></span></span></td>
							</tr>
							<tr>
								<td style="border:solid windowtext 1.0pt; width:222.45pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="371"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">서비스 이용기록(이용시간, 이용극장, 포인트 적립 및 사용 기록, 상품 또는 서비스 구매 내역 등), 앱/웹 로그인 기록, 접속 로그, 접속IP정보,&nbsp;</span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:222.35pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="371"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">개인정보 침해 사고에 대한 대비, 분쟁 조정을 위한 기록보존</span></span></span></td>
							</tr>
							<tr>
								<td style="border:solid windowtext 1.0pt; width:222.45pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="371"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">쿠키</span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:222.35pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="371"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal"><span style="word-break:keep-all">-마케팅홍보 활동을 위한 고객 분석<br>
								-신규 서비스 개발 및 맞춤 서비스 제공<br>
								*본 처리 방침 제8조에 상술</span></span></span></span><br>
								&nbsp;</td>
							</tr>
							<tr>
								<td style="border:solid windowtext 1.0pt; width:222.45pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="371"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">결제 기록(생년월일, 신용카드 정보)</span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:222.35pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="371"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">상품 구매에 대한 결제</span></span></span></td>
							</tr>
							<tr>
								<td style="border:solid windowtext 1.0pt; width:222.45pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="371"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">상품 및 결제 정보, 쿠폰 정보 등&nbsp;</span></span></span></td>
								<td style="border-bottom:solid windowtext 1.0pt; width:222.35pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="371"><span style="font-size:14px;"><span style="font-family:돋움"><span style="line-height:normal">모바일 오더 서비스 및 통합결제 서비스 제공을 위한 기록 수집</span></span></span></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- end marketInfo -->
			</div>
			<!-- end block3 -->
		</div>
		<!-- end member-rule-agree -->

		<div class="btn-next">
			<button type="button" id="btn" class="btn">확인</button>
		</div>

	</div>
	<!-- end member-wrap -->
	<!-- 로고 및 각 STEP 표시 끝 -->

	<script type="text/javascript" src="../resources/js/tos.js"></script>
</body>
</html>
