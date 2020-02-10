<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]상품 출고 관리</title>
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
	<div class="admin_order_list">
		<div class="admin_order_header">
			<div class="admin_order_title">
				<span id="my_b_b">[관리자]상품 출고 관리</span>
				<!-- <button class="admin_order_btn" id="my_ll_w"
					onclick="location.href='./order-item-out-delete.store'">출고
					취소</button> -->
				<button class="admin_order_btn" id="my_ll_w"
					onclick="location.href='./order_item_out_write.store'">출고
					등록</button>
				
			</div>

			<div class="admin_order_filter"></div>
			<div class="admin_list_no">
				<!-- count > 0  -->
				<ul class="admin_list_no_ul">
					<li class="out_num" id="my_bb_b" style="font-size: 20px;">출고
						번호</li>
					<li class="item_num" id="my_bb_b" style="font-size: 20px;">상품
						번호</li>
					<li class="item_name" id="my_bb_b" style="font-size: 20px;">상품명</li>
					<li class="item_amount" id="my_bb_b" style="font-size: 20px;">수량</li>
					<li class="out_price" id="my_bb_b" style="font-size: 20px;">출고
						가격(개당)</li>
				</ul>
				<c:forEach var="whousing" items="${whousingoutwhousing}">
			<ul class="order_list1">
				<li class="out_num_1" id="my_ll_b" style=" text-align: center; width: 10vw;">
						${whousing.whousingnum}
				</li>
				<li class="out_num_1" id="my_ll_b" style=" text-align: center; width: 10vw;">
						${whousing.itemnum}
				</li>
				<li class="item_name_1" id="my_ll_b" style=" text-align: center; width: 20vw;">
						${whousing.itemname}
				</li>
				<li class="out_num_1" id="my_ll_b" style=" text-align: center; width: 10vw;">
						${whousing.whousingquant}
				</li>
				<li class="out_num_1" id="my_ll_b" style=" text-align: center; width: 15vw;">
						${whousing.price}
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