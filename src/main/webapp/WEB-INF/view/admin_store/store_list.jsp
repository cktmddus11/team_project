<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]매장 관리</title>
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
			<span id="my_b_b">[관리자]매장 관리</span>
			<button class="admin_store_write" id="my_ll_w" 
			onclick="location.href='./store_write.store'">매장 등록</button>
			</div>
			
			<div class="admin_order_filter">
				<span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">총</span> <span class="admin_order_filter_count"
					id="my_ll_b">20</span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">건</span>
				</span>
			</div>
			<div class="admin_list_no">
				<!-- count > 0  -->
				<ul class="admin_list_no_ul">
					<li class="store_name" id="my_bb_b" style="font-size: 20px;">매장 이름</li>
					<li class="store_pic" id="my_bb_b" style="font-size: 20px;">매장 사진</li>
					<li class="store_tel" id="my_bb_b" style="font-size: 20px;">전화 번호</li>
					<li class="store_time" id="my_bb_b" style="font-size: 20px;">영업 시간</li>
					<li class="store_address" id="my_bb_b" style="font-size: 20px;">주소</li>
					<li class="store_mapchk" id="my_bb_b" style="font-size: 20px;">지도</li>
					<li class="store_manage" id="my_bb_b" style="font-size: 20px;">관리</li>
				</ul>
				<div class="order_list1">
					<a class="store_list" onclick="return false;"
						style="padding-left: 0; color: black; width: 16vw;"> <span
						class="order_list1_span">매장 이름</span> <span class="order_list1_num"
						id="my_ll_b">홍대 플래그십 스토어</span>
					</a>
					<hr class="moblie_line">
					<div class="store_list" style="width: 11vw;">
						 <img style="width: 10vw; height: auto;"
							  src="../images/storeinfo_store/W009_hongdae.jpg" alt="매장사진">

							<!-- <div class="order_list_content">
								<div>
									<div class="item_name" id="my_ll_b">02-6010-0104</div>
									<div class="price_quant" id="my_ll_b">
										매일 10:30 - 22:00
									</div>
								</div>
							</div> -->
					</div>
					<div class="store_list" style="text-align: center; width: 9vw;">
						<div class="order_list2_date" id="my_ll_b"
							style=" display: inline-block;">02-6010-0104</div>
					</div>
					<div class="store_list" style="text-align: center; width: 7vw;">
						<div class="order_list2_date" id="my_ll_b"
							style=" display: inline-block;">10:30-22:00</div>
					</div>
					<div class="store_list" style="text-align: center; width: 21vw;">
						<div class="order_list2_date" id="my_ll_b"
							style=" display: inline-block;">서울 마포구 양화로 162 (동교동 , 동교동 대아빌딩) 좋은사람들빌딩 1~3층</div>
					</div>
					<div class="store_list" style="text-align: center; width: 3vw;">
						<div class="order_list2_date" id="my_ll_w"
							style=" display: inline-block;">
							<button class="admin_store_update" style="padding-left: 0;" id="my_ll_w"
							onclick="location.href='https://www.google.com/maps/place/%EC%B9%B4%EC%B9%B4%EC%98%A4%ED%94%84%EB%A0%8C%EC%A6%88+%ED%99%8D%EB%8C%80%ED%94%8C%EB%9E%98%EA%B7%B8%EC%8B%AD%EC%8A%A4%ED%86%A0%EC%96%B4/@37.5564418,126.9216196,17z/data=!3m1!4b1!4m5!3m4!1s0x357c98c2e4a3edc7:0x140dd20564986561!8m2!3d37.5564418!4d126.9238083'">
							확인
							</button>
<!--https://www.google.com/maps/place/%EC%B9%B4%EC%B9%B4%EC%98%A4%ED%94%84%EB%A0%8C%EC%A6%88+%ED%99%8D%EB%8C%80%ED%94%8C%EB%9E%98%EA%B7%B8%EC%8B%AD%EC%8A%A4%ED%86%A0%EC%96%B4/@37.5564418,126.9216196,17z/data=!3m1!4b1!4m5!3m4!1s0x357c98c2e4a3edc7:0x140dd20564986561!8m2!3d37.5564418!4d126.9238083d-->							</div>
					</div>
					<div class="order_list4_2" style="text-align: center; width: 3vw;">
						<div class="order_list2_state" id="my_ll_b"
							style=" display: inline-block;">
							<button class="admin_store_update" id="my_ll_w" 
							onclick="location.href='./store_update.store'">수정</button>
							<br class="desktop_br">
							<br class="desktop_br">
							<button class="admin_store_update" id="my_ll_w" 
							onclick="location.href='./store_delete.store'">삭제</button>
							</div>
					</div>
				</div>
				<div class="order_list1">
					<a class="store_list" onclick="return false;"
						style="padding-left: 0; color: black; width: 16vw;"> <span
						class="order_list1_span">매장 이름</span> <span class="order_list1_num"
						id="my_ll_b">롯데프리미엄 아울렛 기흥점</span>
					</a>
					<hr class="moblie_line">
					<div class="store_list" style="width: 11vw;">
						 <img style="width: 10vw; height: auto;"
							  src="../images/storeinfo_store/W026_giheung.jpg" alt="매장사진">

							<!-- <div class="order_list_content">
								<div>
									<div class="item_name" id="my_ll_b">02-6010-0104</div>
									<div class="price_quant" id="my_ll_b">
										매일 10:30 - 22:00
									</div>
								</div>
							</div> -->
					</div>
					<div class="store_list" style="text-align: center; width: 9vw;">
						<div class="order_list2_date" id="my_ll_b"
							style=" display: inline-block;">031-8036-3180</div>
					</div>
					<div class="store_list" style="text-align: center; width: 7vw;">
						<div class="order_list2_date" id="my_ll_b"
							style=" display: inline-block;">11:00-20:30</div>
					</div>
					<div class="store_list" style="text-align: center; width: 21vw;">
						<div class="order_list2_date" id="my_ll_b"
							style=" display: inline-block;">경기도 용인시 기흥구 고매동 336 롯데 프리미엄 아울렛 1층 F344</div>
					</div>
					<div class="store_list" style="text-align: center; width: 3vw;">
						<div class="order_list2_date" id="my_ll_b"
							style=" display: inline-block;">
							<button class="admin_store_update" style="padding-left: 0;" id="my_ll_w"
							onclick="location.href='https://www.google.com/maps/place/%EB%A1%AF%EB%8D%B0%ED%94%84%EB%A6%AC%EB%AF%B8%EC%97%84%EC%95%84%EC%9A%B8%EB%A0%9B+%EA%B8%B0%ED%9D%A5%EC%A0%90/@37.2255625,127.1194988,17z/data=!3m1!4b1!4m5!3m4!1s0x357b456a52573f59:0xa0a059032811366f!8m2!3d37.2255625!4d127.1216875'">
							확인
							</button>
<!--https://www.google.com/maps/place/%EC%B9%B4%EC%B9%B4%EC%98%A4%ED%94%84%EB%A0%8C%EC%A6%88+%ED%99%8D%EB%8C%80%ED%94%8C%EB%9E%98%EA%B7%B8%EC%8B%AD%EC%8A%A4%ED%86%A0%EC%96%B4/@37.5564418,126.9216196,17z/data=!3m1!4b1!4m5!3m4!1s0x357c98c2e4a3edc7:0x140dd20564986561!8m2!3d37.5564418!4d126.9238083d-->							</div>
					</div>
					<div class="order_list4_2" style="text-align: center; width: 3vw;">
						<div class="order_list2_state" id="my_ll_b"
							style=" display: inline-block;">
							<button class="admin_store_update" id="my_ll_w" 
							onclick="location.href='./store_update.store'">수정</button>
							<br class="desktop_br">
							<br class="desktop_br">
							<button class="admin_store_update" id="my_ll_w" 
							onclick="location.href='./store_delete.store'">삭제</button>
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