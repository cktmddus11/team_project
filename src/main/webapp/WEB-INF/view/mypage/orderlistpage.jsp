<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문내역,주문 접수,배송 중,취소/반품/교환</title>
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
			<div class="admin_order_title" id="my_b_b">주문내역,주문 접수,배송 중,취소/반품/교환</div>
			<div class="admin_order_filter">
				<span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">총</span> <span class="admin_order_filter_count"
					id="my_ll_b">1</span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">건</span>
				</span>
				<!-- 주문내역(전체)일 경우만 표시할것 select 설정 -->
				<div class="admin_order_filter_select" style="padding-right: 230px;">
					<div class="admin_order_filter_box">
						<div class="dropdown" style="width: 230px; height: 40px; margin-bottom: 10px;">
							<div class="select">
								<span id="my_ll_b">전체</span> <i class="fa fa-chevron-up"></i>
							</div>
							<input type="hidden" name="filter_box_one">
							<input type="hidden" name="order">
							<ul class="dropdown-menu ">
								<li><a class="my_ll_b" id="전체">전체</a></li>
								<li><a class="my_ll_b" id="미결제">미결제</a></li>
								<li><a class="my_ll_b" id="결제확인">결제확인</a></li>
								<li><a class="my_ll_b" id="배송준비중">배송준비중</a></li>
								<li><a class="my_ll_b" id="배송중">배송중</a></li>
								<li><a class="my_ll_b" id="주문확정">주문확정</a></li>
								<li><a class="my_ll_b" id="취소/반품/교환">취소/반품/교환</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="admin_list_no">
				<!-- count > 0  -->
				<ul class="admin_list_no_ul">
					<li class="order_num" id="my_bb_b" style="font-size: 20px;">주문 번호</li>
					<li class="item_num" id="my_bb_b" style="font-size: 20px;">주문 상품</li>
					<li class="order_date" id="my_bb_b" style="font-size: 20px;">주문 일자</li>
					<li class="order_state" id="my_bb_b" style="font-size: 20px;">주문 상태</li>
				</ul>
				<div class="order_list1">
					<a class="order_list2" href="ordernum.store"
						style="padding-left: 0; color: black;"> <span
						class="order_list1_span">주문번호</span> <span class="order_list1_num"
						id="my_bb_b" style="font-size: 15px">20200115-123456789</span>
					</a>
					<hr class="moblie_line">
					<div class="order_list3">
						<div class="order_list3_item">
							<a class="order_list3_img"> <span> <img
									style="width: 100%; height: auto;"
									src="../images/product/FRPBRYSSD0003_AW_00_.jpg" alt="상품명">
							</span>
							</a>
							<div class="order_list_content">
								<div>
									<div class="item_name" id="my_ll_b">페이스형안대_라이언</div>
									<div class="price_quant" id="my_ll_b">
										<span>14,000</span>원/ <span>1</span>개
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="order_list4_1" style="text-align: center; padding-right: 50px;">
						<div class="order_list2_date" id="my_ll_b"
							style=" display: inline-block;">2020-01-15
							18:20</div>
					</div>
					<div class="order_list4_2_fin" 
					style="text-align: center;">
						<div class="order_list2_state" id="my_ll_b"
							style=" display: inline-block;"> 
							<br>주문확정<br><br>
							<!-- <a href="#" id="my_ll_b" style="font-size: 18px;">미결제</a>
							<a href="#" id="my_ll_b" style="font-size: 18px;">결제확인</a>
							<a href="#" id="my_ll_b" style="font-size: 18px;">배송준비중</a>
							<br class="desktop_br">
							<a href="#" id="my_ll_b" style="font-size: 18px;">배송중</a>
							<a href="#" id="my_ll_b" style="font-size: 18px;">배송완료</a>
							<a href="#" id="my_ll_b" style="font-size: 18px;">주문확정</a> -->
							</div>
					</div>
				</div>
				<div class="order_list1">
					<a class="order_list2" href="orderlistpage.store"
						style="padding-left: 0; color: black;"> <span
						class="order_list1_span">주문번호</span> <span class="order_list1_num"
						id="my_bb_b" style="font-size: 15px">20200115-123456789</span>
					</a>
					<hr class="moblie_line">
					<div class="order_list3">
						<div class="order_list3_item">
							<a class="order_list3_img"> <span> <img
									style="width: 100%; height: auto;"
									src="../images/product/FRPBRYSSD0003_AW_00_.jpg" alt="상품명">
							</span>
							</a>
							<div class="order_list_content">
								<div>
									<div class="item_name" id="my_ll_b">페이스형안대_라이언</div>
									<div class="price_quant" id="my_ll_b">
										<span>14,000</span>원/ <span>1</span>개
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="order_list4_1" style="text-align: center; padding-right: 50px;">
						<div class="order_list2_date" id="my_ll_b"
							style="display: inline-block;">2020-01-15 18:20</div>
					</div>
					<div class="order_list4_2_mem" 
					style="text-align: center;">
						<div class="order_list2_state" id="my_ll_b"
							style=" display: inline-block;">
						<br>미결제<br><br>
						<button class="admin_store_update" id="my_ll_w" 
							onclick="window.location.reload()">취소</button>
						<br class="desktop_br">
						<button class="admin_store_update" id="my_ll_w" 
							onclick="location.href='change_return_order.store'">교환/반품 신청</button>
						<button class="admin_store_update" id="my_ll_w" 
							onclick="window.location.reload()">주문확정</button>
						</div>
					</div>
				</div>
			</div>
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
			<br><br><br>
				<div class="admin_list">
				<!-- count == 0 -->
				<div id="my_ll_b">아직 주문된 내역이 없습니다.</div>
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