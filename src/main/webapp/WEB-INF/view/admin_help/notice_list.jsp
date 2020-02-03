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
/* .admin_list_no li{
 margin: 0 0 0 0;
    padding: 0 0 0 0;
    border : 0;
    float: left;
    } */
</style>
</head>
<body>
	<div class="admin_order_list">
		<div class="admin_order_header">
			<div class="admin_order_title">
				<span id="my_b_b">[관리자]고객센터 관리-공지사항 목록</span>
				<button class="admin_store_write" id="my_ll_w"
					onclick="location.href='./help_write.store?select=notice'">공지사항 등록</button>
			</div>

			<div class="admin_order_filter">
				<span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">총</span> <span class="admin_order_filter_count"
					id="my_ll_b">${noticecount}</span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">건</span>
				</span>
			</div>
			<div class="admin_list_no">
				<!-- count >   -->
				<a class="admin_list_no_ul">
					<span class="notice_num" id="my_bb_b" style="font-size: 20px;">번호</span>
					<span class="notice_title" id="my_bb_b"
						style="font-size: 20px; width: 33vw; text-align: left;">제목</span>
					<span class="notice_date" id="my_bb_b" style="font-size: 20px;">작성일자</span>
					<span class="notice_manage" id="my_bb_b" style="font-size: 20px;">관리</span>
				</a>
				<c:forEach var="noticelist" items="${noticelist}" varStatus="stat">
				<input type="hidden" name="faqno" value="${noticelist.qnano}">
				<div class="order_list1" style="height: 70px;">
					<a class="store_list" onclick="return false;"
						style="padding-left: 0; color: black; width: 14vw;"> <span
						class="order_list1_span"></span> <span class="order_list1_num"
						id="my_ll_b" style="margin-left: 60px;">${stat.index+1}</span>
						<c:set var="noticecount" value="${noticecount -1}" />
					</a>
					<hr class="moblie_line">
					<div class="store_list" style="text-align: center;">
						<div class="order_list2_date" id="my_ll_b"
							style="display: inline-block; width: 40vw; text-align: left;">
							<a href="help_detail.store?select=notice&no=${noticelist.qnano}">
							${noticelist.qnasubject}</a></div>
					</div>
					<div class="store_list"
						style="text-align: center; width: 14vw; margin-left: auto;">
						<div class="order_list2_date" id="my_ll_b"
							style="display: inline-block;">
								<fmt:formatDate value="${noticelist.boarddate}" pattern="yyyy-MM-dd"/>
							</div>
					</div>

					<div class="order_list4_2" style="text-align: center;">
						<div class="order_list2_state" id="my_ll_b"
							style="display: inline-block;">
							<button class="admin_store_update" id="my_ll_w"
								onclick="location.href='./help_update.store?select=notice&no=${noticelist.qnano}'">수정</button>

							<button class="admin_store_update" id="my_ll_w"
								onclick="location.href='./help_delete.store?select=notice$no=${noticelist.qnano}'">삭제</button>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		<!-- 	<div class="list_footer">
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
				<c:forEach var="a" begin="${noticestartpage}" end="${noticeendpage}">
					<c:if test="${a == pageNum}">[${a}]</c:if>
					<c:if test="${a != pageNum }">
						<%-- <a href="list.shop?pageNum=${a}">[${a }]</a> --%>
						<a href="javascript:listdo(${a})">[${a}]</a>
					</c:if>
				</c:forEach>
				<%-- 다음 페이지 존재 link연결--%>
				<c:if test="${pageNum < noticemaxpage }">
					<%-- <a href="list.shop?pageNum=${pageNum +1}">[다음]</a> --%>
					<a href="javascript:listdo(${pageNum + 1})">[이전]</a>
				</c:if>
				<%-- 다음 페이지 없음 --%>
				<c:if test="${pageNum >= noticemaxpage }">[다음]</c:if>
				</div>
	
		</div>
	</div>
	
</body>
</html>