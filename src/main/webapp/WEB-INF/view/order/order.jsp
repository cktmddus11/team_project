<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 페이지</title>
<style type="text/css">
#ex_chk1{
	width: 25px;
	height: 25px;
}
#ex_chk2{
	width: 25px;
	height: 25px;
}
#ex_chk3{
	width: 25px;
	height: 25px;
}
.check_payment{
	position: relative;
    width: 100%;
    display: inline-block;
    width: 25px;
    height: 25px;
    margin-bottom: auto;
}
.check_payment input[name=paymentchk]{
	position: absolute;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
}

.check_payment input[name=paymentchk]+label{
	display: inline-block;
	position: relative;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
}

.check_payment input[name=paymentchk]:checked+label{
	background: url(../images/icons/check_icon_on.png);
	width: 25px;
	height: 25px;
	background-size: 25px 25px;
}

.check_payment input[name=paymentchk]+label{
	background: url(../images/icons/check_icon_off.png);
	width: 25px;
	height: 25px;
	background-size: 25px 25px;
}
</style>
</head>
<body>
<script type="text/javascript">
	$(document).ready(function(){
		$("#pay_method_or_1").hide();
		$("#pay_method_or_2").hide();
	});
	
	function disp_div(id, tab) {
		$("#pay_method_or_1").each(function() {
			$(this).hide();
		})
		$("#pay_method_or_2").each(function() {
			$(this).hide();
		})
		$("#" + id).show();
	}
</script>
	<div id="order_item_list">
		<form class="order_item_list_padding">
		<!-- 주문 상품 -->
			<h3 class="select_item">
				<span>01</span> 주문상품
			</h3>
			<div class="select_item_list" style="height: 243;">
				<div>
					<ul>
						<li class="select_item_list1">
							<div class="select_item_list1_img">
								<span class="img_span"> <img
									src="../images/product/ryan_license_plate.jpg"
									alt="피규어주차판_리틀라이언" style="width: 100px;"></span>
								<div class="item_option">
									<strong class="item_name">피규어주차번호판_리틀라이언</strong>
									<p class="space_p"></p>
									<div class="item_option2">
										<span>15,000</span> <span>원</span>
									</div>
								</div>
							</div>
							<button class="selc_del"></button>
							<div class="select_quantity_div">
								<label class="select_quantity_div_label">
									<select class="select_quantity" name="quantity[0]">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
									</select>
								</label>
							</div>
						</li>
					</ul>
					<ul class="listinfo_total_price">
						<li class="total_info">
							<strong class="total_price">상품가</strong>
							<p class="total_price_1">
								<span>15,000원</span>
							</p>
						</li>
						<li class="total_info">
							<strong class="total_price">배송비</strong>
							<p class="total_price_1">
								<span>무료</span>
							</p>
						</li>
						<li class="total_info">
							<strong class="total_price">총합</strong>
							<p class="total_price_1">
								<span>15,000원</span>
							</p>
						</li>
					</ul>
				</div>
			</div>
			<div class="address"></div>
			<!-- 배송지 -->
				<h3 class="select_item">
					<span>02</span> 배송지 정보 
				</h3>
			<div class="recipient_info">
				<div>
					<!-- 주문고객과 동일 div 잠시 생략 -->
					<div class="recipient_info_1">
						<h4 class="recipient_1">받는분</h4>
						<div class="order_same_div1 order_same_div2">
							<label class="order_same_div1_label" for="sameBuyer">
								<span>주문 고객과 동일</span>
							</label>
							<div class="order_primary_1">
								<input type="checkbox" class="order_primary" 
									id="sameBuyer" name="sameBuyer">
								<label for="sameBuyer"></label>
							</div>
						</div>
					</div>
					<div class="order_info">
						<input class="order_info_list" placeholder="이름">
					</div>
					<div class="order_info">
						<input class="order_info_list" placeholder="전화번호">
					</div>
					<div class="order_info">
						<input class="order_info_list" placeholder="이메일">
					</div>
					<div class="order_info">
						<input class="order_info_list" placeholder="주소찾기">
					</div>
					<div class="order_info">
						<input class="order_info_list" placeholder="나머지주소">
					</div>
					<textarea class="request" placeholder="배송 요청메시지가 있으시면 남겨주세요. (주소 작성란이 아닙니다.)"></textarea>
					<p class="max_length">50자 이내로 입력해주세요 (0 / 50)</p>
				</div>
			</div>
			<!-- 결제하기 -->
			<div class="pay">
				<div class="purchase"></div>
				<h3 class="select_item">
					<span>03</span> 결제하기
				</h3>
				<div class="topay">
					<div>
						<div class="topay_1">
							<button class="point_info" type="button">포인트 안내</button>
						<ul class="topay_space">
							<li class="pay_list_space pay_list_space_all">
								<strong class="pay_info_list">상품가</strong>
							<div class="order_item_price_all order_item_price">
								<span>15,000원</span>
							</div>
							</li>
							<li class="pay_list_space pay_list_space_all">
								<strong class="pay_info_list">배송비</strong>
							<div class="order_item_price_all">
								<span>무료</span>
							</div>
							</li>
							<li class="pay_list_space pay_list_space_all">
								<strong class="point pay_info_list">포인트
									<span class="point_op">(OP)</span>
								</strong>
								<div class="point_bank">
									<input type="tel" class="point_bank1" placeholder="0"
									style="align-text: right;">
								</div>
							</li>
							<li class="pay_list_space">
								<strong class="final_order_price pay_info_list">최종 결제 금액</strong>
								<div class="final_order_price1 order_item_price_all">
									<span>15,000원</span>
								</div>
							</li>
						</ul>
						<!-- 결제 수단 -->
						<div class="pay_method">
							<h4 class="recipient_1 pay_method_select">결제수단 선택</h4>
							<div class="pay_method1">
								<label id="pay_method_or_1 tab1" class="tab">
								<!-- pay_method_or_1 : 카드 -->
									<a href="javascript:disp_div('pay_method_or_1', 'tab1')">카드선택</a></label>
									<div id="pay_method_or_1">
										<div class="pay_select">
											<!-- <input type="button" id="bank" value="KB국민은행"> 
											<input type="button" id="bank" value="하나은행"> -->
										</div>
									</div><br>
								<label id="pay_method_or_2 tab2" class="tab">
								<!-- pay_method_or_2 : 무통장 입금 -->
									<a href="javascript:disp_div('pay_method_or_2', 'tab2')">무통장 입금</a></label>
									<div id="pay_method_or_2">
										<div class="pay_select">
											<div class="input_info">
												<span style="font-weight: bold;">입금정보</span>
											</div>
											<div class="all_bank_info">
												<div class="input_bank_info">
													<div class="bank_div">
														<span class="input_bank">입금은행</span> 
														<span class="bank_account">국민은행: 807-24-0257-128 [박하영]</span>
													</div>
												</div>
												<div class="input_bank_info">
													<div class="bank_div">
														<span class="input_bank">입금금액</span> 
														<span class="bank_account"> 
															<input type="tel" placeholder="0" id="amount"><span> 원</span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div><br>
								</div>
							</div>
							<div class="payment order_same_div2">
								<div class="check_payment">
									<input type="checkbox" id="ex_chk1" name="paymentchk">
									<label for="ex_chk1"></label>
								</div>
								<label class="check_payment1">
									<span class="payment_agree">상품 주문 및 배송정보 수집에 동의합니다.</span>
									<span class="musthave">[필수]</span>
								</label>
							</div>
							<div class="payment order_same_div2">
								<div class="check_payment">
									<input type="checkbox" id="ex_chk2" name="paymentchk">
									<label for="ex_chk2"></label>
								</div>
								<label class="check_payment1">
									<span class="payment_agree">주문 상품의 명시내용과 사용조건을 확인하였으며, 취소환불 규정에 동의합니다</span>
									<span class="musthave">[필수]</span>
								</label>
							</div>
							<div class="payment order_same_div2">
								<div class="check_payment">
									<input type="checkbox" id="ex_chk3" name="paymentchk">
									<label for="ex_chk3"></label>
								</div>
								<label class="check_payment1">
									<span class="payment_agree">카카오프렌즈 서비스 이용약관에 동의합니다</span>
									<span class="musthave">[필수]</span>
								</label>
							</div>
							<div class="purchase_pay_btn_div">
								<button class="purchase_btn1 purchase_btn2" onclick="location.href='orderchk.store'">결제하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 페이지</title>
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function openDaumZipAddress() {

		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
				// 예제를 참고하여 다양한 활용법을 확인해 보세요.
				jQuery("#address").val(data.roadAddress);
			}
		}).open();

	}
</script>
<style type="text/css">
#my_b_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
	color: white;
	font-size: 28px;
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

#ex_chk1 {
	width: 25px;
	height: 25px;
}

#ex_chk2 {
	width: 25px;
	height: 25px;
}

#ex_chk3 {
	width: 25px;
	height: 25px;
}

.check_payment {
	position: relative;
	width: 100%;
	display: inline-block;
	width: 25px;
	height: 25px;
	margin-bottom: auto;
}

.check_payment input[name=paymentchk] {
	position: absolute;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
}

.check_payment input[name=paymentchk]+label {
	display: inline-block;
	position: relative;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
}

.check_payment input[name=paymentchk]:checked+label {
	background: url(../images/icons/check_icon_on.png);
	width: 25px;
	height: 25px;
	background-size: 25px 25px;
}

.check_payment input[name=paymentchk]+label {
	background: url(../images/icons/check_icon_off.png);
	width: 25px;
	height: 25px;
	background-size: 25px 25px;
}

.order_continue_or_break {
	position: fixed;
	bottom: 0px;
	width: 100%;
	height: 17.3333vw;
	background-color: rgba(60, 64, 75, 0.95);
	text-align: center;
	display: flex;
	flex-direction: row;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
	z-index: 999999;
	transition: bottom 300ms ease 0s;
}

@media ( min-width : 769px) {
	.order_continue_or_break {
		padding-top: 120px;
		position: static;
		height: 60px;
		z-index: unset;
		background: unset;
	}
}

.purchase_chk {
	position: relative;
	margin: 0px;
	padding: 0px 0px 40px;
	border-bottom: 1px solid rgb(227, 229, 232);
}

.search {
	width: 100%;
	box-sizing: border-box;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 100;
	color: black;
	border-radius: 4px;
	font-size: 16px;
	background-color: white;
	background-size: 20px;
	background-image: url(../images/product/ico-header-search.png);
	background-position: 10px 15px;
	background-repeat: no-repeat;
	padding: 12px 20px 12px 40px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
	font-weight: 100;
	color: black;
}
</style>
</head>
<body>
	<div id="order_item_list">
		<form:form action="order.store" method="post"
			modelAttribute="orderlist" name="f">
			<!-- 비회원 -->
			<c:if test='${!empty sessionScope.CART}'>

				<!-- 주문 상품 -->
				<h3 class="select_item_chk" id="my_b_b">
					&nbsp;&nbsp;<span>01 주문 상품</span>
				</h3>
				<div class="select_item_list" style="height: 243;">
					<div style="margin-bottom: 40px;">
						<ul>
						<%-- <form:hidden path="orderitem" value="${sessionScope.CART.itemSetList}"/> --%>
							<c:forEach var="cart" items="${sessionScope.CART.itemSetList}"
								varStatus="stat">
								<input type="hidden" name="itemnum" value="${cart.item.itemnum}">
								<li class="select_item_list1">
									<div class="select_item_list1_img">
										<span class="img_span"> <img
											src="../images/product/${cart.item.itemfile1url}"
											alt="${cart.item.itemname}" style="width: 100px;"></span>
										<div class="item_option">
											<strong class="item_name">${cart.item.itemname}</strong>
											<p class="space_p"></p>
											<div class="item_option2" id="my_l_b">
												<span><fmt:formatNumber
														value="${cart.price * cart.quantity}" type="currency"
														currencySymbol="" /></span><span>원</span>
											</div>
										</div>
									</div>
									<div class="quantity_chk" id="my_l_b">
										<span>수량: </span> <span>${cart.quantity}개</span>
									</div> <c:set var="tot" value="${tot+(cart.quantity * cart.price)}" />
								</li>
							</c:forEach>
						</ul>
						<ul class="listinfo_total_price">
							<li class="total_info"><strong class="total_price"
								id="my_l_b">상품가</strong>
								<p class="total_price_1" id="my_l_b">
									<span><fmt:formatNumber value="${tot}" type="currency"
											currencySymbol="" />원</span>
								</p></li>
							<li class="total_info"><strong class="total_price"
								id="my_l_b">배송비</strong>
								<p class="total_price_1" id="my_l_b">
									<span>무료</span>
								</p></li>
							<li class="total_info"><strong class="total_price"
								id="my_l_b">총합</strong>
								<p class="total_price_1" id="my_l_b">
									<span><span><fmt:formatNumber value="${tot}"
												type="currency" currencySymbol="" />원</span>
								</p></li>
						</ul>
					</div>
				</div>
				<!-- 결제 정보 -->


				<!-- 배송지정보 -->
				<h3 class="select_item_chk" id="my_b_b">
					&nbsp;&nbsp;<span>02 배송지 정보</span>
				</h3>
				<div class="recipient_info_chk">
					<div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">
								이름</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="이름 입력" error="0" align="left" padding="15"
										path="username" value="" style="width: 100%;"/>
									<font color="red"><form:errors path="username" /></font>

								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">전화번호</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="번호 입력" error="0" align="left" padding="15"
										path="phonenum" value="" style="width: 100%;" />
									<font color="red"><form:errors path="phonenum" /></font>

								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">이메일
							</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="이메일" error="0" align="left" padding="15"
										path="userid" value="" style="width: 100%;"/>
									<font color="red"><form:errors path="userid" /></font>
								</div>
							</div>
						</div>

						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">주소찾기
							</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input
										class="input-text__CustomText-sc-14n8vry-1 search llGwgt"
										placeholder="도로명 주소" error="0" align="left" padding="15"
										path="address" value="" style="width: 100%;"
										onclick="openDaumZipAddress()" />
									<font color="red"><form:errors path="address" /></font>
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">나머지
								주소</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="나머지 주소" error="0" align="left" padding="15"
										path="restaddress" value="" style="width: 100%;" />
									<font color="red"><form:errors path="restaddress" cssClass="my_ll_r"
										element="div" /></font>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="paychk">
					<div class="purchase_chk"></div>
					<h3 class="select_item_chk" id="my_b_b">
						&nbsp;&nbsp;<span>03 결제 정보</span>
					</h3>
					<div>
						<div>
							<div class="topay_1">
								<ul class="topay_space">
									<li class="pay_list_space pay_list_space_all"><strong
										class="pay_info_list" id="my_l_b">상품가</strong>
										<div class="order_item_price_all order_item_price" id="my_l_b">
											<span><fmt:formatNumber value="${tot}" type="currency"
													currencySymbol="" />원</span>
										</div></li>
									<li class="pay_list_space pay_list_space_all"><strong
										class="pay_info_list" id="my_l_b">배송비</strong>
										<div class="order_item_price_all" id="my_l_b">
											<span>무료</span>
										</div></li>
									<li class="pay_list_space pay_list_space_all"><strong
										class="point pay_info_list" id="my_l_b">포인트 <span
											class="point_op" id="my_l_b">(OP)</span>
									</strong>
										<div class="point_bank" id="my_l_b">
											<span><form:input path="usepoint" value=""/></span>
										</div></li>
									<li class="pay_list_space"><strong
										class="final_order_price pay_info_list" id="my_l_b">최종
											결제 금액</strong>
										<div class="final_order_price1 order_item_price_all"
											id="my_bb_b">
											<span><fmt:formatNumber value="${tot}" type="currency"
													currencySymbol="" />원</span>
										</div></li>
								</ul>
							</div>
						</div>
					</div>
				</div>


			</c:if>
			${!empty orderitem ||empty sessionScope.CART}
			<c:if test='${!empty orderitem ||empty sessionScope.CART}'>
				<!--  회원 -->
				<!-- 주문 상품 -->
				<h3 class="select_item_chk" id="my_b_b">
					&nbsp;&nbsp;<span>01 주문 상품</span>
				</h3>
				<div class="select_item_list" style="height: 243;">
					<div style="margin-bottom: 40px;">
						<ul>
						<form:hidden path="orderitem" value="${orderitem}"/>
							<c:forEach var="orderitem" items="${orderitem}" varStatus="stat">
							<input type="hidden" name="itemnum" value="${orderitem.item.itemnum}">
								<li class="select_item_list1">
									<div class="select_item_list1_img">
										<span class="img_span"> <img
											src="../images/product/${orderitem.item.itemfile1url}"
											alt="${orderitem.item.itemname}" style="width: 100px;"></span>
										<div class="item_option">
											<strong class="item_name">${orderitem.item.itemname}</strong>
											<p class="space_p"></p>
											<div class="item_option2" id="my_l_b">
												<span><fmt:formatNumber
														value="${orderitem.price * orderitem.quantity}"
														type="currency" currencySymbol="" /></span><span>원</span>
											</div>
										</div>
									</div>
									<div class="quantity_chk" id="my_l_b">
										<span>수량: </span> <span>${orderitem.quantity}개</span>
									</div> <c:set var="tot"
										value="${tot+(orderitem.quantity * orderitem.price)}" />
								</li>
							</c:forEach>
						</ul>
						<%-- <form:hidden path="orderlist" value="${orderitem}"/> --%>
						<ul class="listinfo_total_price">
							<li class="total_info"><strong class="total_price"
								id="my_l_b">상품가</strong>
								<p class="total_price_1" id="my_l_b">
									<span><fmt:formatNumber value="${tot}" type="currency"
											currencySymbol="" />원</span>
								</p></li>
							<li class="total_info"><strong class="total_price"
								id="my_l_b">배송비</strong>
								<p class="total_price_1" id="my_l_b">
									<span>무료</span>
								</p></li>
							<li class="total_info"><strong class="total_price"
								id="my_l_b">총합</strong>
								<p class="total_price_1" id="my_l_b">
									<span><span><fmt:formatNumber value="${tot}"
												type="currency" currencySymbol="" />원</span>
								</p></li>
						</ul>
					</div>
				</div>
				<!-- 결제 정보 -->


				<!-- 배송지정보 -->
				<h3 class="select_item_chk" id="my_b_b">
					&nbsp;&nbsp;<span>02 배송지 정보</span>
				</h3>
				<div class="recipient_info_chk">
					<div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">
								이름</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="이름 입력"  align="left" padding="15"
										path="username" value="${sessionScope.loginUser.username}"
										style="width: 100%;" readonly="${!empty sessionScope.loginUser?'true':'false'}" />
									<font color="red"><form:errors path="username" /></font>
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">전화번호</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="번호 입력" error="0" align="left" padding="15"
										path="phonenum" value="" style="width: 100%;" />
									<font color="red"><form:errors path="phonenum" /></font>

								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">이메일
							</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="이메일" error="0" align="left" padding="15"
										path="userid" value="${sessionScope.loginUser.userid}"
										style="width: 100%;"   readonly="${!empty sessionScope.loginUser?'true':'false'}" />	
									<font color="red"><form:errors path="userid" /></font>
								</div>
							</div>
						</div>

						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">주소찾기
							</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input
										class="input-text__CustomText-sc-14n8vry-1 search  llGwgt"
										placeholder="도로명 주소" error="0" align="left" padding="15"
										path="address" value="" style="width: 100%;"
										onclick="openDaumZipAddress()" />
									<form:errors path="address" cssClass="my_ll_r" element="div" />
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">나머지
								주소</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="나머지 주소" error="0" align="left" padding="15"
										path="restaddress" value="" style="width: 100%;" />
									<form:errors path="restaddress" cssClass="my_ll_r"
										element="div" />
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="paychk">
					<div class="purchase_chk"></div>
					<h3 class="select_item_chk" id="my_b_b">
						&nbsp;&nbsp;<span>03 결제 정보</span>
					</h3>
					<div>
						<div>
							<div class="topay_1">
								<ul class="topay_space">
									<li class="pay_list_space pay_list_space_all"><strong
										class="pay_info_list" id="my_l_b">상품가</strong>
										<div class="order_item_price_all order_item_price" id="my_l_b">
											<span><fmt:formatNumber value="${tot}" type="currency"
													currencySymbol="" />원</span>
										</div></li>
									<li class="pay_list_space pay_list_space_all"><strong
										class="pay_info_list" id="my_l_b">배송비</strong>
										<div class="order_item_price_all" id="my_l_b">
											<span>무료</span>
										</div></li>
									<li class="pay_list_space pay_list_space_all"><strong
										class="point pay_info_list" id="my_l_b">포인트 <span
											class="point_op" id="my_l_b">(OP)</span>
									</strong>
									<%-- <form:hidden path="usepoint"  --%>
										<div class="point_bank" id="my_l_b">
											<span><fmt:formatNumber value="500" type="currency"
													currencySymbol="" /></span>
										</div></li>
									<li class="pay_list_space"><strong
										class="final_order_price pay_info_list" id="my_l_b">최종
											결제 금액</strong>
										<div class="final_order_price1 order_item_price_all"
											id="my_bb_b">
											<span><fmt:formatNumber value="${tot}" type="currency"
													currencySymbol="" />원</span>
										</div></li>
								</ul>
							</div>
						</div>
					</div>
				</div>



			</c:if>
			<div class="pay-methods__PaySelectWrap-sc-9x7kbv-0 gnUPDE">
				<h4
					class="pay-methods__SubTitlePayMethod-sc-9x7kbv-9 eXCEHT sub-title__SubTitle-sc-1kh702x-0 hEmcBO">결제수단
					선택</h4>
				<div class="pay-methods__PayLabelWrap-sc-9x7kbv-1 bTGpxc">
					<label
						class="pay-methods__LabelKakaopay-sc-9x7kbv-3 hGROIq pay-methods__PayLabel-sc-9x7kbv-2 fGXiOr"
						for="kakaopay">카카오페이<input id="kakaopay" type="radio"
						value="kakaopay" checked=""></label><label
						class="pay-methods__LabelCard-sc-9x7kbv-4 gmaalp pay-methods__PayLabel-sc-9x7kbv-2 fGXiOr"
						for="bankbook">무통장 입금<input id="bankbook" type="radio"
						value="bankbook"></label>

					<script>
						$(function(){
							$("#selectpay").val(1)
						})
						$("#kakaopay").click(function() {
							$("#selectpay").val(1)
						})
						$("#bankbook").click(function() {
							$("#selectpay").val(2)
						})
					</script>
					<form:hidden path="selectpay" value="" />
				
				</div>
				<p
					class="pay-methods__KakaopayHelp-sc-9x7kbv-7 jxRlNC pay-methods__Help-sc-9x7kbv-6 zEfhD">
					<strong>카카오페이</strong>로 간편하고 안전하게 결제!
				</p>

				<p
					class="pay-methods__CreditcardHelp-sc-9x7kbv-8 eQJwuJ pay-methods__Help-sc-9x7kbv-6 zEfhD">
					무통장으로 결제!</p>
					
				<div id="pay_method_or_2" style="margin-top : 20px">
										<div class="pay_select">
											<div class="input_info">
												<span style="font-weight: bold;">입금정보</span>
											</div>
											<div class="all_bank_info">
												<div class="input_bank_info">
													<div class="bank_div">
														<span class="input_bank">입금은행</span> 
														<span class="bank_account">국민은행: 807-24-0257-128 [박하영]</span>
													</div>
												</div>
												<div class="input_bank_info">
													<div class="bank_div">
														<span class="input_bank">입금자명</span> 
														<span class="bank_account"> 
															<form:input placeholder="입금자명 입력하세요" path="payname"/><span></span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div><br>	
			</div>
			
			<div class="purchase__PayButtonWrap-n1s40m-4 gpTPcQ">
				<button
					class="purchase__PayButton-n1s40m-0 gnuFcY button__Button-sc-1knyx3t-0 fjMMAF"
					type="button" onclick="javascript:document.f.submit();">
					결제하기
					<div id="paypal-container"
						class="purchase__PaypalContainer-n1s40m-2 cOvGPB"></div>
				</button>
			</div>
		</form:form>
	</div>
	<script>
		$(function() {
			$(".pay-methods__CreditcardHelp-sc-9x7kbv-8").hide()
			$("#pay_method_or_2").hide()
		})
		$(".pay-methods__LabelKakaopay-sc-9x7kbv-3").click(function() { // 카카오페이
			$(this).removeClass("dvFqbk")
			$(".pay-methods__LabelCard-sc-9x7kbv-4").removeClass("cDurlB")
			$(this).addClass("hGROIq")
			$(".pay-methods__LabelCard-sc-9x7kbv-4").addClass("gmaalp")
			$(".pay-methods__KakaopayHelp-sc-9x7kbv-7").show()
			$(".pay-methods__CreditcardHelp-sc-9x7kbv-8").hide()
			$("#pay_method_or_2").hide()

		})
		$(".pay-methods__LabelCard-sc-9x7kbv-4").click(function() { // 무통장
			$(this).removeClass("gmaalp")
			$(".pay-methods__LabelKakaopay-sc-9x7kbv-3").removeClass("hGROIq")
			$(".pay-methods__LabelKakaopay-sc-9x7kbv-3").addClass("dvFqbk")
			$(this).addClass("cDurlB")

			$(".pay-methods__KakaopayHelp-sc-9x7kbv-7").hide()
			$(".pay-methods__CreditcardHelp-sc-9x7kbv-8").show()
			$("#pay_method_or_2").show()

		})
	</script>
</body>
>>>>>>> branch 'master' of https://github.com/cktmddus11/team_project.git
</html>