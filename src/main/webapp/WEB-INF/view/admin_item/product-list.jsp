<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]상품 관리 목록</title>
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
			<span id="my_b_b">[관리자]상품 목록 관리</span>
			<button class="admin_store_write" id="my_ll_w" 
			onclick="location.href='../item/item-write.store'">상품 등록</button>
			</div>
			
			<div class="admin_order_filter">
				<span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">총</span> <span class="admin_order_filter_count"
					id="my_ll_b">2000</span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">건</span>
				</span>
			</div>
			<div class="admin_list_no">
				<ul class="admin_list_no_ul">
					<li class="item_num_1" id="my_bb_b" style="font-size: 20px;">상품 번호</li>
					<li class="out_num_1" id="my_bb_b" style="font-size: 20px;">상품 사진</li>
					<li class="item_name_1" id="my_bb_b" style="font-size: 20px;">상품명</li>
					<li class="item_amount_1" id="my_bb_b" style="font-size: 20px;">등록 날짜</li>
					<li class="out_price_1" id="my_bb_b" style="font-size: 20px;">가격</li>
					<li class="item_manage_1" id="my_bb_b" style="font-size: 20px;">관리</li>
				</ul>
				<ul class="order_list1">
				<li class="out_num_2" style="text-align: center; margin-top : 1.5vw; width : 10vw;">
					<span id="my_ll_b">
						1
					</span>
				</li>
				<li class="out_num_1" style=" text-align: center; width : 10vw;">
					<span id="my_ll_b">
					<img style="width: 5vw; height: auto;"
						src="../images/product/20200102183712810_8809681703895_AW_00.jpg" alt="상품사진">
					</span>
				</li>
				<li class="item_name_2" style=" text-align: center; margin-top : 1.5vw; width : 30vw;">
				<a href="../item/product-detail.store">
					<span id="my_ll_b">
						롱바디필로우_후드라이언(핑크)
					</span>
				</a>
				</li>
				<li class="out_num_2" style=" text-align: center; margin-top : 1.5vw; width : 15vw;">
					<span id="my_ll_b">
						2020.01.20
					</span>
				</li>
				<li class="out_num_2" style=" text-align: center; margin-top : 1.5vw; width : 10vw;">
					<span id="my_ll_b">
						10000
					</span>
				</li>
				<li class="out_button" id="my_ll_b" style=" text-align: center; margin-top : 1.5vw; width: 10vw;">
					<button class="admin_item_update" id="my_ll_w" 
						onclick="location.href='../item/item-update.store'">수정</button>
					<button class="admin_item_update" id="my_ll_w" 
						onclick="location.href='../item/item-delete.store'">삭제</button>
				</li>
			</ul>	
			</div>
		</div>
	</div>
</body>
</html>