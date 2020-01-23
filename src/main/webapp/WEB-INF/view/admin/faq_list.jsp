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
				<span id="my_b_b">[관리자]고객센터 관리-FAQ 목록</span>
				<button class="admin_store_write" id="my_ll_w"
					onclick="location.href='./help_write.store?select=faq'">FAQ 등록</button>
			</div>

			<div class="admin_order_filter">
				<span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">총</span> <span class="admin_order_filter_count"
					id="my_ll_b">3</span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">건</span>
				</span>
				<div class="admin_order_filter_select" style="padding-right: 230px;">
					<div class="admin_order_filter_box">
						<div class="dropdown"
							style="width: 230px; height: 40px; margin-bottom: 10px;">
							<div class="select">
								<span id="my_ll_b">전체</span> <i class="fa fa-chevron-up"></i>
							</div>
							<input type="hidden" name="filter_box_one"> <input
								type="hidden" name="order">
							<ul class="dropdown-menu ">
								<li><a class="my_ll_b" id="전체">전체</a></li>
								<li><a class="my_ll_b" id="배송">배송</a></li>
								<li><a class="my_ll_b" id="교화/반품/환불">교환/반품/환불</a></li>
								<li><a class="my_ll_b" id="기타">기타</a></li>
								<li><a class="my_ll_b" id="상품">상품</a></li>
								<li><a class="my_ll_b" id="주문결제">주문결제</a></li>
								<li><a class="my_ll_b" id="취소/반품/교환">취소/반품/교환</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="admin_list_no">
				<!-- count > 0  -->
				<ul class="admin_list_no_ul">
					<li class="notice_num" id="my_bb_b" style="font-size: 20px;">번호</li>
					<li class="notice_title" id="my_bb_b"
						style="font-size: 20px; width: 40vw; text-align: left;">제목</li>
					<li class="notice_date" id="my_bb_b" style="font-size: 20px;padding-right: 80px;">항목</li>
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
							<a href="help_detail.store?select=faq">카카오톡에서
							캐시 삭제는 어떻게 하나요?</a></div>
					</div>
					<div class="store_list"
						style="text-align: center; width: 14vw; margin-left: auto;">
						<div class="order_list2_date" id="my_ll_b"
							style="display: inline-block;">기타</div>
					</div>

					<div class="order_list4_2" style="text-align: center;">
						<div class="order_list2_state" id="my_ll_b"
							style="display: inline-block;">
							<button class="admin_store_update" id="my_ll_w"
								onclick="location.href='./help_update.store?select=faq'">수정</button>

							<button class="admin_store_update" id="my_ll_w"
								onclick="location.href='./help_delete.store?select=faq'">삭제</button>
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
							style="display: inline-block; width: 40vw; text-align: left;">
							회원정보를 수정하고 싶어요</div>
					</div>
					<div class="store_list"
						style="text-align: center; width: 14vw; margin-left: auto;">
						<div class="order_list2_date" id="my_ll_b"
							style="display: inline-block;">회원</div>
					</div>

					<div class="order_list4_2" style="text-align: center;">
						<div class="order_list2_state" id="my_ll_b"
							style="display: inline-block;">
							<button class="admin_store_update" id="my_ll_w"
								onclick="location.href='./help_update.store?select=faq'">수정</button>

							<button class="admin_store_update" id="my_ll_w"
								onclick="location.href='./help_delete.store?select=faq'">삭제</button>
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
							style="display: inline-block; width: 40vw; text-align: left;">회원에게는
							어떤 혜택이 있나요?</div>
					</div>
					<div class="store_list"
						style="text-align: center; width: 14vw; margin-left: auto;">
						<div class="order_list2_date" id="my_ll_b"
							style="display: inline-block;">회원</div>
					</div>

					<div class="order_list4_2" style="text-align: center;">
						<div class="order_list2_state" id="my_ll_b"
							style="display: inline-block;">
							<button class="admin_store_update" id="my_ll_w"
								onclick="location.href='./help_update.store?select=faq'">수정</button>

							<button class="admin_store_update" id="my_ll_w"
								onclick="location.href='./help_delete.store?select=faq'">삭제</button>
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