<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					id="my_ll_b">3</span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">건</span>
				</span>
			</div>
			<div class="admin_list_no">
				<!-- count > 0  -->
				<ul class="admin_list_no_ul">
					<li class="notice_num" id="my_bb_b" style="font-size: 20px;">번호</li>
					<li class="notice_title" id="my_bb_b"
						style="font-size: 20px; width: 33vw; text-align: left;">제목</li>
					<li class="notice_date" id="my_bb_b" style="font-size: 20px;">작성일자</li>
					<li class="notice_manage" id="my_bb_b" style="font-size: 20px;">관리</li>
				</ul>
				<div class="order_list1" style="height: 70px;">
					<a class="store_list" onclick="return false;"
						style="padding-left: 0; color: black; width: 14vw;"> <span
						class="order_list1_span"></span> <span class="order_list1_num"
						id="my_ll_b" style="margin-left: 60px;">1</span>
					</a>
					<hr class="moblie_line">
					<div class="store_list" style="text-align: center;">
						<div class="order_list2_date" id="my_ll_b"
							style="display: inline-block; width: 40vw; text-align: left;">
							<a href="help_detail.store?select=notice">카카오프렌즈 상담톡 OPEN</a></div>
					</div>
					<div class="store_list"
						style="text-align: center; width: 14vw; margin-left: auto;">
						<div class="order_list2_date" id="my_ll_b"
							style="display: inline-block;">2020-01-16</div>
					</div>

					<div class="order_list4_2" style="text-align: center;">
						<div class="order_list2_state" id="my_ll_b"
							style="display: inline-block; padding-right: 15px;">
							<button class="admin_store_update" id="my_ll_w"
								onclick="location.href='./help_update.store?select=notice'">수정</button>

							<button class="admin_store_update" id="my_ll_w"
								onclick="location.href='./help_delete.store?select=notice'">삭제</button>
						</div>
					</div>
				</div>

				<div class="order_list1" style="height: 70px;">
					<a class="store_list" onclick="return false;"
						style="padding-left: 0; color: black; width: 14vw;"> <span
						class="order_list1_span"></span> <span class="order_list1_num"
						id="my_ll_b" style="margin-left: 60px;">2</span>
					</a>
					<hr class="moblie_line">
					<div class="store_list" style="text-align: center;">
						<div class="order_list2_date" id="my_ll_b"
							style="display: inline-block; width: 40vw; text-align: left;">2020년
							설 연휴 온라인스토어 배송 및 고객센터 휴무 안내</div>
					</div>
					<div class="store_list"
						style="text-align: center; width: 14vw; margin-left: auto;">
						<div class="order_list2_date" id="my_ll_b"
							style="display: inline-block;">2020-01-15</div>
					</div>

					<div class="order_list4_2" style="text-align: center;">
						<div class="order_list2_state" id="my_ll_b"
							style="display: inline-block; padding-right: 15px;">
							<button class="admin_store_update" id="my_ll_w"
								onclick="location.href='./help_update.store?select=notice">수정</button>

							<button class="admin_store_update" id="my_ll_w"
								onclick="location.href='./help_delete.store?select=notice'">삭제</button>
						</div>
					</div>
				</div>
				<div class="order_list1" style="height: 70px;">
					<a class="store_list" onclick="return false;"
						style="padding-left: 0; color: black; width: 14vw;"> <span
						class="order_list1_span"></span> <span class="order_list1_num"
						id="my_ll_b" style="margin-left: 60px;">3</span>
					</a>
					<hr class="moblie_line">
					<div class="store_list" style="text-align: center;">
						<div class="order_list2_date" id="my_ll_b"
							style="display: inline-block; width: 40vw; text-align: left;">재고실사로
							인한 배송일정 안내</div>
					</div>
					<div class="store_list"
						style="text-align: center; width: 14vw; margin-left: auto;">
						<div class="order_list2_date" id="my_ll_b"
							style="display: inline-block;">2019-12-24</div>
					</div>

					<div class="order_list4_2" style="text-align: center;">
						<div class="order_list2_state" id="my_ll_b"
							style="display: inline-block; padding-right: 15px;">
							<button class="admin_store_update" id="my_ll_w"
								onclick="location.href='./help_update.store?select=notice'">수정</button>

							<button class="admin_store_update" id="my_ll_w"
								onclick="location.href='./help_delete.store?select=notice'">삭제</button>
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
	
</body>
</html>