<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ���� ������</title>
<style type="text/css">
.manager {
	height: 12vw;
	font-size: 36px;
	font-weight: bolder;
	line-height: 1.67;
	letter-spacing: -0.36px;
	color: rgb(0, 0, 0);
	padding: 56px 0px 34px;
}

li {
	font-weight: bold;
}

.admin_no {
	font-size: 20px;
	letter-spacing: -0.19px;
	text-align: center;
	color: #000;
}

.admin_profile {
	width: 140px;
	font-size: 20px;
	letter-spacing: -0.19px;
	text-align: center;
	color: #000;
}

.admin_id {
	width: 140px;
	font-size: 20px;
	letter-spacing: -0.19px;
	text-align: center;
	color: #000;
}

.admin_email {
	width: 140px;
	font-size: 20px;
	letter-spacing: -0.19px;
	text-align: center;
	color: #000;
}

.admin_add {
	width: 140px;
	font-size: 20px;
	letter-spacing: -0.19px;
	text-align: center;
	color: #000;
}

.admin_date {
	width: 140px;
	font-size: 20px;
	letter-spacing: -0.19px;
	text-align: center;
	color: #000;
}

.yes_or_no_btn {
	display: inline;
	font-size: 15px;
	width: 40px;
	height: 25px;
	border-radius: 2px;
	background-color: #000069;
/* 	color: #fff; */
}

.admin_img {
	width: 100px;
	min-width: 100px;
	height: 100px;
	position: relative;
	margin-right: 13px;
	overflow: hidden;
	margin-left: 35px;
}

.order_list3_img>span {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	width: 100%;
	height: 100%;
}

.admin_gender {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	font-size: 16px;
	line-height: 1.88;
	letter-spacing: -0.23px;
	color: rgb(17, 17, 17);
	text-align: center;
	margin-left: 32vw;
}
@media ( min-width : 769px) {
	.admin_gender {
		order: 3;
		font-size: 15px;
		margin-left: 0;
		padding-right: 16px;
	}
} 

.admin_date1 {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	font-size: 16px;
	line-height: 1.88;
	letter-spacing: -0.23px;
	color: rgb(17, 17, 17);
	text-align: center;
}
@media ( min-width : 769px) {
	.admin_date1 {
		order: 3;
		font-size: 15px;
		margin-left: 0;
		padding-right: 20px;
	}
} 


.confirm1 {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    font-size: 16px;
    line-height: 1.88;
    letter-spacing: -0.23px;
    color: rgb(17, 17, 17);
    text-align: center;
    margin-left: 38vw;
}
@media ( min-width : 769px) {
	.confirm1{
		order: 3;
		font-size: 15px;
		margin-right: 28px;
   		margin-left: 35px;
	}
}
.confirm2 {
	font-size: 14px;
	line-height: 1.07;
	letter-spacing: -0.19px;
	margin-bottom: 5px;
	color: rgb(102, 102, 102);
}
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
#my_l_b1 {
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 200;
   color: white;
   font-size: 16px;
}
</style>
</head>
<body>
	<div class="manager" id="my_b_b">
	<span id="my_b_b" style="color: navy; display: inline-block;">������&nbsp;</span>ȸ������ ���� ������</div>
	<div class="admin_list_no">
		<ul class="admin_list_no_ul">
			<li class="admin_no" id="my_ll_b">No.</li>
			<li class="admin_profile" id="my_ll_b">������</li>
			<li class="admin_id" id="my_ll_b">�̸�(ID)</li>
			<li class="admin_email" id="my_ll_b">�̸���</li>
			<li class="admin_no" id="my_ll_b">����</li>
			<li class="admin_date" id="my_ll_b">���Խ�û��</li>
			<li class="admin_date" id="my_ll_b">���ο���</li>
		</ul>
		<div class="order_list1">
			<div class="admin_no" id="my_l_b"
			style="padding-left: 10px; padding-top: 30px;">
				<span style="font-size: 15px;">1</span>
			</div>
			<hr class="moblie_line">
			<!-- ������ ������ -->
			<div class="admin_img" id="my_l_b">
				<span><img style="width: 100%; height: auto;"
					src="../images/product/category_rion_off.png" alt="������"> </span>
			</div>
			<!-- ������ id -->
			<div class="order_list_content" id="my_l_b"
					style="padding-top: 20px;">
				<div class="admin_id">
					<span style="font-size: 15px;">���Ͽ�<br>(hyp3221)
					</span>
				</div>
			</div>
			<!-- ������ email -->
			<div class="order_list_content" id="my_l_b">
				<div class="admin_email" 
					style="padding-top: 20px;">
					<span style="font-size: 15px;">hyp3221@naver.com</span>
				</div>
			</div>
			<!-- ������ ���� -->
			<div class="admin_gender" id="my_l_b">
				<span class="admin_gender"
					style="display: inline-block; font-size: 15px;">����</span>
			</div>
			<!-- ������ ���� ��û�� -->
			<div class="admin_date1" id="my_l_b">2020-01-21</div>
			<!-- ������ ���� ���� -->
			<div class="confirm1" style="text-align: center;">
				<div class="confirm2">
					<input type="button" class="yes_or_no_btn" id="my_l_b1" value="����"> 
					<input type="button" class="yes_or_no_btn" id="my_l_b1" value="�ź�">
				</div>
			</div>
		</div>
	</div>
</body>
</html>