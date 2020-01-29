<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]환불/교환/반품 신청서 관리</title>
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
#my_bb_20b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
	color: black;
	font-size: 20px;
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
			<span id="my_b_b">[관리자]환불/교환/반품 신청서 관리</span>
			</div>
			
			<div class="admin_order_filter">
				
			</div>
			<div class="admin_list_no">
				<!-- count > 0  -->
				<ul class="admin_list_no_ul">
					<li class="out_num" id="my_bb_b" style="text-align: center; width: 20vw;">주문번호</li>
					<li class="item_num" id="my_bb_b" style="text-align: center; width: 15vw;">신청날짜</li>
					<li class="item_name" id="my_bb_b" style="text-align: center; width: 10vw;">요청사유</li>
					<li class="item_amount" id="my_bb_b" style="text-align: center; width: 10vw;">관리</li>
				</ul>
			<ul class="order_list1">
				<li class="out_num_1" style=" text-align: center; width: 20vw; font-size: 20px;">
						<a href="./change_return_order_info.store" id="my_bb_20b" >20200115-123456789</a>
				</li>
				<li class="out_num_1" id="my_ll_b" style=" text-align: center; width: 15vw;">
						2020-01-21 16:50
				</li>
				<li class="item_name_1" id="my_ll_b" style=" text-align: center; width: 10vw;">
						고객변심
				</li>
				<li class="out_num_1" id="my_ll_b" style=" text-align: center; width: 10vw;">
						<button class="admin_store_update" id="my_ll_w" 
							onclick="location.href='./change_return_order_list.store'">수락</button>&nbsp;&nbsp;&nbsp;
							<button class="admin_store_update" id="my_ll_w" 
							onclick="location.href='./change_return_order_list.store'">거절</button>
				</li>
			</ul>	
			<ul class="order_list1">
				<li class="out_num_1"  style=" text-align: center; width: 20vw; font-size: 20px;">
						<a href="./change_return_order_info.store" id="my_bb_20b" >20200115-987654321</a>
				</li>
				<li class="out_num_1" id="my_ll_b" style=" text-align: center; width: 15vw;">
						2020-01-21 09:42
				</li>
				<li class="item_name_1" id="my_ll_b" style=" text-align: center; width: 10vw;">
						상품불량
				</li>
				<li class="out_num_1" id="my_ll_b" style=" text-align: center; width: 10vw;">
							<button class="admin_store_update" id="my_ll_w" 
							onclick="location.href='./change_return_order_list.store'">수락</button>&nbsp;&nbsp;&nbsp;
							<button class="admin_store_update" id="my_ll_w" 
							onclick="location.href='./change_return_order_list.store'">거절</button>
				</li>
			</ul>	
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
								$(".admin_order_filter_box").css("display",
										"flex")
								cnt++
							} else {
								$(".admin_order_filter_box").css("display",
										"none")
								cnt--
							}
						}
					</script>
</body>
</html>