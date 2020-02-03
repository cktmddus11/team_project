<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]고객센터 관리</title>
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">

<style type="text/css">
#my_b_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
	color: black;
	font-size: 36px;
}

#my_l_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: black;
	font-size: 16px;
}

#my_bb_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
	color: black;
	font-size: 25px;
}

#my_ll_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: black;
	font-size: 20px;
}

#my_ll_w {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: white;
	font-size: 20px;
}

.my_ll_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: black;
	font-size: 20px;
}
</style>
<script>
$(function(){
	$(".dropdown-menu li").click(function(){
		console.log($(this).children('a').text())
		$("input[name=selectvalue]").val($(this).children('a').text())
		selectform.submit();
	})
})

</script>
</head>
<body>
	<div class="admin_order_list">
		<div class="admin_order_header">
			<div class="admin_order_title">
				<span id="my_b_b">[관리자]고객센터 관리-FAQ 목록</span>
				<button class="admin_store_write" id="my_ll_w"
					onclick="location.href='./help_write.store?select=faq'">FAQ 등록</button>
			</div>

			<ul class="admin_order_filter">
				<li> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">총</span> <span class="admin_order_filter_count"
					id="my_ll_b">${faqcount}</span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">건</span>
				</li>
			
				<li class="admin_order_filter_select" style="padding-right: 230px;">
						
					<div class="admin_order_filter_box">
					<form name="selectform" action="faq_list.store" method="post">
						<div class="dropdown"
							style="width: 230px; height: 40px; margin-bottom: 10px;">
							<input type="hidden" name="selectvalue" value="">
							<div class="select">
								<span id="my_ll_b">
								<c:if test='${empty param.selectvalue}'>
								전체</c:if>
								<c:if test='${!empty param.selectvalue}'>
									${param.selectvalue}
								</c:if></span> <i class="fa fa-chevron-up"></i>
							</div>
							
							<ul class="dropdown-menu">
								<li><a class="my_ll_b" id="one">전체</a></li>
								<li><a class="my_ll_b" id="one">배송</a></li>
								<li><a class="my_ll_b" id="two">교환/반품/환불</a></li>
								<li><a class="my_ll_b" id="threee">기타</a></li>
								<li><a class="my_ll_b" id="four">상품</a></li>
								<li><a class="my_ll_b" id="five">주문결제</a></li>
								<li><a class="my_ll_b" id="six">취소/반품/교환</a></li>
							</ul>
						</div>
							</form>
					</li>
				
				</ul>
		<!-- 	<script>
	function listdo(page){
		document.searchform.pageNum.value = page;
		document.searchform.submit(); //페이지 눌러도 검색창 파라미터 유지
	}
</script> -->
			<div class="admin_list_no">
				<!-- count > 0  -->
				<ul class="admin_list_no_ul">
					<li class="notice_num" id="my_bb_b" style="font-size: 20px;">번호</li>
					<li class="notice_title" id="my_bb_b"
						style="font-size: 20px; width: 31vw; text-align: left;">제목</li>
					<li class="notice_date" id="my_bb_b" style="font-size: 20px;padding-right:7px;">항목</li>
					<li class="notice_manage" id="my_bb_b" style="font-size: 20px;">관리</li>
				</ul>
				<c:forEach var="faqlist" items="${faqlist}" varStatus="stat">
				<input type="hidden" name="faqno" value="${faqlist.qnano}">
				<div class="order_list1" style="height: 70px;">
					<a class="store_list" onclick="return false;"
						style="padding-left: 0; color: black; width: 14vw;"> <span
						class="order_list1_span"></span> <span class="order_list1_num"
						id="my_ll_b" style="margin-left: 60px;">${stat.index+1}</span>
						<c:set var="faqcount" value="${faqcount -1}" />
					</a>
					<hr class="moblie_line">
					<div class="store_list" style="text-align: center;">
						<div class="order_list2_date" id="my_ll_b"
							style="display: inline-block; width: 40vw; text-align: left;">
							<a href="help_detail.store?select=faq&no=${faqlist.qnano}">
							${faqlist.qnasubject}</a></div>
					</div>
					<div class="store_list"
						style="text-align: center; width: 14vw; margin-left: auto;">
						<div class="order_list2_date" id="my_ll_b"
							style="display: inline-block;">
								<c:if test="${faqlist.filter eq '0'}">전체</c:if>
								<c:if test="${faqlist.filter eq '1'}">배송</c:if>
								<c:if test="${faqlist.filter eq '2'}">교환/반품/환불</c:if>
								<c:if test="${faqlist.filter eq '3'}">기타</c:if>
								<c:if test="${faqlist.filter eq '4'}">상품</c:if>
								<c:if test="${faqlist.filter eq '5'}">주문결제</c:if>
							</div>
					</div>

					<div class="order_list4_2" style="text-align: center;">
						<div class="order_list2_state" id="my_ll_b"
							style="display: inline-block;">
							<button class="admin_store_update" id="my_ll_w"
								onclick="location.href='./help_update.store?select=faq&no=${faqlist.qnano}'">수정</button>

							<button class="admin_store_update" id="my_ll_w"
								onclick="location.href='./help_delete.store?select=faq$no=${faqlist.qnano}'">삭제</button>
						</div>
					</div>
				</div>
				</c:forEach>
				
			<!-- <div class="list_footer">
				<div class="page_block">
					<div class="arrow_box">
						<div class="arrow_pre"></div>
					</div>
					<span class="page_nums">
						<div>1</div>
					</span>
					<div class="arrow_box">
						<div class="arrow_next"></div>
					</div>
				</div>
			</div> -->
				<div style="text-align: center;padding-top: 135px;"><c:if test="${pageNum > 1}">
				<%-- 	<a href="list.shop?pageNum=${pageNum - 1}">[이전]</a> --%>
						<a href="javascript:listdo(${pageNum-1})">[이전]</a>
				</c:if>
				<c:if test="${pageNum <=1 }">[이전]</c:if>
				<c:forEach var="b" begin="${qnastartpage}" end="${qnaendpage}">
					<c:if test="${b == pageNum}">[${b}]</c:if>
					<c:if test="${b != pageNum }">
						<%-- <a href="list.shop?pageNum=${b}">[${b }]</a> --%>
						<a href="javascript:listdo(${b})">[${b}]</a>
					</c:if>
				</c:forEach>
				<%-- 다음 페이지 존재 link연결--%>
				<c:if test="${pageNum < qnamaxpage }">
					<%-- <a href="list.shop?pageNum=${pageNum +1}">[다음]</a> --%>
					<a href="javascript:listdo(${pageNum + 1})">[이전]</a>
				</c:if>
				<%-- 다음 페이지 없음 --%>
				<c:if test="${pageNum >= qnamaxpage }">[다음]</c:if>
				</div>
		</div>
	</div>
	<script type="text/javascript">
		var cnt = 0;
		function filterbox() {
			if (cnt == 0) {
				$(".admin_order_filter_box").css("display", "flex")
				cnt++
			} else {
				$(".admin_order_filter_box").css("display", "none")
				cnt--
			}
		}
	</script>
</body>
</html>