<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]1:1 관리-답변 작성</title>
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<style type="text/css">
.table {
	display: table;
}

.tr {
	display: table-row;
}

.th, .td {
	display: table-cell;
}

.th {
	font-weight: bold;
	text-align: center;
}
/* 김정은 20.01.14 */
input[type=text1] {
	width: 100%;
	box-sizing: border-box;
	border: 1px solid gold;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 100;
	color: black;
	border-radius: 4px;
	font-size: 16px;
	padding: 5px 5px 5px 5px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
	font-weight: 100;
	color: black;
}

textarea {
	width: 100%;
	box-sizing: border-box;
	border: 1px solid gold;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 100;
	color: black;
	border-radius: 4px;
	font-size: 16px;
	padding: 5px 5px 5px 5px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
	font-weight: 100;
	color: black;
}
</style>
<script>
	function changecase() {
		var content = $("select[name='case1']").val();
		var write = null;
		var lastClass = $("label[name='caselabel']").attr('class').split(' ')
				.pop();
		console.log(lastClass)
		$("label[name='caselabel']").removeClass(lastClass);
		if (content == -1) {
			write = "문의 유형 선택";

			$("label[name='caselabel']").addClass('ckvayf')
		} else if (content == 4) {
			write = "배송";

			$("label[name='caselabel']").addClass('cvxdGv')
		} else if (content == 6) {
			write = "교환/반품/환불"

			$("label[name='caselabel']").addClass('gbuGih')
		} else if (content == 7) {
			write = "기타";

			$("label[name='caselabel']").addClass('eUAHGi')
		} else if (content == 2) {
			write = "상품";

			$("label[name='caselabel']").addClass('kqEPId')
		} else if (content == 3) {
			write = "주문결제";

			$("label[name='caselabel']").addClass('DlPRr')
		}

		$("label[name='caselabel']").attr('content', write);
	}
</script>
</head>
<body>
	<!--  고객정보랑 문의 유형번호 -->
	<div id="mArticle">
		<div class="question-form__FormWrapper-sc-14728i7-0 kwFxWp">
			<form>
				<div class="question-form__HeaderBlock-sc-14728i7-1 foukWS">
					<span>[관리자]1:1 문의 - 답변하기</span>
				</div>
				<div class="question-form__ContentWrapper-sc-14728i7-2 jZWlvE">
					<div class="question-form__AccountBlock-sc-14728i7-3 eZonHy">
						<div class="question-form__Title-sc-14728i7-5 ibmozz">고객 정보,
							문의 내용</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">이름</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="이름" error="0" align="left" padding="15"
										name="name" value="차승연" readonly>
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">이메일</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="이메일 입력" error="0" align="left" padding="15"
										name="email" value="cktmddus11@naver.com" readonly>
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">휴대폰
								번호</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="01012345678" error="0" align="left" padding="15"
										name="phone" value="010-1111-2222" readonly>
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">문의 항목</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="제목" error="0" align="left" padding="15"
										name="title" value="기타" readonly>
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">제목</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="제목" error="0" align="left" padding="15"
										name="title" value="카카오톡에서 캐시는 어떻게 삭제하나요" readonly>
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">문의
								내용</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="question-form__TextAreaWrapper-sc-14728i7-15 howXoD">
									<textarea class="textarea__CustomTextArea-sc-11m4psx-0 jGpjC"
										readonly height="177" name="contents">사용자가 입력한 문의 내용~~
										 사용자가 입력한 문의 내용~~
										 사용자가 입력한 문의 내용~~
										 이게 먼가염 ???
										 </textarea>
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">첨부파일</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="question-form__TextAreaWrapper-sc-14728i7-15 howXoD">
									<a href="#" download
										class="input-text__CustomText-sc-14n8vry-1 llGwgt">
										aaa.jpg</a>

								</div>
							</div>
						</div>
					</div>

					<div class="question-form__ContentBlock-sc-14728i7-4 kHppkS">
						<div class="question-form__Title-sc-14728i7-5 ibmozz">문의 답변</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">답변</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="question-form__TextAreaWrapper-sc-14728i7-15 howXoD">
									<textarea class="textarea__CustomTextArea-sc-11m4psx-0 jGpjC"
										placeholder="답변내용 입력" height="177" name="contents"></textarea>
								</div>
							</div>
						</div>
						
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">사진
								첨부</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
									<input type="file" class="i-t-name-1" id="my_ll_b"
									placeholder="사진을 첨부하세요" name="file1" value="">
									<!-- <label class="input-file__FileBox-uz5ebk-0 cLHtJi" for="file"><span
										class="input-file__Name-uz5ebk-1 ZAepM" lang="kr">kakao_account_login_btn_medium_narrow.png</span>
									<button class="input-file__Delete-uz5ebk-4 bOawBQ"
											type="button"></button>
										<input class="input-file__Input-uz5ebk-2 bTDNUq" id="file" type="file"><span
										class="input-file__Button-uz5ebk-3 iIVffC"><span>파일선택</span></span></label> -->
									<div class="question-form__GuideWrapper-sc-14728i7-12 lmFqbH">
										<div class="question-form__GuideBlock-sc-14728i7-11 dLcMkL">
											<span></span>
											<div>상품 불량 및 오배송의 경우, 해당 제품 사진을 등록 부탁드립니다.</div>
										</div>
										<div class="question-form__GuideBlock-sc-14728i7-11 dLcMkL">
											<span></span>
											<div>최대 10MB 이내, 1개 이미지만 등록 가능합니다.</div>
										</div>
									</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">비밀
								번호</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="question-form__TextAreaWrapper-sc-14728i7-15 howXoD">
									<input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="비밀번호를 입력하세요" error="0" align="left" padding="15"
										name="title" value="">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="question-form__FooterBlock-sc-14728i7-7 BCbzT">
					<button
						class="question-form__CancelButton-sc-14728i7-9 cvQgXv question-form__Button-sc-14728i7-8 encGOf"
						type="button" onclick="history.back(-1)">취소</button>
					<button
						class="question-form__SubmitButton-sc-14728i7-10 ekjGWF question-form__Button-sc-14728i7-8 encGOf"
						type="button" onclick="location.href='../admin/contact_list.store'">답변하기</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>