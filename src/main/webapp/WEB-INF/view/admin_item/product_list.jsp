<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]상품 관리 목록</title>
<script type="text/javascript">
	function listdo(page) {
		document.selectform.pageNum.value = page;
		document.selectform.submit();
	}

	$(function() {
		$(".dropdown-menu li").click(function() {
			console.log($(this).children('a').text())
			$("input[name=selectvalue]").val($(this).children('a').text())
			selectform.submit();
		})
	})
</script>
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
</head>
<body>
	<form action="product_list.store" method="post" name="selectform">
		<input type="hidden" name="pageNum" value="1"> <input
			type="hidden" name="selectvalue" value="${param.selectvalue}">
	</form>
	<div class="admin_order_list">
		<div class="admin_order_header">
			<div class="admin_order_title">
				<span id="my_b_b">[관리자]상품 목록 관리</span>
				<button class="admin_store_write" id="my_ll_w"
					onclick="location.href='../admin_item/item_write.store'">상품
					등록</button>
			</div>

			<div class="admin_order_filter">
				<span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">총</span> <span class="admin_order_filter_count"
					id="my_ll_b">${itemcount}</span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">건</span>
				</span>
				<div class="admin_order_filter_select" style="padding-right: 230px;">
					<div class="admin_order_filter_box">
						<div class="dropdown"
							style="width: 230px; height: 40px; margin-bottom: 10px;">
							<div class="select">
								<span id="my_ll_b"> 
								<c:if test="${empty param.selectvalue}">전체</c:if> 
								<c:if test="${!empty param.selectvalue}">
                        		${param.selectvalue}
                        		</c:if>
								</span> <i class="fa fa-chevron-up"></i>
							</div>
							<!-- <input type="hidden" name="filter_box_one">
							<input type="hidden" name="order"> -->
							<ul class="dropdown-menu">
								<li><a class="my_ll_b" id="전체">전체</a></li>
								<li><a class="my_ll_b" id="토이">토이</a></li>
								<li><a class="my_ll_b" id="의류">의류</a></li>
								<li><a class="my_ll_b" id="생활테크">생활테크</a></li>
								<li><a class="my_ll_b" id="라이언">라이언</a></li>
								<li><a class="my_ll_b" id="어피치">어피치</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<c:if test="${itemcount > 0}">
				<%-- 등록된 게시물이 있음. --%>
				<div class="admin_list_no">
					<ul class="admin_list_no_ul">
						<li class="item_num_1" id="my_bb_b" style="font-size: 20px;">상품
							번호</li>
						<li class="out_num_1" id="my_bb_b" style="font-size: 20px;">상품
							사진</li>
						<li class="item_name_1" id="my_bb_b" style="font-size: 20px;">상품명</li>
						<li class="item_amount_1" id="my_bb_b" style="font-size: 20px;">등록
							날짜</li>
						<li class="out_price_1" id="my_bb_b" style="font-size: 20px;">가격</li>
						<li class="item_manage_1" id="my_bb_b" style="font-size: 20px;">관리</li>
					</ul>
					<c:forEach var="item" items="${itemlist}">
						<input type="hidden" name="boardno" value="${boardno}">
						<ul class="order_list1">
							<li class="out_num_2"
								style="text-align: center; margin-top: 1.5vw; width: 10vw;">
								<span id="my_ll_b"> ${item.itemnum} </span>
							</li>
							<li class="out_num_1" style="text-align: center; width: 10vw;">
								<span id="my_ll_b"> <img style="width: 5vw; height: 5vw;"
									src="../images/product/${item.itemfile1url}">
							</span>
							</li>
							<li class="item_name_2"
								style="text-align: center; margin-top: 1.5vw; width: 30vw;">
								<a href="../item/product-detail.store"> <span id="my_ll_b">
										${item.itemname} </span>
							</a>
							</li>
							<li class="out_num_2"
								style="text-align: center; margin-top: 1.5vw; width: 15vw;">
								<span id="my_ll_b"> ${item.regdate} </span>
							</li>
							<li class="out_num_2"
								style="text-align: center; margin-top: 1.5vw; width: 10vw;">
								<span id="my_ll_b"> ${item.price} </span>
							</li>
							<li class="out_button" id="my_ll_b"
								style="text-align: center; margin-top: 1.5vw; width: 10vw;">
								<button class="admin_item_update" id="my_ll_w"
									onclick="location.href='../admin_item/item_update.store?itemnum=${item.itemnum}'">수정</button>
								<button class="admin_item_update" id="my_ll_w"
									onclick="location.href='../admin_item/item_delete.store'">삭제</button>
							</li>
						</ul>
					</c:forEach>
					<%-- 이전페이지가 있는 경우 --%>
					<c:if test="${pageNum > 1}">
						<a href="javascript:listdo(${pageNum - 1})">[이전]</a>
					</c:if>
					<%-- 이전페이지가 없는 경우 --%>
					<c:if test="${pageNum <= 1}">[이전]</c:if>
					<c:forEach var="a" begin="${startpage}" end="${endpage}">
						<c:if test="${a == pageNum}">[${a}]</c:if>
						<c:if test="${a != pageNum}">
							<a href="javascript:listdo(${a})">[${a}]</a>
						</c:if>
					</c:forEach>
					<%-- 다음페이지가 존재하는 경우 link 연결 --%>
					<c:if test="${pageNum < maxpage}">
						<a href="javascript:listdo(${pageNum + 1})">[다음]</a>
					</c:if>
					<%-- 다음페이지가 존재하지 않는 경우 --%>
					<c:if test="${pageNum >= maxpage}">[다음]</c:if>
				</div>
			</c:if>
		</div>
	</div>
</body>
</html>