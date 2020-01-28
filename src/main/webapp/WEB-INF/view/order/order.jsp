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
</html>