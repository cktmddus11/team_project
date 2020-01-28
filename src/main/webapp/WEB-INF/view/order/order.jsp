<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ֹ� ������</title>
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
		<!-- �ֹ� ��ǰ -->
			<h3 class="select_item">
				<span>01</span> �ֹ���ǰ
			</h3>
			<div class="select_item_list" style="height: 243;">
				<div>
					<ul>
						<li class="select_item_list1">
							<div class="select_item_list1_img">
								<span class="img_span"> <img
									src="../images/product/ryan_license_plate.jpg"
									alt="�ǱԾ�������_��Ʋ���̾�" style="width: 100px;"></span>
								<div class="item_option">
									<strong class="item_name">�ǱԾ�������ȣ��_��Ʋ���̾�</strong>
									<p class="space_p"></p>
									<div class="item_option2">
										<span>15,000</span> <span>��</span>
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
							<strong class="total_price">��ǰ��</strong>
							<p class="total_price_1">
								<span>15,000��</span>
							</p>
						</li>
						<li class="total_info">
							<strong class="total_price">��ۺ�</strong>
							<p class="total_price_1">
								<span>����</span>
							</p>
						</li>
						<li class="total_info">
							<strong class="total_price">����</strong>
							<p class="total_price_1">
								<span>15,000��</span>
							</p>
						</li>
					</ul>
				</div>
			</div>
			<div class="address"></div>
			<!-- ����� -->
				<h3 class="select_item">
					<span>02</span> ����� ���� 
				</h3>
			<div class="recipient_info">
				<div>
					<!-- �ֹ����� ���� div ��� ���� -->
					<div class="recipient_info_1">
						<h4 class="recipient_1">�޴º�</h4>
						<div class="order_same_div1 order_same_div2">
							<label class="order_same_div1_label" for="sameBuyer">
								<span>�ֹ� ���� ����</span>
							</label>
							<div class="order_primary_1">
								<input type="checkbox" class="order_primary" 
									id="sameBuyer" name="sameBuyer">
								<label for="sameBuyer"></label>
							</div>
						</div>
					</div>
					<div class="order_info">
						<input class="order_info_list" placeholder="�̸�">
					</div>
					<div class="order_info">
						<input class="order_info_list" placeholder="��ȭ��ȣ">
					</div>
					<div class="order_info">
						<input class="order_info_list" placeholder="�̸���">
					</div>
					<div class="order_info">
						<input class="order_info_list" placeholder="�ּ�ã��">
					</div>
					<div class="order_info">
						<input class="order_info_list" placeholder="�������ּ�">
					</div>
					<textarea class="request" placeholder="��� ��û�޽����� �����ø� �����ּ���. (�ּ� �ۼ����� �ƴմϴ�.)"></textarea>
					<p class="max_length">50�� �̳��� �Է����ּ��� (0 / 50)</p>
				</div>
			</div>
			<!-- �����ϱ� -->
			<div class="pay">
				<div class="purchase"></div>
				<h3 class="select_item">
					<span>03</span> �����ϱ�
				</h3>
				<div class="topay">
					<div>
						<div class="topay_1">
							<button class="point_info" type="button">����Ʈ �ȳ�</button>
						<ul class="topay_space">
							<li class="pay_list_space pay_list_space_all">
								<strong class="pay_info_list">��ǰ��</strong>
							<div class="order_item_price_all order_item_price">
								<span>15,000��</span>
							</div>
							</li>
							<li class="pay_list_space pay_list_space_all">
								<strong class="pay_info_list">��ۺ�</strong>
							<div class="order_item_price_all">
								<span>����</span>
							</div>
							</li>
							<li class="pay_list_space pay_list_space_all">
								<strong class="point pay_info_list">����Ʈ
									<span class="point_op">(OP)</span>
								</strong>
								<div class="point_bank">
									<input type="tel" class="point_bank1" placeholder="0"
									style="align-text: right;">
								</div>
							</li>
							<li class="pay_list_space">
								<strong class="final_order_price pay_info_list">���� ���� �ݾ�</strong>
								<div class="final_order_price1 order_item_price_all">
									<span>15,000��</span>
								</div>
							</li>
						</ul>
						<!-- ���� ���� -->
						<div class="pay_method">
							<h4 class="recipient_1 pay_method_select">�������� ����</h4>
							<div class="pay_method1">
								<label id="pay_method_or_1 tab1" class="tab">
								<!-- pay_method_or_1 : ī�� -->
									<a href="javascript:disp_div('pay_method_or_1', 'tab1')">ī�弱��</a></label>
									<div id="pay_method_or_1">
										<div class="pay_select">
											<!-- <input type="button" id="bank" value="KB��������"> 
											<input type="button" id="bank" value="�ϳ�����"> -->
										</div>
									</div><br>
								<label id="pay_method_or_2 tab2" class="tab">
								<!-- pay_method_or_2 : ������ �Ա� -->
									<a href="javascript:disp_div('pay_method_or_2', 'tab2')">������ �Ա�</a></label>
									<div id="pay_method_or_2">
										<div class="pay_select">
											<div class="input_info">
												<span style="font-weight: bold;">�Ա�����</span>
											</div>
											<div class="all_bank_info">
												<div class="input_bank_info">
													<div class="bank_div">
														<span class="input_bank">�Ա�����</span> 
														<span class="bank_account">��������: 807-24-0257-128 [���Ͽ�]</span>
													</div>
												</div>
												<div class="input_bank_info">
													<div class="bank_div">
														<span class="input_bank">�Աݱݾ�</span> 
														<span class="bank_account"> 
															<input type="tel" placeholder="0" id="amount"><span> ��</span>
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
									<span class="payment_agree">��ǰ �ֹ� �� ������� ������ �����մϴ�.</span>
									<span class="musthave">[�ʼ�]</span>
								</label>
							</div>
							<div class="payment order_same_div2">
								<div class="check_payment">
									<input type="checkbox" id="ex_chk2" name="paymentchk">
									<label for="ex_chk2"></label>
								</div>
								<label class="check_payment1">
									<span class="payment_agree">�ֹ� ��ǰ�� ��ó���� ��������� Ȯ���Ͽ�����, ���ȯ�� ������ �����մϴ�</span>
									<span class="musthave">[�ʼ�]</span>
								</label>
							</div>
							<div class="payment order_same_div2">
								<div class="check_payment">
									<input type="checkbox" id="ex_chk3" name="paymentchk">
									<label for="ex_chk3"></label>
								</div>
								<label class="check_payment1">
									<span class="payment_agree">īī�������� ���� �̿����� �����մϴ�</span>
									<span class="musthave">[�ʼ�]</span>
								</label>
							</div>
							<div class="purchase_pay_btn_div">
								<button class="purchase_btn1 purchase_btn2" onclick="location.href='orderchk.store'">�����ϱ�</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>