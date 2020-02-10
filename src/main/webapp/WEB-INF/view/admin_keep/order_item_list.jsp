<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]상품 재고 관리</title>
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
<form action="order_item_list.store" method="post">
</form>
	<div class="admin_order_list">
		<div class="admin_order_header">
			<div class="admin_order_title">
				<span id="my_b_b">[관리자]상품 재고 관리</span>
			<div style="float: right; height: 100%; width: 13vw;">
				<div class="dropdown" style="width: 220px; height: 40px;">
					<div class="select" style="padding: 0;padding-left: 10px;">
						<span id="my_ll_b">정렬 순</span> <i class="fa fa-chevron-up"></i>
					</div>
					<input type="hidden" name="order">
					<ul class="dropdown-menu">
						<li id="수량 순" class="my_ll_b">수량 순</li>
						<li id="상품 번호 순" class="my_ll_b">상품 번호 순</li>
						<li id="가나다 순" class="my_ll_b">가나다 순</li>
					</ul>
				</div>
				</div>
	
			<div style="float: right; height: 100%; width: 13vw;">
				<div class="dropdown" style="width: 220px; height: 40px;">
					<div class="select" style="padding: 0;padding-left: 10px;">
						<span id="my_ll_b">재고 상태</span> <i class="fa fa-chevron-up"></i>
					</div>
					<input type="hidden" name="order">
					<ul class="dropdown-menu">
						<li id="불량품" class="my_ll_b">불량품</li>
						<li id="정품" class="my_ll_b">정품</li>
					</ul>
				</div>
				</div>
			</div>		</div>
			<div class="admin_order_filter"></div>
			<div class="admin_list_no">
				<!-- count > 0  -->

				<ul class="admin_list_no_ul">
					<li class="out_num" id="my_bb_b" style="font-size: 20px;">재고번호</li>
					<li class="item_num" id="my_bb_b" style="font-size: 20px;">상품번호</li>
					<li class="item_name" id="my_bb_b" style="font-size: 20px;">상품명</li>
					<li class="item_amount" id="my_bb_b" style="font-size: 20px;">수량</li>
					<li class="out_price" id="my_bb_b" style="font-size: 20px;">재고상태</li>
				</ul>
				<c:forEach var="whousing" items="${wkeeplist}">
				<ul class="order_list1">
					<li class="out_num_1" id="my_ll_b" style="text-align: center; width: 10vw;">
						${whousing.whousingnum}
					</li>
					<li class="out_num_1" id="my_ll_b"
						style="text-align: center; width: 10vw;">
						${whousing.itemnum}
					</li>
					<li class="item_name_1" id="my_ll_b"
						style="text-align: center; width: 20vw;">
						${whousing.itemname}
					</li>
					<li class="out_num_1" id="my_ll_b"
						style="text-align: center; width: 10vw;">
						${whousing.whousingquant}
					</li>
					<li class="out_num_1" style="text-align: center; width: 15vw;">
						<span id="my_ll_b">정품</span>
					</li>
				</ul>
				</c:forEach>
				<c:forEach var="whousing" items="${wkeeplist}">
				<ul class="order_list1">
					<li class="out_num_1" id="my_ll_b" style="text-align: center; width: 10vw;">
						${whousing.whousingnum}
					</li>
					<li class="out_num_1" id="my_ll_b"
						style="text-align: center; width: 10vw;">
						${whousing.itemnum}
					</li>
					<li class="item_name_1" id="my_ll_b"
						style="text-align: center; width: 20vw;">
						${whousing.itemname}
					</li>
					<li class="out_num_1" id="my_ll_b"
						style="text-align: center; width: 10vw;">
						${whousing.whousingquant}
					</li>
					<li class="out_num_1" style="text-align: center; width: 15vw;">
						<span id="my_ll_b">불량</span>
					</li>
				</ul>
				</c:forEach>
				<div class="list_footer">
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
				</div>
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