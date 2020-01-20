<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" type="text/css" href="../css/mypage_cyj.css">
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
</style>

</head>
<body>
	<div class="mypage_header">
		<div>
			<span class="mypage_name" id="my_b_b">${sessionScope.kname }</span> <span
				class="mypage_email"> <span class="mypage_imgemail"></span> <span
				id="my_l_b">${sessionScope.kemail}</span>
			</span>
		</div>
		<a href="../member/update.store" class="mem_update" id="my_l_b">정보수정</a>
	</div>
	<div class="mypage_list">
		<a href="orderlistpage.store?status=receive" class="list_1"> <span class="list_2" id="my_bb_b">0</span>
			<div>
				<span class="list_3" id="my_ll_b">주문 접수</span> <span
					class="next_img"></span>
			</div>
		</a> <a href="orderlistpage.store?status=in-shipping" class="list_1"> <span class="list_2" id="my_bb_b">0</span>
			<div>
				<span class="list_3" id="my_ll_b">배송 중</span> <span class="next_img"></span>
			</div>
		</a> <a href="orderlistpage.store?status=re-order" class="list_1"> <span class="list_2" id="my_bb_b">0</span>
			<div>
				<span class="list_3" id="my_ll_b">취소/반품/교환</span> <span
					class="next_img"></span>
			</div>
		</a> <a href="pointlistpage.store" class="list_4"> <span class="list_2" id="my_bb_b">1,000&nbsp;P</span>
			<div>
				<span class="list_3" id="my_ll_b">사용가능한 포인트</span> <span
					class="next_img"></span>
			</div>
		</a>
	</div>
	<div class="moblie_list">
		<a class="moblie_list1" href="orderlistpage.store">
		<span class="moblie_list2" id="my_ll_b">주문내역</span>
		<div class="moblie_list3">
		<span class="moblie_img"></span>
		</div>
		</a>
		<a class="moblie_list1" href="contactpage.store">
		<span class="moblie_list2" id="my_ll_b">1 : 1 문의</span>
		<div class="moblie_list3">
		<span class="moblie_img"></span>
		</div>
		</a>
		<a class="moblie_list1" href="pointlistpage.store">
		<span class="moblie_list2" id="my_ll_b">사용가능한 포인트</span>
		<div class="moblie_list3">
		<span class="moblie_list2" id="my_bb_b" style="font-size: 20px;">1,000&nbsp;P</span>
		<span class="moblie_img"></span>
		</div>
		</a>
	</div>
	<div class="desktop_list">
	<div class="order_list">
	<span class="order_list_t" id="my_bb_b">주문내역</span>
	<button class="order_list_b" id="my_ll_b" onclick="location.href='orderlistpage.store'">
	더보기
	</button>
	</div>
	<div class="order_content">
	<div class="order_content_e" id="my_ll_b">아직 주문하신 내역이 없어요</div>
	</div>
	<div>
		<div class="order_list">
		<span class="order_list_t" id="my_bb_b">1 : 1 문의</span>
		<button class="order_list_b" id="my_ll_b" onclick="location.href='contactpage.store'">더보기</button>
		</div>
		<div class="order_content">
		<div class="order_content_e" id="my_ll_b">아직 문의 하신 내용이 없어요</div>
		</div>
	</div>
	</div>
</body>
</html>