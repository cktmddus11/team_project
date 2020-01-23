<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성</title>
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
</head>

<body>


	<div id="mArticle">
		<div class="question-form__FormWrapper-sc-14728i7-0 kwFxWp">
			<form>
				<div class="question-form__HeaderBlock-sc-14728i7-1 foukWS">
					<span>리뷰 작성하기</span>
				</div>
				<div class="question-form__ContentWrapper-sc-14728i7-2 jZWlvE">
					<div class="question-form__AccountBlock-sc-14728i7-3 eZonHy">
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">이름</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="이름" error="0" align="left" padding="15"
										name="name" value="${sessionScope.kname}" readonly>
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">평점</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<div class="starRev">
										<span class="starR">별1</span> <span class="starR">별2</span>
										<span class="starR">별3</span> <span class="starR">별4</span> <span
											class="starR">별5</span>
									</div>
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">
								리뷰 내용</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="question-form__TextAreaWrapper-sc-14728i7-15 howXoD">
									<textarea class="textarea__CustomTextArea-sc-11m4psx-0 jGpjC"
										height="177" name="contents">
										 </textarea>
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
						type="button">리뷰 작성</button><!--  작성완료시 리뷰 삭제가 불가능합니다. 띄우기 -->
				</div>
			</form>
		</div>
	</div>
	<script>
		$('.starR').click(function(){
			  $(this).parent().children('span').removeClass('on');
			  $(this).addClass('on').prevAll('span').addClass('on');
			  return false;
			});
		
		//별점 
	/* 	var sum = 0;
		var len = $(".starR.on").length
		 ajax으로 sum넘기기
		*/
		
	</script>
</body>
</html>