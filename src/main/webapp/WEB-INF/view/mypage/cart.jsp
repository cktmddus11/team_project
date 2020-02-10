<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Àå¹Ù±¸´Ï</title>
<style type="text/css">
.empty_basket { /* Àå¹Ù±¸´Ï¿¡ »óÇ°ÀÌ ¾øÀ» ¶§ */
	height: 300px;
	padding: 0px;
	background: rgb(255, 255, 255);
	border-top: 1px solid rgb(227, 229, 232);
	border-bottom: 1px solid rgb(227, 229, 232);
}

.empty_basket_msg { /* Àå¹Ù±¸´Ï¿¡ »óÇ°ÀÌ ¾øÀ»¶§ ¶ß´Â ¸Ş¼¼Áö div */
	width: 258px;
	height: 44px;
	font-size: 15px;
	line-height: 1.47;
	letter-spacing: -0.19px;
	padding-top: 80px;
	padding-bottom: 25px;
	color: rgb(154, 154, 158);
	margin: 0px auto;
	padding-bottom: 80px;
	text-align: center;
}

.pop_list_link {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	width: 9.5vw;
	height: 2.5vw;
	background-color: rgb(60, 64, 75);
	margin: auto;
	border-radius: 4px;
	color: #fff;
}

.pop_link {
	width: 100px;
	height: 16px;
	font-size: 12px;
	line-height: normal;
	text-align: center;
	letter-spacing: -0.2px;
	margin: 0px;
	color: #fff;
}
/* .del_btn{
	width: 15px;
	height: 15px;
} */
input.sel_delete {
	background: url("../images/icons/delete.png" ) no-repeat;
	border: none;
	max-width: 100%;
	height: auto;
	cursor: pointer;
}
</style>
<script type="text/javascript">
	function allchkbox(allchk) {
		$("input[name=itemchks]").prop("checked", allchk.checked)
	}
</script>
</head>
<body>
	<div id="kakaoWrap">
		<div class="cart_log">Àå¹Ù±¸´Ï</div>
		<div class="check_all">
			<div class="checks"> 
				<input type="checkbox" id="ex_chk" name="allchk" onchange="allchkbox(this)"> 
				<label for="ex_chk" style="margin-bottom: 20px;">ÀüÃ¼</label> 
			</div>
			<div class="checks_delete">
				<span class="selects">1°³ ¼±ÅÃ&nbsp;</span>
				<button type="button" class="delete_btn"></button>
			</div>
		</div>
		<div>
			<div class="admin_list_no">
				<ul class="admin_list_no_ul">
					<li class="order_num" id="my_bb_b" style="font-size: 15px;">»óÇ°¸í</li>
					<li class="item_num" id="my_bb_b" style="font-size: 15px;">¿É¼Ç</li>
					<li class="order_date" id="my_bb_b" style="font-size: 15px;">¼ö·®</li>
					<li class="order_state" id="my_bb_b" style="font-size: 15px;">»óÇ°±İ¾×</li>
				</ul>
				<div class="order_list1">
					<div class="order_list3">
						<div class="order_list3_item">
							<div class="checks"> 
								<input type="checkbox" id="ex_chk1" name="itemchks">
								<label for="ex_chk1"></label>
							</div>
							<a class="order_list3_img"> 
								<span><img
									style="width: 100%; height: auto;"
									src="../images/product/20191224172856717_8809681705172_8809681705196_AW_00.jpg"
									alt="»óÇ°¸í"> </span>
							</a>
							<div class="order_list_content">
								<div>
									<div class="item_name" id="my_ll_b">(IX/XS)Ä¡Áî ÇÇ±Ô¾î ÄÉÀÌ½º ¾îÇÇÄ¡</div>
								</div>
							</div>
						</div>
					</div>
					<div class="option_select"
						style="padding-top: 50px; padding-left: 30px;">
						<select style="width: 150px;">
							<option>(IX/XS)Ä¡Áî ÇÇ±Ô¾î ÄÉÀÌ½º ¾îÇÇÄ¡</option>
							<option>(I11Pro)Ä¡Áî ÇÇ±Ô¾î ÄÉÀÌ½º ¾îÇÇÄ¡</option>
							<option>(I11ProMax)Ä¡Áî ÇÇ±Ô¾î ÄÉÀÌ½º ¾îÇÇÄ¡</option>
						</select>
					</div>
					<hr class="moblie_line">
					<div class="order_list4_1"
						style="text-align: center; padding-right: 50px; padding-left: 40px;">
						<div>
							<select
								style="width: 100px; height: 40px; border-radius: 4.5px; font-size: 18px;">
								<option value="1" style="font-size: 13pt;">1</option>
								<option value="2" style="font-size: 13pt;">2</option>
								<option value="3" style="font-size: 13pt;">3</option>
								<option value="4" style="font-size: 13pt;">4</option>
							</select>
						</div>
					</div>
					<div class="order_list4_2">
						<div class="item_price">
						<!--  style="padding-right: 30px;" -->
							<span>23,000 ¿ø</span>
							<span><input type="button" class="sel_delete"></span>
						</div>
					</div>
				</div>
				<div class="order_list1">
					<div class="order_list3">
						<div class="order_list3_item">
							<div class="checks"> 
								<input type="checkbox" id="ex_chk1" name="itemchks">
								<label for="ex_chk1"></label>
							</div>
							<a class="order_list3_img"> 
								<span><img
									style="width: 100%; height: auto;"
									src="../images/product/20191224172856717_8809681705172_8809681705196_AW_00.jpg"
									alt="»óÇ°¸í"> </span>
							</a>
							<div class="order_list_content">
								<div>
									<div class="item_name" id="my_ll_b">(IX/XS)Ä¡Áî ÇÇ±Ô¾î ÄÉÀÌ½º ¾îÇÇÄ¡</div>
								</div>
							</div>
						</div>
					</div>
					<div class="option_select"
						style="padding-top: 50px; padding-left: 30px;">
						<select style="width: 150px;">
							<option>(IX/XS)Ä¡Áî ÇÇ±Ô¾î ÄÉÀÌ½º ¾îÇÇÄ¡</option>
							<option>(I11Pro)Ä¡Áî ÇÇ±Ô¾î ÄÉÀÌ½º ¾îÇÇÄ¡</option>
							<option>(I11ProMax)Ä¡Áî ÇÇ±Ô¾î ÄÉÀÌ½º ¾îÇÇÄ¡</option>
						</select>
					</div>
					<hr class="moblie_line">
					<div class="order_list4_1"
						style="text-align: center; padding-right: 50px; padding-left: 40px;">
						<div>
							<select
								style="width: 100px; height: 40px; border-radius: 4.5px; font-size: 18px;">
								<option value="1" style="font-size: 13pt;">1</option>
								<option value="2" style="font-size: 13pt;">2</option>
								<option value="3" style="font-size: 13pt;">3</option>
								<option value="4" style="font-size: 13pt;">4</option>
							</select>
						</div>
					</div>
					<div class="order_list4_2">
						<div class="item_price">
						<!--  style="padding-right: 30px;" -->
							<span>23,000 ¿ø</span>
							<span><input type="button" class="sel_delete"></span>
						</div>
					</div>
				</div>
				<div class="count">
					<div class="count_block">
						<span class="all_order_price"
							style="padding-left: 500px; padding-top: 18px;">ÃÑ ÁÖ¹® ±İ¾×</span> <span
							class="price" style="padding-top: 12px; padding-right: 15px;">18,000
							¿ø</span>
					</div>
					<div class="count_block">
						<span class="all_order_price_plus"
							style="padding-left: 500px; padding-top: 18px;">¹è¼Ûºñ</span> <span
							class="shipping_fee"
							style="padding-top: 12px; padding-right: 15px;">3,000 ¿ø</span>
					</div>
					<div class="count_block">
						<span class="all_payment_price"
							style="padding-left: 500px; padding-top: 18px;">ÃÑ °áÁ¦ ±İ¾×</span> <span
							class="all_count_price"
							style="padding-top: 12px; padding-right: 15px;">21,000 ¿ø</span>
					</div>
				</div>
			</div>
		</div>
		<div class="laCToX" style="margin: auto;">
			<input type="button" value="ÁÖ¹®ÇÏ±â" id="order" style="margin: auto;">
		</div>
	</div>
	<br><br>
	<div class="empty_basket">
		<div class="empty_basket_msg">
			¾ÆÁ÷ °ü½É »óÇ°ÀÌ ¾ø³×¿ä!
			<br>
			±Í¿©¿î ÇÁ·»Áî »óÇ°À» ÃßÃµµå¸±°Ô¿ä
			<br><br>
		</div> 
			<a class="pop_list_link" href="#">
				<span class="pop_link">ÀÎ±â »óÇ° º¸±â</span>
			</a>
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
<title>ì¥ë°”êµ¬ë‹ˆ</title>
<style type="text/css">
.empty_basket { /* ì¥ë°”êµ¬ë‹ˆì— ìƒí’ˆì´ ì—†ì„ ë•Œ */
	height: 300px;
	padding: 0px;
	background: rgb(255, 255, 255);
	border-top: 1px solid rgb(227, 229, 232);
	border-bottom: 1px solid rgb(227, 229, 232);
}

.empty_basket_msg { /* ì¥ë°”êµ¬ë‹ˆì— ìƒí’ˆì´ ì—†ì„ë•Œ ëœ¨ëŠ” ë©”ì„¸ì§€ div */
	width: 258px;
	height: 44px;
	font-size: 15px;
	line-height: 1.47;
	letter-spacing: -0.19px;
	padding-top: 80px;
	padding-bottom: 25px;
	color: rgb(154, 154, 158);
	margin: 0px auto;
	padding-bottom: 80px;
	text-align: center;
}

.pop_list_link {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	width: 9.5vw;
	height: 2.5vw;
	background-color: rgb(60, 64, 75);
	margin: auto;
	border-radius: 4px;
	color: #fff;
}

.pop_link {
	width: 100px;
	height: 16px;
	font-size: 12px;
	line-height: normal;
	text-align: center;
	letter-spacing: -0.2px;
	margin: 0px;
	color: #fff;
}
/* .del_btn{
	width: 15px;
	height: 15px;
} */
input.sel_delete {
	background: url("../images/icons/delete.png" ) no-repeat;
	border: none;
	max-width: 100%;
	height: auto;
	cursor: pointer;
}

#ex_chk + label {
	display: block;
	width: 25px;
    height: 25px;
	text-indent: -9999em;
	font-size: 1px;
	background-image: url(../images/icons/check_icon_off.png);
	background-position: center;
	background-repeat: no-repeat;
	background-position:center center/57%;
	border-radius: 3px;
	outline: none;
}

@media ( min-width : 769px) {
	#ex_chk + label {
		background-size: 100%;
	}
}

#ex_chk:checked+label{
	background: url(../images/icons/check_icon_on.png);
	width: 25px;
	height: 25px;
	background-size: 25px 25px;
}
.bHdxYH {
    width: 4.93333vw;
    height: 4.93333vw;
    text-indent: -999em;
    font-size: 1px;
    background: url(../images/product/btn_remove.png) center center / 3.73333vw no-repeat;
}
.BTcrB {
    display: flex;
    -webkit-box-pack: justify;
    justify-content: space-between;
    -webkit-box-align: center;
    align-items: center;
    padding-bottom: 1.73333vw;
}
@media (min-width: 769px){
.bHdxYH {
   position: relative;
    width: 13px;
    height: 13px;
    background-size: 13px;
    top: 43%;
    transform: translateY(-70%);
    right: 0px;
    left: 658px;
}
.BTcrB {
    width: 304px;
    padding: 0px;
}
}


</style>
<script type="text/javascript">
	function allchkbox(allchk) {
		$("input[name=itemchks]").prop("checked", allchk.checked)
	}
</script>
</head>
<body>
<div id="kakaoWrap">
		<div class="cart_log">ì¥ë°”êµ¬ë‹ˆ</div>
	
	<c:if test="${(!empty cart && (fn:length(cart.itemSetList)!=0)) || !empty cartdb}">
	<c:if test="${empty cartdb && fn:length(cart.itemSetList) > 0}">
		<div class="check_all">
			<div class="checks"> 
				<input type="checkbox" id="ex_chk" name="allchk" onchange="allchkbox(this)"
				checked> 
				<label for="ex_chk" style="margin-bottom: 20px;">ì „ì²´</label> 
			</div>
			<div class="checks_delete">
				<span class="selects">1ê°œ ì„ íƒ&nbsp;</span>
				<button type="button" class="delete_btn"></button>
			</div>
		</div>
		<div>
			<div class="admin_list_no">
				<ul class="admin_list_no_ul">
					<li class="order_num" id="my_bb_b" style="font-size: 15px;">ìƒí’ˆëª…</li>
					<li class="item_num" id="my_bb_b" style="font-size: 15px;">ì˜µì…˜</li>
					<li class="order_date" id="my_bb_b" style="font-size: 15px;">ìˆ˜ëŸ‰</li>
					<li class="order_state" id="my_bb_b" style="font-size: 15px;">ìƒí’ˆê¸ˆì•¡</li>
				</ul>
				<c:forEach var="cart" items="${cart.itemSetList}" varStatus="stat">
				<div class="order_list1">
					<div class="order_list3">
						<div class="order_list3_item">
							<div class="checks"> 
								<input type="checkbox" id="ex_chk1" name="itemchks" checked>
								<label for="ex_chk1"></label>
							</div>
							<a class="order_list3_img"> 
								<span onclick="location.href='../item/product_detail.store?no=${cart.item.itemnum}'"><img
									style="width: 100%; height: auto;"
									src="../images/product/${cart.item.itemfile1url}"
									alt="ìƒí’ˆëª…"> </span>
							</a>
							<div class="order_list_content">
								<div class="BTcrB">
									<div class="item_name" id="my_ll_b">${cart.item.itemname}</div>
									<button class="basket-item__RemoveButton-sc-1bhrte-7 bHdxYH" onclick="clickdelete(${cart.item.itemnum}, '${cart.item.itemname}', ${stat.index})"></button>
									<input type="hidden" name="itemnum" value="${cart.item.itemnum}">
								</div>
							</div>
						</div>
					</div>
					<div class="option_select"
						style="padding-top: 50px; padding-left: 30px;">
						<!-- <select style="width: 150px;">
							<option>(IX/XS)ì¹˜ì¦ˆ í”¼ê·œì–´ ì¼€ì´ìŠ¤ ì–´í”¼ì¹˜</option>
							<option>(I11Pro)ì¹˜ì¦ˆ í”¼ê·œì–´ ì¼€ì´ìŠ¤ ì–´í”¼ì¹˜</option>
							<option>(I11ProMax)ì¹˜ì¦ˆ í”¼ê·œì–´ ì¼€ì´ìŠ¤ ì–´í”¼ì¹˜</option>
						</select> -->
					</div>
					<hr class="moblie_line">
					<div class="order_list4_1"
						style="text-align: center; padding-right: 50px; padding-left: 40px;">
						<div>
							<input type="number" value="${cart.quantity}" style="border-bottom: 1px #000 solid;width: 115px; text-align: -webkit-center;">
						</div>
					</div>
					<div class="order_list4_2">
						<div class="item_price">
						<!--  style="padding-right: 30px;" -->
							<span><fmt:formatNumber value="${cart.price}" type="currency" currencySymbol="" /></span><span>ì›</span>
							<%-- <span><input type="button" class="sel_delete" id="sel_delete${stat.index}"></span> --%>
						</div>
					</div>
				</div>
				<c:set var="tot" value="${tot+(cart.quantity * cart.price)}"/>
				</c:forEach>
				
				<div class="count" style="color : #000;">
					<div class="count_block">
						<span class="all_order_price"
							style="padding-left: 500px; padding-top: 18px;">ì´ ì£¼ë¬¸ ê¸ˆì•¡</span> <span
							class="price" style="padding-top: 12px; padding-right: 15px;">
							<fmt:formatNumber value="${tot}" type="currency" currencySymbol="" />
							ì›</span>
					</div>
					<div class="count_block">
						<span class="all_order_price_plus"
							style="padding-left: 500px; padding-top: 18px;">ë°°ì†¡ë¹„</span> <span
							class="shipping_fee"
							style="padding-top: 12px; padding-right: 15px;">ë¬´ë£Œ</span>
					</div>
					<div class="count_block">
						<span class="all_payment_price"
							style="padding-left: 500px; padding-top: 18px;">ì´ ê²°ì œ ê¸ˆì•¡</span> 
							<span class="all_count_price"
							style="padding-top: 12px; padding-right: 15px;">
							<fmt:formatNumber value="${tot}" type="currency" currencySymbol="" />ì›
							</span>
							
					</div>
				</div>
			</div>
		</div>
		</c:if>
		<c:if test="${empty cart}"> <!--  íšŒì› ì¥ë°”êµ¬ë‹ˆ -->
		<div class="check_all">
			<div class="checks"> 
				<input type="checkbox" id="ex_chk" name="allchk" onchange="allchkbox(this)"> 
				<label for="ex_chk" style="margin-bottom: 20px;">ì „ì²´</label> 
			</div>
			<div class="checks_delete">
				<span class="selects">1ê°œ ì„ íƒ&nbsp;</span>
				<button type="button" class="delete_btn"></button>
			</div>
		</div>
		<div>
			<div class="admin_list_no">
				<ul class="admin_list_no_ul">
					<li class="order_num" id="my_bb_b" style="font-size: 15px;">ìƒí’ˆëª…</li>
					<li class="item_num" id="my_bb_b" style="font-size: 15px;">ì˜µì…˜</li>
					<li class="order_date" id="my_bb_b" style="font-size: 15px;">ìˆ˜ëŸ‰</li>
					<li class="order_state" id="my_bb_b" style="font-size: 15px;">ìƒí’ˆê¸ˆì•¡</li>
				</ul>
				<c:forEach var="cart" items="${cartdb}" varStatus="stat">
				<div class="order_list1">
					<div class="order_list3">
						<div class="order_list3_item">
							<div class="checks"> 
								<input type="checkbox" id="ex_chk1" name="itemchks">
								<label for="ex_chk1"></label>
							</div>
							<a class="order_list3_img"> 
								<span onclick="location.href='../item/product_detail.store?no=${cart.item.itemnum}'"><img
									style="width: 100%; height: auto;"
									src="../images/product/${cart.item.itemfile1url}"
									alt="ìƒí’ˆëª…"> </span>
							</a>
							<div class="order_list_content">
								<div class="BTcrB">
									<div class="item_name" id="my_ll_b">${cart.item.itemname}</div>
									<button class="basket-item__RemoveButton-sc-1bhrte-7 bHdxYH" onclick="clickdelete(${cart.item.itemnum}, '${cart.item.itemname}', 0)"></button>
									<input type="hidden" name="itemnum" value="${cart.item.itemnum}">
								</div>
							</div>
						</div>
					</div>
					<div class="option_select"
						style="padding-top: 50px; padding-left: 30px;">
						<!-- <select style="width: 150px;">
							<option>(IX/XS)ì¹˜ì¦ˆ í”¼ê·œì–´ ì¼€ì´ìŠ¤ ì–´í”¼ì¹˜</option>
							<option>(I11Pro)ì¹˜ì¦ˆ í”¼ê·œì–´ ì¼€ì´ìŠ¤ ì–´í”¼ì¹˜</option>
							<option>(I11ProMax)ì¹˜ì¦ˆ í”¼ê·œì–´ ì¼€ì´ìŠ¤ ì–´í”¼ì¹˜</option>
						</select> -->
					</div>
					<hr class="moblie_line">
					<div class="order_list4_1"
						style="text-align: center; padding-right: 50px; padding-left: 40px;">
						<div>
							<input type="number" value="${cart.quantity}" style="border-bottom: 1px #000 solid;width: 115px; text-align: -webkit-center;">
						</div>
					</div>
					<div class="order_list4_2">
						<div class="item_price">
						<!--  style="padding-right: 30px;" -->
							<span><fmt:formatNumber value="${cart.price}" type="currency" currencySymbol="" /></span><span>ì›</span>
							<%-- <span><input type="button" class="sel_delete" id="sel_delete${stat.index}"></span> --%>
								
						</div>
					</div>
				</div>
				<c:set var="tot" value="${tot+(cart.quantity * cart.price)}"/>
				</c:forEach>
				
				<div class="count" style="color : #000;">
					<div class="count_block">
						<span class="all_order_price"
							style="padding-left: 500px; padding-top: 18px;">ì´ ì£¼ë¬¸ ê¸ˆì•¡</span> <span
							class="price" style="padding-top: 12px; padding-right: 15px;">
							<fmt:formatNumber value="${tot}" type="currency" currencySymbol="" />
							ì›</span>
					</div>
					<div class="count_block">
						<span class="all_order_price_plus"
							style="padding-left: 500px; padding-top: 18px;">ë°°ì†¡ë¹„</span> <span
							class="shipping_fee"
							style="padding-top: 12px; padding-right: 15px;">ë¬´ë£Œ</span>
					</div>
					<div class="count_block">
						<span class="all_payment_price"
							style="padding-left: 500px; padding-top: 18px;">ì´ ê²°ì œ ê¸ˆì•¡</span> 
							<span class="all_count_price"
							style="padding-top: 12px; padding-right: 15px;">
							<fmt:formatNumber value="${tot}" type="currency" currencySymbol="" />ì›
							</span>
							
					</div>
				</div>
			</div>
		</div>
		</c:if>
		<div class="laCToX" style="margin: auto;">
			<input type="button" value="ì£¼ë¬¸í•˜ê¸°" id="order" style="margin: auto;" onclick="location.href='../order/order.store'">
		</div>
		
		</c:if>
	</div>

	<br><br>
	
	<c:if test="${(empty cart || fn:length(cart.itemSetList) == 0) && empty cartdb}">
	<div class="empty_basket">
		<div class="empty_basket_msg">
			ì•„ì§ ê´€ì‹¬ ìƒí’ˆì´ ì—†ë„¤ìš”!
			<br>
			ê·€ì—¬ìš´ í”„ë Œì¦ˆ ìƒí’ˆì„ ì¶”ì²œë“œë¦´ê²Œìš”
			<br><br>
		</div> 
			<a class="pop_list_link" href="../item/list.store">
				<span class="pop_link">ì¸ê¸° ìƒí’ˆ ë³´ê¸°</span>
			</a>
	</div>
	</c:if>
	<script>
	function clickdelete(itemnum, itemname, index){ // í–‰ ì‚­ì œ
		$.ajax({// itemnum, userid, quantity, price
			url : "cartdelete.store",
			type : "POST",
			dataType: 'text',
			data : {
				itemnum : itemnum,
				itemname : itemname,
				index : index,
			},success : function(data){
				alert(data)
				location.href="cart.store";
			}, error : function(e){
				console.log(e.status)
			}
			
		})
		return false;

	}
	</script>
</body>
>>>>>>> branch 'master' of https://github.com/cktmddus11/team_project.git
</html>