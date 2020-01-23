<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<link rel="stylesheet" type="text/css" href="../css/main_kje.css">
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
   href="../fonts/iconic/css/material-design-iconic-font.min.css">
   <link rel="stylesheet" type="text/css"
   href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
</head>

<body>
	<script>
		$(document).ready(function() {
			$(".select-modal__OptionLink-ow3cz8-3").hover(
					function(){
						$(this).removeClass("cPoWav")
						$(this).addClass("jrtVOJ")
					}, function(){
						$(this).removeClass("jrtVOJ")
						$(this).addClass("cPoWav")
					}
				);	
			$(".select-modal__Block-ow3cz8-2").click(function(){
				
				var content = $(this).find("a").text();
				//console.log(content)
				$(".header__FilterName").text(content)
				//selectform.selecttype
				selectform.submit();
			})
			$("#notice").show()
			$("#FAQ").hide()
			if ($(".list__Title-sc").hasClass("glsXdQ") === true) {
				$(".reply-template__ReplyBlock").hide()
			}
			if ($(".faq_title").hasClass("glsXdQ") === true) {
				$(".faq_replyBlock").hide()
			}
			$("#notice_button").addClass("select")
			$(".header__Filter").hide()
		});
		function disp_div(id, tab) {
			$(".FAQ").each(function() {
				$(this).hide();
			})
			$(".tab").each(function() {
				$(this).removeClass("select")
			})
			$("#" + id).show();
			$("#" + tab).addClass("select")
			if (tab == 'tab2') { // FAQ 탭을 누르면
				$(".eFELNp").show() // 질문 항목 선택하는 창 뜨게함
				$(".notice_button").removeClass('ewldGg')
				$(".notice_button").addClass('bMzeRV')
				$(".faq_button").removeClass('fSmWHc')
				$(".faq_button").addClass('ittGnH')
				$(".notice").each(function() {
					$(this).hide();
				})
				$(".header__Select").hide()
			}
			if (tab == 'tab1') {
				$(".eFELNp").hide()
				$(".notice_button").removeClass('bMzeRV')
				$(".notice_button").addClass('ewldGg')
				$(".faq_button").removeClass('ittGnH')
				$(".faq_button").addClass('fSmWHc')
			}
		}
		function replyshow(num, replynum) {
			if (num == 1) {
				if ($(".list__Title-sc").hasClass("glsXdQ") === true) {
					$(".list__Title-sc").removeClass("glsXdQ");
					$(".list__Title-sc").addClass("cdlUDa");
					$("#" + replynum).show()
					return;
				}
				if ($(".list__Title-sc").hasClass("cdlUDa") === true) {
					$(".reply-template__ReplyBlock").hide()
					$(".list__Title-sc").removeClass("cdlUDa");
					$(".list__Title-sc").addClass("glsXdQ");
					return;
				}
			} else {
				if ($(".faq_title").hasClass("glsXdQ") === true) {
					$(".faq_title").removeClass("glsXdQ");
					$(".faq_title").addClass("cdlUDa");
					$("#" + replynum).show()
					return;
				}
				if ($(".faq_title").hasClass("cdlUDa") === true) {
					$("#" + replynum).hide()
					$(".faq_title").removeClass("cdlUDa");
					$(".faq_title").addClass("glsXdQ");
					return;
				}
			}
		}
		function selectbox(){
			$(".header__Select").toggle()
		}
		
	</script>
	<div class="category_header_div">
		<span class="category_header_span" id="boldfont_white_he" style="font-weight : bold;">고객센터</span>
	</div>
	<div class="title jCUDnA">
		<div class="header gHsTgc">
			<button class="notice_button tab ewldGg" id="tab1" type="button"
				onclick="disp_div('notice', 'tab1')">공지사항</button>
			<button class="faq_button tab fSmWHc" id="tab2" type="button"
				onclick="disp_div('FAQ', 'tab2')">FAQ</button>
		</div>
		<form name="selectform">
		<button class="header__Filter eFELNp" type="button">
			<div class="header__FilterName bljjmH" onclick="selectbox()" name="selecttype">전체</div>
			<div class="header__Select kDPxRN">
				<ul id="box" class="select-modal__OptionWrap-ow3cz8-0 drWdwN" type="text">
					<li class="select-modal__Block-ow3cz8-2 exNXXp">
						<a class="select-modal__OptionLink-ow3cz8-3 jrtVOJ">전체</a></li>
					<li class="select-modal__Block-ow3cz8-2 exNXXp">
						<a class="select-modal__OptionLink-ow3cz8-3 cPoWav">배송</a></li>
					<li class="select-modal__Block-ow3cz8-2 exNXXp">
						<a class="select-modal__OptionLink-ow3cz8-3 cPoWav">교환/반품/환불</a></li>
					<li class="select-modal__Block-ow3cz8-2 exNXXp">
						<a class="select-modal__OptionLink-ow3cz8-3 cPoWav"">기타</a></li>
					<li class="select-modal__Block-ow3cz8-2 exNXXp">
						<a class="select-modal__OptionLink-ow3cz8-3 cPoWav">상품</a></li>
					<li class="select-modal__Block-ow3cz8-2 exNXXp">
						<a class="select-modal__OptionLink-ow3cz8-3 cPoWav">주문결제</a></li>
				</ul>
			</div>
			
		</button>
		<script>
			
		</script>
		</form>
	</div>
	<!-- 공지사항 내역 나중에 foreach문으로 반복해서 replynum 을 index로 주기 mypage참고 -->
	<div id="notice" class="notice">
		<div class="list__Item fkzQYP">
			<div class="list__TitleBlock igiwIN">
				<div class="list__Info-sc fuoFjD">2019-12-24</div>
				<div class="list__Title-sc glsXdQ"
					onclick="replyshow(1, 'replynum0')">재고실사로 인한 배송일정 안내</div>
			</div>
			<!-- 버튼 누르면 cdlUDa이부분으로 적용되게  -->
		</div>
		<div class="reply-template__ReplyBlock iyrEsZ" id="replynum0">
			<div class="reply-template__ReplyContents kYyZhV">
				<p>답변 입력~~~~</p>
			</div>
		</div>
		<!-- <!-- 공지사항 내역2 -->
		<div class="list__Item fkzQYP">
			<div class="list__TitleBlock igiwIN">
				<div class="list__Info-sc fuoFjD">2019-12-24</div>
				<div class="list__Title-sc glsXdQ"
					onclick="replyshow(1, 'replynum1')">재고실사로 인한 배송일정 안내</div>
			</div>
			<!-- 버튼 누르면 cdlUDa이부분으로 적용되게 -->
		</div>
		<div class="reply-template__ReplyBlock iyrEsZ" id="replynum1">
			<div class="reply-template__ReplyContents kYyZhV">
				<p>답변 입력~~~~</p>
			</div>
		</div>

	</div>
	<!-- FAQ  -->
	<div id="FAQ" class="FAQ">
		<div class="list__ItemWrapper-sc-15wis6g-0 fkzQYP">
			<div class="list__TitleBlock-sc-15wis6g-3 gxwoaN">
				<div class="faq_info fuoFjD">기타</div>
				<div class="faq_title glsXdQ" onclick="replyshow(2, 'faqreplynum0')">카카오톡에서
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
				<div class="faq_title glsXdQ" onclick="replyshow(2, 'faqreplynum1')">카카오톡에서
					캐시 삭제는 어떻게 하나요?</div>
			</div>
		</div>
		<div class="faq_replyBlock iyrEsZ" id="faqreplynum1">
			<div class="reply-template__ReplyContents-kvnc78-1 kYyZhV">
				<p>잘하세요 ~</p>
			</div>
		</div>
	</div>
</body>
</html>