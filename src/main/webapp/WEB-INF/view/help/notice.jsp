<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" type="text/css" href="../css/main_kje.css">
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
</head>

<body>
	<script>
		$(document).ready(function() {
			$("#notice").show()
			$("#FAQ").hide()
			if ($(".list__Title-sc").hasClass("glsXdQ") === true) {
				$(".reply-template__ReplyBlock").hide()
			}
			$("#notice_button").addClass("select")
			$(".eFELNp").hide()
		});
		function disp_div(id, tab){
			$(".info").each(function(){
				$(this).hide();
			})
			$(".tab").each(function(){
				$(this).removeClass("select")
			})
			$("#"+id).show();
			$("#"+tab).addClass("select")
			if(tab == 'tab2'){
				$(".eFELNp").show()
			}else{
				$(".eFELNp").hide()
			}
		}
		function replyshow() {
			if ($(".list__Title-sc").hasClass("glsXdQ") === true) {
				$(".list__Title-sc").removeClass("glsXdQ");
				$(".list__Title-sc").addClass("cdlUDa");
				$(".reply-template__ReplyBlock").show()
				return;
			}
			if ($(".list__Title-sc").hasClass("cdlUDa") === true) {
				$(".reply-template__ReplyBlock").hide()
				$(".list__Title-sc").removeClass("cdlUDa");
				$(".list__Title-sc").addClass("glsXdQ");
				return;
			}
		}
	</script>
	<div class="category_header_div">
		<span class="category_header_span" id="boldfont_white_he">전체</span>
	</div>
	<div class="title jCUDnA">
		<div class="header gHsTgc">
			<button class="notice_button tab ewldGg" id="tab1" type="button"
			onclick="disp_div('notice', 'tab1')">공지사항</button>
			<button class="faq_button tab fSmWHc" id="tab2" type="button"
			onclick="disp_div('FAQ', 'tab2')">FAQ</button>
		</div>
		<button class="header__Filter eFELNp" type="button">
			<div class="header__FilterName bljjmH">전체</div>
			<div class="header__Select kDPxRN"></div>
		</button>
	</div>
	<!-- 공지사항 내역 -->
	<div id="notice" class="info">
		<div class="list__Item fkzQYP">
			<div class="list__TitleBlock igiwIN">
				<div class="list__Info-sc fuoFjD">2019-12-24</div>
				<div class="list__Title-sc glsXdQ" onclick="replyshow()">재고실사로
					인한 배송일정 안내</div>
			</div>
			<!-- 버튼 누르면 cdlUDa이부분으로 적용되게  -->
		</div>
		<div class="reply-template__ReplyBlock iyrEsZ">
			<div class="reply-template__ReplyContents kYyZhV">
				<p>답변 입력~~~~</p>
			</div>
		</div>
		<!-- 공지사항 내역2 -->
		<!-- <div class="list__Item fkzQYP">
		<div class="list__TitleBlock igiwIN">
			<div class="list__Info-sc fuoFjD">2019-12-24</div>
			<div class="list__Title-sc glsXdQ" onclick="replyshow()">재고실사로
				인한 배송일정 안내</div>
		</div>
		버튼 누르면 cdlUDa이부분으로 적용되게 
	</div>
	<div class="reply-template__ReplyBlock iyrEsZ">
		<div class="reply-template__ReplyContents kYyZhV">
			<p>답변 입력~~~~</p>
		</div>
	</div> -->
	</div>
	<!-- FAQ  -->
	<div id="FAQ" class="info">
		<div class="list__ItemWrapper-sc-15wis6g-0 fkzQYP">
			<div class="list__TitleBlock-sc-15wis6g-3 gxwoaN">
				<div class="list__Info-sc-15wis6g-2 fuoFjD">기타</div>
				<div class="list__Title-sc-15wis6g-1 glsXdQ">카카오톡에서 캐시 삭제는 어떻게
					하나요?</div>
			</div>
		</div>
		<div class="reply-template__ReplyBlock-kvnc78-0 iyrEsZ">
			<div class="reply-template__ReplyContents-kvnc78-1 kYyZhV">
				<p>잘하세요 ~</p>
			</div>
		</div>
	</div>
</body>
</html>