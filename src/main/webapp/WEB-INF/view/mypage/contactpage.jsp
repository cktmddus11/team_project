<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오프렌즈-1:1문의</title>
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<script>
	$(document).ready(function() {
		if($(".list__EmptyBlock-rbnwxz-11").hasClass('list__EmptyBlock-rbnwxz-11')){
			$("#selectform").hide();
		}
		$(".select-modal__OptionLink-ow3cz8-3").hover(function() {
			$(this).removeClass("cPoWav")
			$(this).addClass("jrtVOJ")
		}, function() {
			$(this).removeClass("jrtVOJ")
			$(this).addClass("cPoWav")
		});
		$(".select-modal__Block-ow3cz8-2").click(function() {

			var content = $(this).find("a").text();
			//console.log(content)
			$(".header__FilterName").text(content)
			//selectform.selecttype
			selectform.submit();
		})
		if ($(".faq_title").hasClass("glsXdQ") === true) {
			$(".faq_replyBlock").hide()
		}
		
		$(".header__Select").hide()
		$(".select-modal__OptionLink-ow3cz8-3").click(function(){
				$("input[name=selectvalue]").val($(this).text())
		})
	});
	
	function replyshow(replynum) {
		if($("#"+replynum).children().length != 0){ 
			if ($(".faq_title").hasClass("glsXdQ") === true) {
				$(".faq_title").removeClass("glsXdQ");
				$(".faq_title").addClass("cdlUDa");	  // 버튼 같이 눌리는거 고치기
				$("#" + replynum).show()
				return;
			}
			if ($(".faq_title").hasClass("cdlUDa") === true) {
				$("#" + replynum).hide()
				$(".faq_title").removeClass("cdlUDa");
				$(".faq_title").addClass("glsXdQ");
				return;
			}
		 }else {
			alert("답변이 없습니다.")
		} 
	}
	function selectbox() {
		$(".header__Select").toggle()
	}
</script>
</head>
<body>
	<div id="mArticle">
		<div class="header__Container-sc-122y7f9-0 fmXyox">
			<div>
				<div class="header__Title-sc-122y7f9-1 gaRGea">1:1 문의</div>
				<div class="header__Guide-sc-122y7f9-2 bdznXa">프렌즈 샵의 회원, 상품,
					주문, 배송, 교환, 반품 등의 궁금한 내용을 문의하세요.</div>
			</div>
			<button class="header__Button-sc-122y7f9-3 gsNikK" type="button"
				onclick="location.href='contact_form.store'">
				<span class="header__Label-sc-122y7f9-4 cLlqjl">문의 하기</span>
			</button>
		</div>

		<form name="selectform" id="selectform" method="post" action="contactpage.store">
			<button class="header__Filter eFELNp" type="button">
				<input type="hidden" name="selectvalue" value="">
				<div class="header__FilterName bljjmH" onclick="selectbox()">
					<c:if test='${empty param.selectvalue}'>
							전체
					</c:if>
					<c:if test='${!empty param.selectvalue}'>
					${fn:trim(param.selectvalue)}
					</c:if>
				</div>
				<div class="header__Select kDPxRN">
					<ul id="box" class="select-modal__OptionWrap-ow3cz8-0 drWdwN"
						type="text">
						<li class="select-modal__Block-ow3cz8-2 exNXXp"><a
							class="select-modal__OptionLink-ow3cz8-3 jrtVOJ">전체</a></li>
						<li class="select-modal__Block-ow3cz8-2 exNXXp"><a
							class="select-modal__OptionLink-ow3cz8-3 cPoWav">배송</a></li>
						<li class="select-modal__Block-ow3cz8-2 exNXXp"><a
							class="select-modal__OptionLink-ow3cz8-3 cPoWav">교환/반품/환불</a></li>
						<li class="select-modal__Block-ow3cz8-2 exNXXp"><a
							class="select-modal__OptionLink-ow3cz8-3 cPoWav"">기타</a></li>
						<li class="select-modal__Block-ow3cz8-2 exNXXp"><a
							class="select-modal__OptionLink-ow3cz8-3 cPoWav">상품</a></li>
						<li class="select-modal__Block-ow3cz8-2 exNXXp"><a
							class="select-modal__OptionLink-ow3cz8-3 cPoWav">주문결제</a></li>
					</ul>
				</div>

			</button>
		</form>
		<!-- <div class="list__EmptyBlock-rbnwxz-11 bkURUc">
					<div>아직 문의하신 내역이 없어요</div>
				</div>  -->
		<div id="FAQ" class="FAQ">
			<div class="list__ItemWrapper-sc-15wis6g-0 fkzQYP">
				<div class="list__TitleBlock-sc-15wis6g-3 gxwoaN">
					<div class="faq_info fuoFjD">기타</div>
					<div class="faq_title glsXdQ" onclick="replyshow('faqreplynum0')">카카오톡에서
						캐시 삭제는 어떻게 하나요?</div>
				</div>
			</div>
			<div class="faq_replyBlock iyrEsZ" id="faqreplynum0">
				<div class="reply-template__ReplyContents-kvnc78-1 kYyZhV">
					<p>잘하세요 ~</p>
				</div>
			</div>
			<div class="list__ItemWrapper-sc-15wis6g-0 fkzQYP">
				<div class="list__TitleBlock-sc-15wis6g-3 gxwoaN">
					<div class="faq_info fuoFjD">기타</div>
					<div class="faq_title glsXdQ" onclick="replyshow('faqreplynum1')">카카오톡에서
						캐시 삭제는 어떻게 하나요?</div>
				</div>
			</div>
			<!-- <div class="faq_replyBlock iyrEsZ" id="faqreplynum1">
						<div class="reply-template__ReplyContents-kvnc78-1 kYyZhV">
							<p>잘하세요 ~</p>
						</div> 
					</div> -->
		</div>
		<!--   여기서닫기 -->
	</div>

	<!-- 	<script>
				window.LANG = 'kr';
				window.CSRF_TOKEN = 'df0f356a-8698-4b7c-b654-0420d67b37c1';
				window.CSRF_HEADER_NAME = 'X-CSRF-TOKEN';
			</script>

			<script src="/resources/js/dist/contact.js?20200116155618" async=""></script> -->

</body>
</html>